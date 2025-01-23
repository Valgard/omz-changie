# changie plugin

An plugin for [Oh My Zsh][0] offering several aliases for common [changie][1] commands.

## Installation

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/Valgard/omz-changie ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/changie
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

    ```sh
    plugins=(... changie)
    ```

3. Re-source your `~/.zshrc`

    ```sh
    source ~/.zshrc
    ```

## Shellenv

If `changie` is not found in the PATH, this plugin will attempt to find it in common locations

In case you installed `changie` in a non-common location, you can still set `CHANGIE_LOCATION` variable pointing to
the `changie` binary before sourcing `oh-my-zsh.sh` and it'll set up the environment.

## Aliases

| Alias  | Command                            | Description                                                                                                                                                            |
|--------|------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ci`   | `changie init'                     | Initialize a new changie skeleton                                                                                                                                      |
| `ci!`  | `changie init -f'                  | Initialize a new changie skeleton and force initialize even if config already exist                                                                                    |
| `cn`   | `changie new'                      | Create a new change file                                                                                                                                               |
| `cna`  | `changie new -k Added'             | Create a new change file and set the change kind to `Added` without a prompt                                                                                           |
| `cnam` | `changie new -k Added -b'          | Create a new change file and set the change kind to `Added` without a prompt with the given body                                                                       |
| `cnc`  | `changie new -k Changed'           | Create a new change file and set the change kind to `Changed` without a prompt                                                                                         |
| `cncm` | `changie new -k Changed -b'        | Create a new change file and set the change kind to `Changed` without a prompt with the given body                                                                     |
| `cnd`  | `changie new -k Deprecated'        | Create a new change file and set the change kind to `Deprecated` without a prompt                                                                                      |
| `cndm` | `changie new -k Deprecated -b'     | Create a new change file and set the change kind to `Deprecated` without a prompt with the given body                                                                  |
| `cnf`  | `changie new -k Fixed'             | Create a new change file and set the change kind to `Fixed` without a prompt                                                                                           |
| `cnfm` | `changie new -k Fixed -b'          | Create a new change file and set the change kind to `Fixed` without a prompt with the given body                                                                       |
| `cnr`  | `changie new -k Removed'           | Create a new change file and set the change kind to `Removed` without a prompt                                                                                         |
| `cnrm` | `changie new -k Removed -b'        | Create a new change file and set the change kind to `Removed` without a prompt with the given body                                                                     |
| `cns`  | `changie new -k Security'          | Create a new change file and set the change kind to `Security` without a prompt                                                                                        |
| `cnsm` | `changie new -k Security -b'       | Create a new change file and set the change kind to `Security` without a prompt with the given body                                                                    |
| `cm`   | `changie merge'                    | Merge all versions into one changelog                                                                                                                                  |
| `cmu`  | `changie merge -u '## Unreleased'' | Merge all versions into one changelog and include unreleased changes with `## Unreleased` header                                                                       |
| `cmum` | `changie merge -u'                 | Merge all versions into one changelog and include unreleased changes with given header                                                                                 |
| `cb`   | `changie batch'                    | Batch unreleased changes into a single changelog                                                                                                                       |
| `cba`  | `changie batch auto'               | Batch unreleased changes into a single changelog and automatically bump version based on what changes were found                                                       |
| `cbm`  | `changie batch major'              | Batch unreleased changes into a single changelog and bump major version one level by one                                                                               |
| `cbi`  | `changie batch minor'              | Batch unreleased changes into a single changelog and bump minor version one level by one                                                                               |
| `cbp`  | `changie batch patch'              | Batch unreleased changes into a single changelog and bump patch version one level by one                                                                               |
| `cb!`  | `changie batch -f'                 | Batch unreleased changes into a single changelog and force a new version file even if one already exists                                                               |
| `cba!` | `changie batch -f auto'            | Batch unreleased changes into a single changelog, force a new version file even if one already exists and automatically bump version based on what changes were found  |
| `cbm!` | `changie batch -f major'           | Batch unreleased changes into a single changelog, force a new version file even if one already exists and bump major version one level by one                          |
| `cbi!` | `changie batch -f minor'           | Batch unreleased changes into a single changelog, force a new version file even if one already exists and bump minor version one level by one                          |
| `cbp!` | `changie batch -f patch'           | Batch unreleased changes into a single changelog, force a new version file even if one already exists and bump patch version one level by one                          |
| `cx`   | `changie next'                     | Echos next increments version based on semantic versioning                                                                                                             |
| `cxa`  | `changie next auto'                | Echos next increments version based on semantic versioning, automatically increments version based on what changes were found                                          |
| `cxm`  | `changie next major'               | Echos next increments version based on semantic versioning, increments major version one level by one                                                                  |
| `cxi`  | `changie next minor'               | Echos next increments version based on semantic versioning, increments minor version one level by one                                                                  |
| `cxp`  | `changie next patch'               | Echos next increments version based on semantic versioning, increments patch version one level by one                                                                  |
| `cxp`  | `changie next -p'                  | Echos next increments version based on semantic versioning, append given prerelease value to verion                                                                    |
| `cxap` | `changie next auto -p'             | Echos next increments version based on semantic versioning, append given prerelease value to verion, automatically increments version based on what changes were found |
| `cxmp` | `changie next major -p'            | Echos next increments version based on semantic versioning, append given prerelease value to verion, increments major version one level by one                         |
| `cxip` | `changie next minor -p'            | Echos next increments version based on semantic versioning, append given prerelease value to verion, increments minor version one level by one                         |
| `cxpp` | `changie next patch -p'            | Echos next increments version based on semantic versioning, append given prerelease value to verion, increments patch version one level by one                         |
| `cl`   | `changie latest'                   | Echos latest release version number                                                                                                                                    |
| `clr`  | `changie latest' -r                | Echos latest release version number and remove 'v' prefix before echoing                                                                                               |

[0]: https://ohmyz.sh
[1]: https://changie.dev
