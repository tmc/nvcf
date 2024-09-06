Hello World

# Interactive Jobs with NGC Shell [¶](\#interactive-jobs-with-ngc-shell "Permalink to this headline")

The NGC shell enhances your experience with the NGC CLI by making it more efficient to launch interactive jobs such as `bash` and `csh` with the CLI.
The shell provides a single command that automates waiting for a job to enter the running state, retrieves the job ID, and starts an interactive session on the job.

## Overview of the NGC Shell [¶](\#overview-of-the-ngc-shell "Permalink to this headline")

You start an interactive job using NGC shell by adding the `--shell` argument to the `ngc batch run` command, like the following example:

```
ngc batch run --shell [--ace <ACE>] [-in <type>] [-i  <url>] [-c <command>]
```

You can start interactive jobs with NGC job options, including the following:

- `--workspace`

- `--dataset`

- `--port`

- `--result`

- `--name`

- `--file`

- `--commandline`


You can set the maximum duration of the interactive job by specifying the `--total-runtime` argument.
When the `--total-runtime` value is exceeded, the shell session is forced to exit cleanly and the job is killed.

You can also choose to kill a job automatically if it does not start within a time limit by specifying the `--start-deadline` argument.
If the `--start-deadline` value is exceeded and the job has not started running, the job is killed.

## Shell Job Termination [¶](\#shell-job-termination "Permalink to this headline")

You do not need to explicitly kill an interactive jobs.
Interactive jobs are killed automatically if any of the following conditions are met:

- You enter Ctrl+C while you wait for the job to start.

- You exit from the interactive shell tty and the process exits cleanly.

  - If the process does not exit cleanly, the interactive session is relaunched.
- The job duration exceeds the duration specified in the `--total-runtime` argument.

- The duration specified in the `--start-deadline` argument is exceeded before the job has started running.
