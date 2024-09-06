Hello World

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

##### create [¶](\#create_repeat1 "Permalink to this headline")

Create a new function description

```
ngc cloud-function function create [--api-body-format <api-body-format>]
                                   [--container-args <container-args>]
                                   [--container-environment-variable <key:value>]
                                   [--container-image <org>/[<team>/]<image>:<tag>]
                                   [--debug] [--format_type <fmt>]
                                   [--health-uri <health-uri>]
                                   [--helm-chart <org>/[<team>/]<helm-chart>:<tag>]
                                   [--helm-chart-service <helm-chart-service-name>]
                                   [--inference-port <inference-port>]
                                   --inference-url <inference-url>
                                   [--model <org>/[<team>/]<image>:version]
                                   --name <name>
                                   [--resource <org>/[<team>/]<resource>:version]
                                   [--tag <tag>] [-h]
                                   [[<function-id>]]
```

###### Named Arguments [¶](\#named-arguments_repeat11 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--helm-chart`

Helm Chart in NGC used for deployment.

`--helm-chart-service`

Must be provided if a helm chart function.

`--health-uri`

Health endpoint for inferencing

`--inference-port`

Optional port number where the inference listener is running - defaults to 8000 for HTTPS, 8001 for GRPC

`--container-args`

Args to be passed in for inferencing

`--container-environment-variable`

Environment settings for inferencing

`--model`

List of models - could be empty with custom container, can accept multiple

`--resource`

Optional List of resources, can accept multiple

`--tag`

Tag to identify the function by, can accept multiple

`--container-image`

Custom container Image

`--api-body-format`
