Hello World

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

## **Examples** [¶](\#examples "Permalink to this headline")

### Installation Environment [¶](\#installation-environment "Permalink to this headline")

```
$ ngc diag install

Checking general information...
Timestamp: 2019-03-22 14:14:46 UTC
User name: NGC User

Checking CLI installation...
CLI version: NGC CLI 2.0.0
Using a binary version of CLI: YES
```

### Client Environment [¶](\#client-environment "Permalink to this headline")

```
$ ngc diag client

Checking general information...
Timestamp: 2019-03-22 14:21:55 UTC
User name: NGC User

Checking Operating System...
Type: Linux
Version: 4.20.14-200.fc29.x86_64

Checking disk usage for /home/ngc_user...
Total: 850.32 GB
Free: 799.79 GB
Used: 0.9%

Checking current directory (/home/ngc_user/) size...
Size: 712.46 MB

Checking memory usage...
Total: 31.09 GB
Free: 19.7 GB
Used: 14.2%

Checking file permissions...
set umask: 077

Checking set NGC CLI environment variables...
None
```

### Server Information [¶](\#server-information "Permalink to this headline")

```
$ ngc diag server

Checking general information...
Timestamp: 2019-03-22 14:23:28 UTC
User name: NGC User

Checking API gateway connectivity...
API Connectivity: SUCCESS

Checking authentication...
Authentication: SUCCESS

Checking API connectivity (container registry)...
Container Registry Connectivity: SUCCESS

Checking API connectivity (container registry meta)...
Container Registry Meta Connectivity: SUCCESS

Checking API connectivity (model registry)...
Model Registry Connectivity: SUCCESS

Checking data storage connectivity...
Data storage connectivity: An ace (--ace) argument must be specified with this command to check data storage connectivity.

Checking external IP...
Global IP Address: 255.255.255.255
```

Specify an ACE with the --ace option to also see information about data storage:

```
$ ngc diag server --ace my-ace

Checking general information...
Timestamp: 2019-03-22 14:35:08 UTC
User name: NGC User

Checking API gateway connectivity...
API Connectivity: SUCCESS

Checking authentication...
Authentication: SUCCESS

Checking API connectivity (container registry)...
Container Registry Connectivity: SUCCESS

Checking API connectivity (container registry meta)...
Container Registry Meta Connectivity: SUCCESS

Checking API connectivity (model registry)...
Model Registry Connectivity: SUCCESS

Checking data storage connectivity...
Data storage connectivity: SUCCESS

Checking external IP...
Global IP Address: 255.255.255.255
```
