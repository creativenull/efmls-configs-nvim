const basepath = "./lua/efmls-configs";
const outputfile = "./SUPPORTED_LIST.md";

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
const languages = new Map();

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
async function getLinters(): Promise<string[]> {
  const linters: string[] = [];

  for await (const dirEntry of Deno.readDir(`${basepath}/linters`)) {
    const name = dirEntry.name.split(".")[0];
    linters.push(name);

    const fileContents = await Deno.readTextFile(`${basepath}/linters/${dirEntry.name}`);
    const parsed = parseFrontmatter(fileContents);

    for (const lang of parsed.languages ?? []) {
      languages.set(
        lang,
        languages.has(lang)
          ? { linters: [...languages.get(lang).linters, name].sort() }
          : { linters: [name] },
      );
    }
  }

  return linters;
}

/**
 * Stringify linters content.
 *
 * @async
 * @returns {Promise<string>}
 */
async function renderLinters(): Promise<string> {
  let linterString = "";

  for (const linter of await getLinters()) {
    linterString += `### \`${linter}\`

\`\`\`lua
local ${linter} = require("efmls-configs.linters.${linter}")
\`\`\`

`;
  }

  return linterString;
}

/**
 * Get a list of formatters and parse metadata content.
 *
 * @async
 * @returns {Promise<string[]>}
 */
async function getFormatters(): Promise<string[]> {
  const formatters: string[] = [];

  for await (const dirEntry of Deno.readDir(`${basepath}/formatters`)) {
    const name = dirEntry.name.split(".")[0];
    formatters.push(name);

    const fileContents = await Deno.readTextFile(`${basepath}/formatters/${dirEntry.name}`);
    const parsed = parseFrontmatter(fileContents);

    for (const lang of parsed.languages ?? []) {
      languages.set(
        lang,
        languages.has(lang)
          ? {
            linters: languages.get(lang).linters,
            formatters: [...languages.get(lang).formatters, name].sort(),
          }
          : { linters: languages.get(lang).linters, formatters: [name] },
      );
    }
  }

  console.log(languages);

  return formatters;
}

/**
 * Stringify formatters content.
 *
 * @async
 * @returns {Promise<string>}
 */
async function renderFormatters(): Promise<string> {
  let formatterString = "";

  for (const formatter of await getFormatters()) {
    formatterString += `### \`${formatter}\`

\`\`\`lua
local ${formatter} = require("efmls-configs.formatters.${formatter}")
\`\`\`

`;
  }

  return formatterString;
}

async function main() {
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

  contents += `## Linters\n\n`;
  contents += await renderLinters();

  contents += `## Formatters\n\n`;
  contents += await renderFormatters();

  console.log("Writing to file");
  await Deno.writeTextFile(outputfile, contents);
  console.log("Success!");
}

if (import.meta.main) {
  main();
}
