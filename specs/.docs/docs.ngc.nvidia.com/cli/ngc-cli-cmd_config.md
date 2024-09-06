Hello World

### current [¶](\#current "Permalink to this headline")

List the current configuration.

```
ngc config current [--debug] [--format_type <fmt>] [--show-auth-token] [--yes]
                   [-h]
```

#### Named Arguments [¶](\#named-arguments_repeat4 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--show-auth-token`

Show the Docker login password (Starfleet ID Token) if this flag is set.

`--yes`

Automatically confirm the retrieval of the auth token without prompting.

## **Examples** [¶](\#examples "Permalink to this headline")

### How to set config? [¶](\#how-to-set-config "Permalink to this headline")

```
$ ngc config set --format_type json

Successfully saved NGC configuration C:\Users\<username>\.ngc\config

$ ngc config set

Enter API key[**************************************************************************************Q1Nw]:
Enter CLI output format type [ascii]. Choices: ['ascii', 'csv', 'json']
Enter default org [b0xlotzw8zo9]. Choices: [b0xlotzw8zo9, nvidia]:
Successfully saved NGC configuration C:\Users\foo\.ngc\config
```

### How to clear config? [¶](\#how-to-clear-config "Permalink to this headline")

```
$ ngc config clear

Successfully cleared NGC configuration C:\Users\<username>\.ngc\config
```
