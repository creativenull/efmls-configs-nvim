const basepath = "./lua/efmls-configs";
const outputfile = "./doc/SUPPORTED_LIST.md";

type DefaultConfiguration = {
  languages: string[];
  linters?: string[];
  formatters?: string[];
};

type DefaultConfigurationJsonData = {
  defaults: DefaultConfiguration[];
};

type LuaFileMetadata = {
  [key: string]: string | string[];
};

// Tracker
type LanguageTool = {
  linters: string[];
  formatters: string[];
};

const languages = new Map<string, LanguageTool>();

/**
 * Parse a custom frontmatter data for lua files
 *
 * @param {string} content
 * @returns {{ [key: string]: string }}
 */
function parseFrontmatter(content: string): LuaFileMetadata {
  const frontmatter: LuaFileMetadata = {};
  const lines = content.split(/\r?\n/);

  let inFrontmatter = false;

  for (const line of lines) {
    if (!inFrontmatter) {
      if (line.trim() === "-- Metadata") {
        inFrontmatter = true;
      }
    } else {
      if (line.trim() === "") {
        // End parsing
        break;
      }

      const match = line.match(/^\s*--\s*(\S+):\s*(.*)/);
      if (match) {
        const key = match[1];
        const value = match[2];

        if (key === "languages") {
          // Make comma separated values into an array
          frontmatter[key] = value.split(",").map((v) => v.trim());
        } else {
          frontmatter[key] = value;
        }
      }
    }
  }

  return frontmatter;
}

/**
 * Capitalize the first word.
 *
 * @param {string} word
 * @returns {string}
 */
function capitalize(word: string): string {
  return word.charAt(0).toUpperCase() + word.slice(1);
}

/**
 * Get a list of defaults from defaults.lua.
 *
 * @async
 * @returns {Promise<string[][]>}
 */
async function getDefaults(): Promise<string[][]> {
  const defaultFile = JSON.parse(
    await Deno.readTextFile(`${basepath}/defaults.json`),
  ) as DefaultConfigurationJsonData;

  const defaults: string[][] = [];

  for (const def of defaultFile.defaults) {
    const langs = def.languages.map((lang) => capitalize(lang)).join("/");
    const linters = def.linters?.map((linter) => "`" + linter + "`").join(",") ?? "";
    const formatters = def.formatters?.map((formatter) => "`" + formatter + "`").join(",") ?? "";

    defaults.push([langs, linters, formatters]);
  }

  return defaults;
}

/**
 * Stringify defaults.
 *
 * @async
 * @returns {Promise<string>}
 */
async function renderDefaults(): Promise<string> {
  const defaults = await getDefaults();
  let defString = "";

  for (const def of defaults) {
    defString += `| ${def[0]} | ${def[1]} | ${def[2]} |\n`;
  }

  return defString;
}

/**
 * Get a list of linters and parse metadata content.
 *
 * @async
 * @returns {Promise<string[]>}
 */
async function setLanguageLinters(): Promise<void> {
  for await (const dirEntry of Deno.readDir(`${basepath}/linters`)) {
    const linterName = dirEntry.name.split(".")[0];
    const fileContents = await Deno.readTextFile(`${basepath}/linters/${dirEntry.name}`);
    const parsed = parseFrontmatter(fileContents);

    for (const lang of parsed.languages ?? []) {
      const linters = languages.get(lang)?.linters ?? [];
      languages.set(
        lang,
        { ...languages.get(lang), linters: [...linters, linterName] } as LanguageTool,
      );
    }
  }
}

/**
 * Get a list of formatters and parse metadata content.
 *
 * @async
 * @returns {Promise<string[]>}
 */
async function setLanguageFormatters(): Promise<void> {
  for await (const dirEntry of Deno.readDir(`${basepath}/formatters`)) {
    const formatterName = dirEntry.name.split(".")[0];

    const fileContents = await Deno.readTextFile(`${basepath}/formatters/${dirEntry.name}`);
    const parsed = parseFrontmatter(fileContents);

    for (const lang of parsed.languages ?? []) {
      const formatters = languages.get(lang)?.formatters ?? [];
      languages.set(
        lang,
        { ...languages.get(lang), formatters: [...formatters, formatterName] } as LanguageTool,
      );
    }
  }
}

/**
 * Render language section.
 *
 * @async
 * @returns {string}
 */
async function renderLanguages(): Promise<string> {
  let languageString = "";

  await setLanguageLinters();
  await setLanguageFormatters();

  for (const [lang, tools] of languages) {
    languageString += `### ${capitalize(lang)}\n\n`;

    if (tools.linters) {
      languageString += `#### Linters\n\n`;

      for (const linter of tools.linters) {
        languageString += `\`${linter}\`

\`\`\`lua
local ${linter} = require('efmls-configs.linters.${linter}')
\`\`\`

`;
      }
    }

    if (tools.formatters) {
      languageString += `#### Formatters\n\n`;

      for (const formatter of tools.formatters) {
        languageString += `\`${formatter}\`

\`\`\`lua
local ${formatter} = require('efmls-configs.formatters.${formatter}')
\`\`\`

`;
      }
    }
  }

  return languageString;
}

async function generateSupportedList() {
  let contents = `<!-- DO NOT MODIFY THIS FILE. AUTO-GENERATED USING \`deno run gen\` -->

# Supported Linters & Formatters

Please create an Pull Request if you see any mismatched documentation or typos.

## Default Configurations

Here is a list of languages that are automatically set and configured when \`default_config\` is enabled. For information
on how to set \`default_config\` check the docs:
[\`:help efmls-configs-defaults\`](https://github.com/creativenull/efmls-configs-nvim#default-configuration-help-efmls-configs-defaults).

| **Filetype** | **Default Linter** | **Default Formatter** |
|--------------|--------------------|-----------------------|
`;

  contents += await renderDefaults();

  contents += `\n`;

  contents += `## Languages\n\n`;
  contents +=
    `Below are the supported linters and formatters that are configured to run with efm-langserver. You can access
the table of contents of this document on the left hand corner of the file, in github (Or just a simple <kbd>Ctrl</kbd> + <kbd>F</kbd>
to search). Copy the \`require\` code into your \`setup()\` function (See example code:
[\`:help efmls-configs-setup\`](https://github.com/creativenull/efmls-configs-nvim#setup-help-efmls-configs-setup)).\n\n`;

  contents += await renderLanguages();

  console.log("Generating SUPPORTED_LIST.md");
  await Deno.writeTextFile(outputfile, contents);
  console.log("Done!");
}

async function main() {
  await generateSupportedList();
}

if (import.meta.main) {
  await main();
}
