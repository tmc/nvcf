Hello World

###### Named Arguments [¶](\#named-arguments_repeat4 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--key`

Filter all keys except ones provided by this flag, can be used multiple times.

##### delete [¶](\#delete "Permalink to this headline")

Delete all secrets or a specific secret or key-value pairs from a secret

```
ngc user secret delete [--debug] [--format_type <fmt>] [--key <key>]
                       [--secret <secret-name>] [-h] [-y]
```

###### Named Arguments [¶](\#named-arguments_repeat5 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--secret`

Specify the name of the secret to delete.

`-y, --yes`

Automatically say yes to all interactive questions.

`--key`

Delete a key-value pair from a secret rather than the secret itself. May be used multiple time to delete more than one key-value pair. Required Parameter of Secret.

##### update [¶](\#update "Permalink to this headline")

Update a secret description, key-value pairs.

```
ngc user secret update [--debug] [--desc <description>] [--disable] [--enable]
                       [--format_type <fmt>] [--pair <key:value>] [-h]
                       secret
```
