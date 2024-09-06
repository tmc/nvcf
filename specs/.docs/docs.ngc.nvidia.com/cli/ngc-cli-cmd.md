Hello World

# Getting Started with the NGC CLI [¶](\#getting-started-with-the-ngc-cli "Permalink to this headline")

Go to [https://ngc.nvidia.com/setup/installers/cli](https://ngc.nvidia.com/setup/installers/cli) to download the CLI and to read the installation instructions for your platform.

After you install the CLI, your first step is to configure the CLI for your NGC account.

## Configuring NGC CLI [¶](\#configuring-ngc-cli "Permalink to this headline")

The first time that you use the CLI, you must set your configuration.
To set your configuration, run the following command and follow the prompts.

Tip

You will need your API key. For information about generating an API key, refer to the preceding link.

```
ngc config set
```

## About the Output Format [¶](\#about-the-output-format "Permalink to this headline")

The following output blocks are examples of the `ascii`, `csv`, and `json` CLI output format.
The examples show the response to the `ngc user who` command.

ASCII

```
+---------+--------------+--------------------+----------------------------+
| User Id | Name         | Email              | Created Date               |
+---------+--------------+--------------------+----------------------------+
| 169     | John Smith   | jsmith@example.com | 2017-08-23 04:04:58 UTC +0 |
+---------+--------------+--------------------+----------------------------+
```

CSV

```
169,John Smith,jsmith@example.com,2017-08-23 04:04:58 UTC +0
```

JSON

```
{
    "createdDate": "2017-08-23T04:04:58.000Z",
    "email": "jsmith@example.com",
    "hasSignedEULA": false,
    "id": 169,
    "isActive": true,
    "isDeleted": false,
    "isSAML": true,
    "name": "John Smith"
}
```

## Setting Your Configuration [¶](\#setting-your-configuration "Permalink to this headline")

NGC CLI configuration ensures that you have access to the resources and roles for an organization.
The configuration also determines which container registry space within your organization that you can access.

When you configure the NGC CLI for the first time, you set the default organization to associate with your user name.
If you use only the resources that are associated with your organization, then no other action is necessary.

However, to use resources and container registry spaces associated with other organizations, teams, or aces of which
you are a member, you must change your configuration accordingly.

The following code block shows the named arguments for the `ngc config set` command that set your organization, team, and so on.

```
ngc config set [--org org-name] [--team team-name] [--ace ace-name] [--format_type fmt]
```

Tip

The organization name must be specified for all configurations.

For more information, see the syntax for the [ngc config set](cmd_config.html#set) command.

## Using the CLI [¶](\#using-the-cli "Permalink to this headline")

To run a CLI command, enter `ngc` followed by a command name, such as `config`, and the required and optional arguments for the command.

Refer to the commands reference section of this document to learn about the commands and the arguments for each command.

You can enter `-h` for any command to learn the required and optional arguments for the command.

View the help for the ngc command

```
ngc -h
```

_Example Output_

```
usage: ngc [--ace <name>] [--debug] [--format_type <fmt>] [--org <name>] [--team <name>] [--version] [-h]
           {ace,alert,audit,base-command,batch,config,dataset,diag,fleet-command,org,registry,result,team,user,version,workspace} ...

NVIDIA NGC CLI

optional arguments:
  -h, --help            Show this help message and exit.
  --ace <name>          Specify the ACE name. Use "--ace no-ace" to override other sources and specify no ACE. Default: current configuration
  --debug               Enable debug mode.
  --format_type <fmt>   Specify the output format type. Supported formats are: ascii, csv, json. Only commands that produce tabular data support csv
                        format. Default: ascii
  --org <name>          Specify the organization name. Use "--org no-org" to override other sources and specify no org. Default: current configuration
  --team <name>         Specify the team name. Use "--team no-team" to override other sources and specify no team. Default: current configuration
  --version             Show the CLI version and exit.

ngc:
  {ace,alert,audit,base-command,batch,config,dataset,diag,fleet-command,org,registry,result,team,user,version,workspace}
    ace                 ACE Commands
    alert               Alert Commands
    audit               Audit Commands
    base-command (bc)   Base Command Commands
    batch               Batch Commands
    config              Configuration Commands
    dataset             Data Commands
    diag                Diagnostic Commands
    fleet-command       Fleet Command Commands
    org                 Org Commands
    registry            Registry Commands
    result              Job Result Commands
    team                Team Commands
    user                User Commands
    version             Version Commands
    workspace           Workspace Commands
```

View the help for the ngc config command

```
ngc config -h
```

_Example Output_

```
usage: ngc config [--ace <name>] [--debug] [--format_type <fmt>] [--org <name>] [--team <name>] [-h] {clear,clear-cache,current,set} ...

Configuration Commands

optional arguments:
  -h, --help            Show this help message and exit.
  --ace <name>          Specify the ACE name. Use "--ace no-ace" to override other sources and specify no ACE. Default: current configuration
  --debug               Enable debug mode.
  --format_type <fmt>   Specify the output format type. Supported formats are: ascii, csv, json. Only commands that produce tabular data support csv format. Default: ascii
  --org <name>          Specify the organization name. Use "--org no-org" to override other sources and specify no org (no-org cannot be used if API key is set). Default:
                        current configuration
  --team <name>         Specify the team name. Use "--team no-team" to override other sources and specify no team. Default: current configuration

config:
  {clear,clear-cache,current,set}
    clear               Clear the configuration stored in the user settings file.
    clear-cache         Clear cached values.
    current             List the current configuration.
    set                 Set the configuration in the user settings file. Use optional arguments to choose what will be set.
```
