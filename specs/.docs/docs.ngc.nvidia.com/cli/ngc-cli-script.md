Hello World

# Scripting Tips and Best Practices [¶](\#scripting-tips-and-best-practices "Permalink to this headline")

The NGC CLI provides advanced scripting capabilities.
You can temporarily override configuration settings with the use of global arguments.
You can even save those settings permanently by combining global arguments with the `ngc config set` command.

## Tips about Global Arguments [¶](\#tips-about-global-arguments "Permalink to this headline")

When you specify global arguments for a command, you temporarily override your configuration settings for the duration of the command.
If you provide all the required settings through global arguments, then the CLI no longer requires configuration files at all.

The following list identifies important considerations for global arguments:

- Global arguments are not positional and can be specified in any order.
The following two commands perform the same action and produce identical results:


```
ngc user who --format_type json

ngc user --format_type json who
```

- Global arguments always validate the specified values, even if they the argument does not affect the command.
For example, because the specified ACE does not exist, the following command produces an error and does not execute the `clear` command:


```
ngc config clear --ace not_existing_ace
```


As an example, the output of the `ngc user who` command shows several values from configuration files:

```
+---------+---------------+---------------------+---------------------+----------------------+-------------------------+
| User Id | Name          | Email               | Org [Roles]         | Teams [Roles]        | Created Date            |
+---------+---------------+---------------------+---------------------+----------------------+-------------------------+
| 123     | Script Master | scripter@nvidia.com | nvidia              | team_1               | 2018-05-08 22:57:31 UTC |
|         |               |                     | [BASE_COMMAND_USER] | [BASE_COMMAND_ADMIN] |                         |
|         |               |                     |                     | team_2               |                         |
|         |               |                     |                     | [BASE_COMMAND_USER]  |                         |
+---------+---------------+---------------------+---------------------+----------------------+-------------------------+
```

By default, the organization and team from the configuration files is used.
You can specify global arguments to override those values.

Refer to the following list of global arguments:

- `--ace` Updates the ACE name used in commands whose help message says that they use the set ACE.

- `--debug` Enables debug mode for the current command.

- `--format_type` Updates the output format. Specify json, ascii, or csv.

- `--org` Updates the org name used in commands whose help message says that they use the set org.

- `--team` Updates the team name used in commands whose help message says that they use the set team.


If you specify an invalid value for a global argument, the CLI exits with a return code of `2` and displays an error message.

## Environment Variables [¶](\#environment-variables "Permalink to this headline")

Environment variables provide another way to specify configuration options and credentials.
You can use them with scripting to temporarily set them in the shell where you need to run the CLI.

Following environment variables are supported by NGC CLI:

`NGC_CLI_ACE`

Specifies the ACE for running batch jobs.

`NGC_CLI_API_KEY`

Specifies the NGC access key (API Key). This is essentially the password to access NGC.

`NGC_CLI_FORMAT_TYPE`

Specifies the output format: JSON, CSV, or ASCII.

`NGC_CLI_HOME`

Specifies the home directory for NGC. The default value is `~/.ngc`.

`NGC_CLI_ORG`

Specifies the organization name.

`NGC_CLI_TEAM`

Specifies the team name.

Note

Configuration files are stored in an automatically created `.ngc` subdirectory of the path specified in `NGC_CLI_HOME`.
If `NGC_CLI_HOME` is not specified, configuration files are stored at `~/.ngc` on Linux and MacOS.
On Windows, the location of the `.ngc` directory depends on other environment variables.
The directory is created in the location that is specified by the first variable that is set: `%HOME%`, `%USERPROFILE%`, or `%HOMEDRIVE%%HOMEPATH%`.

## Precedence Considerations [¶](\#precedence-considerations "Permalink to this headline")

- If you specify a value using an environment variable, the value overrides the value loaded from your configuration file.

- If you specify a value using a global argument on the CLI command line, the value overrides any value either from an environment variable or your configuration file.


## Blocking the CLI to Wait for a Job Status When Starting a New Job [¶](\#blocking-the-cli-to-wait-for-a-job-status-when-starting-a-new-job "Permalink to this headline")

Refer to the following arguments to control how the CLI waits before returning control to your shell when you start a job.
By default, the CLI does not wait and immediately returns your shell prompt.

`--waitrun`

The CLI blocks until the job reaches a running state or you exit the job by entering Ctrl+C.

`--waitend`

The CLI blocks until the job reaches a terminal state or you exit the job by entering Ctrl+C.

If the job reaches a state where it cannot reach the desired state, the CLI will exit with exit code 1 and return an error message.

## Example Script [¶](\#example-script "Permalink to this headline")

For the following example, imagine that our company has a huge dataset that we keep expanding over time and that everyone is tired of running the NGC job manually each day.
We could set up a cronjob to run the training job on the dataset every day at 7:00 A.M.
Keep in mind, you can run this cronjob on a very low-powered machine without any NGC configuration files.

1. Create a Bash script like the following code that can run the job:


```
#!/bin/bash
DATE=`date +%m-%d-%yT%H-%M`
# Define my NGC user constants
NGC_CLI_API_KEY="*******************************************"
NGC_CLI_ORG="my_org"
NGC_CLI_ACE="our_fastest_ace"

OUTPUT="--format_type json"
OPTS="${OUTPUT}"

# Define my NGC job constants
NAME="--name our_job-${DATE}"
DATASET="--datasetid 1234:/mnt/huge_dataset"
IMAGE="--image nvidia/tensorflow-test"
INSTANCE="--instance biggest_one"
PREEMPT="--preempt RUNONCE"
RESULT="--result /result"
COMMAND="--commandline bash /mnt/dataset/run_my_job.sh"
JOB_OPTS="${NAME} ${DATASET} ${IMAGE} ${INSTANCE} ${PREEMPT} ${RESULT} ${COMMAND}"

# Pre-declare our commands
declare -a commands=("ngc user who" "ngc batch run ${JOB_OPTS}")

for command in "${commands[@]}"; do
       ${command} ${OPTS}
done
```

2. Cronjob enables you to run specific jobs at certain times during the day.
To run the previously created script, edit your crontab file by entering `crontab -e`.
Add the following line to run the job at 7:00 A.M. every day:


```
0 7 * * * /path/to/our/script/file
```
