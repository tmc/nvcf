Hello World

###### Named Arguments [¶](\#named-arguments_repeat8 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--source`

The path to the directory containing the packaged chart. If not specified, the chart will be uploaded from the current directory.

`--dry-run`

List file paths, total upload size and file count without performing the upload.

##### publish [¶](\#publish "Permalink to this headline")

Publish a chart from the NGC chart registry to catalog. If no version is provided, the latest is assumed.

```
ngc registry chart publish [--access-type <access_type>] [--allow-guest]
                           [--debug] [--discoverable] [--format_type <fmt>]
                           [--metadata-only] [--product-name <product_name>]
                           [--public] [--source org/[team/]chart[:version]]
                           [--status <workflow_id>] [--version-only]
                           [--visibility-only] [-h]
                           [org/[team/]chart[:version]]
```

###### Positional Arguments [¶](\#positional-arguments_repeat7 "Permalink to this headline")

`org/[team/]chart[:version]`

The the target chart and version you want to publish to. Optional when getting publishing status using the --status flag. Format: org/\[team/\]chart\[:version\]

###### Named Arguments [¶](\#named-arguments_repeat9 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--source`

The source chart and version you want to publish. Format: org/\[team/\]chart\[:version\]

`--metadata-only`

Only perform a shallow copy of the metadata instead of a deep copy of the objects referenced

`--version-only`

Only copy the specified version of the object without copying any metadata

`--visibility-only`

Only change the visibility qualities of the target. Metadata and version files are not affected.

`--allow-guest`

Allow anonymous users to download the published object

`--discoverable`

Allow the published object to be discoverable in searches

`--public`

Allow access to the published object by everyone instead of just those with specific roles

`--product-name`

Publish the object under a Product. Choose from: nvaie-vpaif, nv-cloud-functions, secrets-manager, base-command-platform, nv-ai-enterprise, nvaie-igx-safety-add-on, chipnemo-inference, ai-foundations, artifact-catalog, riva-virtual-assistant, nemo-llm-service, monai, tao, omniverse-cloud, picasso, data-services, bluefield-enterprise-sw, nv-quantum-cloud, nvaie-igx-yocto-add-on, fleet-command, forge, riva-enterprise, cuopt, met, bionemo-service, iam, nvaie-igx, e2, private-registry

`--status`

Get the status of publishing based on provide workflow id.

`--access-type`

Possible choices: EXCLUSIVE, LISTED, NOT\_LISTED

Publish the object with a specific access type. Choose from: LISTED, EXCLUSIVE, NOT\_LISTED

### collection [¶](\#collection "Permalink to this headline")

Collection Commands

```
ngc registry collection [--debug] [--format_type <fmt>] [-h]
                        {find,info,list,publish} ...
```

###### Named Arguments [¶](\#named-arguments_repeat17 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--source`

The source collection you want to publish. Format: org/\[team/\]collection\_name

`--allow-guest`

Allow anonymous users to download the published object

`--discoverable`

Allow the published object to be discoverable in searches

`--public`

Allow access to the published object by everyone instead of just those with specific roles

`--metadata-only`

Only perform a shallow copy of the metadata instead of a deep copy of the objects referenced

`--visibility-only`

Only change the visibility qualities of the target. Metadata and version files are not affected.

### csp [¶](\#csp "Permalink to this headline")

Cloud Service Provider (CSP) Commands

```
ngc registry csp [--debug] [--format_type <fmt>] [-h]
                 {create,create-settings,info,info-settings,list,remove,remove-settings,update,update-settings}
                 ...
```

###### Named Arguments [¶](\#named-arguments_repeat69 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--source`

Provide source directory of the model or path of single file to be uploaded. Default: .

`--gpu-model`

The GPU used to train the model version.

`--memory-footprint`

The memory footprint of the model version.

`--num-epochs`

The number of epochs for the model version.

`--batch-size`

The batch size of the model version.

`--accuracy-reached`

Accuracy reached with model version.

`--desc`

Description for the model version.

`--dry-run`

List file paths, total upload size and file count without performing the upload.

`--link-type`

Type of link to a resource or other toolsets for the model. Choices: NGC, Github, Other.

`--link`

Link to resource or other toolsets for the model

`--credentials-file`

A JSON file containing a single object with 'name' and 'attributes' fields. Attributes are a list of key-value pair each takes the form of {'key': KEY, 'value': VALUE}. A maximum of twelve attributes may be used per file, and up to three files may be specified.

`--metrics-file`

A JSON file containing a single object with 'name' and 'attributes' fields. Attributes are a list of key-value pair each takes the form of {'key': KEY, 'value': VALUE}. A maximum of twelve attributes may be used per file, and up to three files may be specified. DEPRECATED; will be removed after May 2021. Please use --credentials-file instead.

##### publish [¶](\#publish_repeat3 "Permalink to this headline")

Publish a model from the NGC model registry to catalog. If no version is provided, 'latest' is assumed.

```
ngc registry model publish [--access-type <access_type>] [--allow-guest]
                           [--debug] [--discoverable] [--format_type <fmt>]
                           [--metadata-only] [--product-name <product_name>]
                           [--public]
                           [--source org/[team/]model_name[:version]]
                           [--status <workflow_id>] [--version-only]
                           [--visibility-only] [-h]
                           [org/[team/]model_name[:version]]
```

###### Positional Arguments [¶](\#positional-arguments_repeat57 "Permalink to this headline")

`org/[team/]model_name[:version]`

The the target model and version you want to publish to. Optional when getting publishing status using the --status flag. Format: org/\[team/\]model\_name\[:version\]

###### Named Arguments [¶](\#named-arguments_repeat70 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--source`

The source model and version you want to publish. Format: org/\[team/\]model\_name\[:version\]

`--metadata-only`

Only perform a shallow copy of the metadata instead of a deep copy of the objects referenced

`--version-only`

Only copy the specified version of the object without copying any metadata

`--visibility-only`

Only change the visibility qualities of the target. Metadata and version files are not affected.

`--allow-guest`

Allow anonymous users to download the published object

`--discoverable`

Allow the published object to be discoverable in searches

`--public`

Allow access to the published object by everyone instead of just those with specific roles

`--product-name`

Publish the object under a Product. Choose from: nvaie-vpaif, nv-cloud-functions, secrets-manager, base-command-platform, nv-ai-enterprise, nvaie-igx-safety-add-on, chipnemo-inference, ai-foundations, artifact-catalog, riva-virtual-assistant, nemo-llm-service, monai, tao, omniverse-cloud, picasso, data-services, bluefield-enterprise-sw, nv-quantum-cloud, nvaie-igx-yocto-add-on, fleet-command, forge, riva-enterprise, cuopt, met, bionemo-service, iam, nvaie-igx, e2, private-registry

`--status`

Get the status of publishing based on provide workflow id.

`--access-type`

Possible choices: EXCLUSIVE, LISTED, NOT\_LISTED

Publish the object with a specific access type. Choose from: LISTED, EXCLUSIVE, NOT\_LISTED

### resource [¶](\#resource "Permalink to this headline")

Resource Commands

```
ngc registry resource [--debug] [--format_type <fmt>] [-h]
                      {deploy,download-version,info,list,publish} ...
```

###### Named Arguments [¶](\#named-arguments_repeat85 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--accuracy-reached`

Accuracy reached with resource version.

`--batch-size`

The batch size of the resource version.

`--gpu-model`

The GPU used to train the resource version.

`--memory-footprint`

The memory footprint of the resource version.

`--num-epochs`

The number of epochs for the resource version.

`--desc`

Full description of resource version.

`--performance-filename`

Performance data. Provide the path to a file that contains the performance data for the resource.

`--quick-start-guide-filename`

Quick start information. Provide the path to a file that contains the "Quick Start Guide" information for the resource.

`--setup-filename`

Setup instructions. Provide the path to a file that contains the setup instructions for the resource.

`--release-notes-filename`

Release notes. Provide the path to a file that contains the release notes for the resource.

`--source`

Provide source directory of the resource or path of single file to be uploaded; if omitted, current directory will be used.

`--dry-run`

List file paths, total upload size and file count without performing the upload.

##### publish [¶](\#publish_repeat4 "Permalink to this headline")

Publish a resource from the NGC resource registry to catalog. If no version is provided, the latest is assumed.

```
ngc registry resource publish [--access-type <access_type>] [--allow-guest]
                              [--debug] [--discoverable] [--format_type <fmt>]
                              [--metadata-only]
                              [--product-name <product_name>] [--public]
                              [--source org/[team/]resource_name[:version]]
                              [--status <workflow_id>] [--version-only]
                              [--visibility-only] [-h]
                              [org/[team/]resource_name[:version]]
```

###### Positional Arguments [¶](\#positional-arguments_repeat71 "Permalink to this headline")

`org/[team/]resource_name[:version]`

The the target resource and version you want to publish to. Optional when getting publishing status using the --status flag. Format: org/\[team/\]resource\_name\[:version\]

###### Named Arguments [¶](\#named-arguments_repeat86 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--source`

The source resource and version you want to publish. Format: org/\[team/\]resource\_name\[:version\]

`--metadata-only`

Only perform a shallow copy of the metadata instead of a deep copy of the objects referenced

`--version-only`

Only copy the specified version of the object without copying any metadata

`--visibility-only`

Only change the visibility qualities of the target. Metadata and version files are not affected.

`--allow-guest`

Allow anonymous users to download the published object

`--discoverable`

Allow the published object to be discoverable in searches

`--public`

Allow access to the published object by everyone instead of just those with specific roles

`--product-name`

Publish the object under a Product. Choose from: nvaie-vpaif, nv-cloud-functions, secrets-manager, base-command-platform, nv-ai-enterprise, nvaie-igx-safety-add-on, chipnemo-inference, ai-foundations, artifact-catalog, riva-virtual-assistant, nemo-llm-service, monai, tao, omniverse-cloud, picasso, data-services, bluefield-enterprise-sw, nv-quantum-cloud, nvaie-igx-yocto-add-on, fleet-command, forge, riva-enterprise, cuopt, met, bionemo-service, iam, nvaie-igx, e2, private-registry

`--status`

Get the status of publishing based on provide workflow id.

`--access-type`

Possible choices: EXCLUSIVE, LISTED, NOT\_LISTED

Publish the object with a specific access type. Choose from: LISTED, EXCLUSIVE, NOT\_LISTED

## **Examples** [¶](\#examples "Permalink to this headline")

### How to list repository images [¶](\#how-to-list-repository-images "Permalink to this headline")

```
$ ngc registry image list

+------------+------------+------------+------------+---------+------------+
| Name       | Repository | Latest Tag | Image Size | Updated | Permission |
|            |            |            |            | Date    |            |
+------------+------------+------------+------------+---------+------------+
| busyboxss1 | nvexpl/bus | signed2    | 746.73 KB  | Mar 08, | unlocked   |
| 111        | ybox       |            |            | 2021    |            |
| digits     | nvexpl/dig | 21.04-tens | 5.91 GB    | Apr 13, | unlocked   |
|            | its        | orflow-py3 |            | 2021    |            |
| One Long   | nvexpl/mk/ | 3.4        | 745.89 KB  | Aug 05, | unlocked   |
| Display    | alpine     |            |            | 2020    |            |
| Name       |            |            |            |         |            |
| pusherTest | nvexpl/mk/ | nginx-21.0 | 51.12 MB   | Jan 07, | unlocked   |
|            | pusher     | 1          |            | 2021    |            |
| This is    | nvexpl/mk/ | 1          | 0 B        | Apr 08, | unlocked   |
| One Long   | alpine_int |            |            | 2019    |            |
| Container  | egration   |            |            |         |            |
...
```

### How to list repository images with column arguments [¶](\#how-to-list-repository-images-with-column-arguments "Permalink to this headline")

```
$ ngc registry image list --column name --column tag

+--------------------------+-------------------------+-------------------------+
| Repository               | Name                    | Latest Tag              |
+--------------------------+-------------------------+-------------------------+
| nvexmpl/busybox          | busyboxss1111           | signed2                 |
| nvexmpl/digits           | digits                  | 21.04-tensorflow-py3    |
| nvexmpl/mk/alpine        | One Long Display Name   | 3.4                     |
| nvexmpl/mk/pusher        | pusherTest              | nginx-21.01             |
| nvexmpl/mk/alpine_integr | This is One Long        | 1                       |
| ation                    | Container Name          |                         |
...
```

### How to remove a registry image [¶](\#how-to-remove-a-registry-image "Permalink to this headline")

```
$ ngc registry image remove example_org/digits:2.0

Successfully removed image 'example_org/digits:2.0'
```

### How to remove a registry image repository [¶](\#how-to-remove-a-registry-image-repository "Permalink to this headline")

```
$ ngc registry image remove example_org/digits

Successfully removed image repository 'example_org/digits'
```

### How to get information about a tagged image [¶](\#how-to-get-information-about-a-tagged-image "Permalink to this headline")

```
$ ngc registry image info example_org/digits:3.0

--------------------------------------------------
  Image Information
    Name: example_org/digits:3.0
    Architecture: amd64
    Schema Version: 1
--------------------------------------------------
```

### How to get information about an image repository [¶](\#how-to-get-information-about-an-image-repository "Permalink to this headline")

```
$ ngc registry image info example_org/digits

--------------------------------------------------
  Image Repository Information
    Name: digits
    Short Description: A short description of the repository
    Labels: computation, machine_learning
    Public: No
    Shared with organizations: example_org
    Shared with teams:
    Last Updated: 2019-05-06T20:10:42.650Z
    Latest Image Size: 14.18 MB
    Latest Tag: 3.0
    Tags:
        3.0
        2.0
        1.0
--------------------------------------------------
```

### How to pull an image from the NGC image registry [¶](\#how-to-pull-an-image-from-the-ngc-image-registry "Permalink to this headline")

NGC automatically logs you in to the image registry when pulling or pushing images.

Docker is required to be installed on the client system.

Pulling an image from a registry requires you to specify the path:

```
$ ngc registry image list
+---------------------+------------------+------------+------------+--------------+------------+
| Name                | Repository       | Latest Tag | Image Size | Updated      | Permission |
|                     |                  |            |            | Date         |            |
+---------------------+------------------+------------+------------+--------------+------------+
| ...                 | ...              | ...        | ...        | ...          | ...        |
|                     |                  |            |            |              |            |
| tensorrt            | example_org/tensorrt | 19.05      | 1.91 GB    | May 09, 2019 | unlocked   |
|                     |                  |            |            |              |            |
| ...                 | ...              | ...        | ...        | ...          | ...        |
+---------------------+------------------+------------+------------+--------------+------------+
```

```
$ ngc registry image pull example_org/tensorrt:19.05
Logging in to https://nvcr.io... login successful.
19.05-py3: Pulling from example_org/tensorrt
7e6591854262: Downloading [======================>                            ]  19.32MB/43.75MB
089d60cb4e0a: Download complete
9c461696bc09: Download complete
45085432511a: Download complete
7e6591854262: Downloading [======================>                            ]  19.32MB/43.75MB
089d60cb4e0a: Download complete
9c461696bc09: Download complete
45085432511a: Download complete
7e6591854262: Downloading [========================>                          ]  21.53MB/43.75MB
089d60cb4e0a: Download complete
...
Digest: sha256:0422d59d3aece1ea72e2a5699d234c9c266636a6c0cdd3f1adc2b7773302c88e
Status: Downloaded newer image for nvcr.io/example_org/tensorrt:19.05-py3
```

NOTE that if you do not provide a tag when pulling or pushing an image, 'latest' will be assumed:

```
$ ngc registry image pull example_org/tensorrt
Logging in to https://nvcr.io... login successful.
Error: manifest for nvcr.io/example_org/tensorrt:latest not found.
```

### How to update an image from the NGC image registry [¶](\#how-to-update-an-image-from-the-ngc-image-registry "Permalink to this headline")

Updating an image from a registry requires you to specify the path:

```
$ ngc registry image list
+-----------------+----------------------+------------+------------+--------------+------------+
| Name            | Repository           | Latest Tag | Image Size | Updated      | Permission |
|                 |                      |            |            | Date         |            |
+-----------------+----------------------+------------+------------+--------------+------------+
| ...             | ...                  | ...        | ...        | ...          | ...        |
|                 |                      |            |            |              |            |
| tensorrt        | example_org/tensorrt | 19.05      | 1.91 GB    | May 09, 2019 | unlocked   |
|                 |                      |            |            |              |            |
| ...             | ...                  | ...        | ...        | ...          | ...        |
+-----------------+----------------------+------------+------------+--------------+------------+
```

```
$ ngc registry image update example_org/tensorrt --desc new_description --label new_label --logo new_logo --overview new_file --publisher new_pub --built-by new_built
Updating repository metadata
Repository metadata updated.
```

### How to push an image to the NGC image registry [¶](\#how-to-push-an-image-to-the-ngc-image-registry "Permalink to this headline")

Pushing an image is similar to pulling, except that your image name (tag) must include the
registry URL as well as the path to your image in the registry. These paths often include your organization
name and (if applicable) team name. The registry URL is optional when telling the NGC CLI about the image,
and if the registry URL is not present in your tag, the NGC CLI can help you rename it before pushing.

Docker is required to be installed on the client system.

```
$ docker images
REPOSITORY                                      TAG                 IMAGE ID            CREATED             SIZE
example_org/my-image                                 latest              d07226900e72        13 days ago         38.6MB

$ ngc registry image push example_org/my-image:latest
Logging in to https://nvcr.io... login successful.
The push refers to repository [nvcr.io/example_org/my-image]
Error: tag does not exist: nvcr.io/example_org/my-image:latest
Image must be tagged in format: <registry>/<org>/[<team>/]<image-name>[:<tag>]
Would you like to tag 'example_org/my-image:latest' as 'nvcr.io/example_org/my-image:latest' and push? [y/N]y
The push refers to repository [nvcr.io/example_org/my-image]
01f1c15e33e7: Mounted from example_org/checkpoint_counter_example
da3ae26fc4ba: Layer already exists
a464c54f93a9: Layer already exists
latest: digest: sha256:7eb9230b4666a11c1d241c15cae5110a31c56e5befa1f7956e9a2639a4baabe0 size: 947
Successfully pushed nvcr.io/example_org/my-image:latest to the registry.

$ docker images
REPOSITORY                                      TAG                 IMAGE ID            CREATED             SIZE
example_org/my-image                                 latest              d07226900e72        13 days ago         38.6MB
nvcr.io/example_org/test-sm-img                      latest              d07226900e72        13 days ago         38.6MB
```

### How to list models [¶](\#how-to-list-models "Permalink to this headline")

```
$ ngc registry model list

+---------+---------+---------+---------+---------+---------+---------+---------+
| Name    | Reposit | Latest  | Applica | Framewo | Precisi | Last Mo | Permiss |
|         | ory     | Version | tion    | rk      | on      | dified  | ion     |
+---------+---------+---------+---------+---------+---------+---------+---------+
| denoise | nvidia/ |         |         |         |         | May 14, | unlocke |
| r       | ngx/den |         |         |         |         | 2019    | d       |
|         | oiser   |         |         |         |         |         |         |
| testmod | nvidia/ |         |         |         |         | May 14, | unlocke |
| el      | cim/tes |         |         |         |         | 2019    | d       |
|         | tmodel  |         |         |         |         |         |         |
| testmod | nvidia/ | 54323   | none    | cudaaaa |         | Feb 25, | unlocke |
| el123   | cim/tes |         |         |         |         | 2020    | d       |
```

### How to list models using column arguments [¶](\#how-to-list-models-using-column-arguments "Permalink to this headline")

```
$ ngc registry model list --column version --column permission

+-------------------------+-----------------------+------------+
| Repository              | Latest Version        | Permission |
+-------------------------+-----------------------+------------+
| nvexpl/ngx/denoiser     |                       | unlocked   |
| nvexpl/cim/testmodel    |                       | unlocked   |
| nvexpl/cim/testmodel1   | 54323                 | unlocked   |
| nvexpl/cim/heart_ultras |                       | unlocked   |
| ound                    |                       |            |
| nvexpl/ngx/dldenoiser   |                       | unlocked   |
| nvexpl/ngx/dlaa         |                       | unlocked   |
| nvexpl/ngx/latest       |                       | unlocked   |
| nvexpl/ngx/all          |                       | unlocked   |
| nvexpl/ngx/config       | 2                     | unlocked   |
| nvexpl/ngx/dlupscale    |                       | unlocked   |
```

### How to get information about a model [¶](\#how-to-get-information-about-a-model "Permalink to this headline")

```
$ ngc registry model info example_model_name

--------------------------------------------------
  Model Information
    Name: example_model_name
    Domain(TODO Application): Recommender
    Framework: Tensorflow
    Model Format: ProtoText
    Precision: FP16
    Description:
        This is a longer description. blah blah blah blah blah
    Short Description: short desc blah blah
    Display Name:
    Logo: link/to/logo
    Org: example_org
    Team:
    Built By: TODO
    Owner Name: TODO
    Publisher: TODO
    Created Date: 2018-11-29T20:14:15.046Z
    Updated Date: 2018-11-29T20:14:15.046Z
    Labels:
        label1
        label2
    Latest Version ID: 3
    Latest Version Size (bytes): 116246
    Public Dataset Used:
        Name: ds name
        Link: link to ds
        License: ds license
--------------------------------------------------
```

### How to create a model [¶](\#how-to-create-a-model "Permalink to this headline")

```
$ ngc registry model create example_org/example_model_name --short-desc 'A short description here ' \
  --application 'Recommender' --framework 'Tensorflow' --format 'ProtoText' \
  --precision 'FP16' --public-dataset-link 'www.example.com' --public-dataset-name 'my dataset' \
  --public-dataset-license 'ds license' --label 'label1' --label 'label2' \
  --overview-filename /path/to/overview.md

Successfully created model 'example_org/example_model_name'.
--------------------------------------------------
  Model Information
    Name: example_model_name
    Application: Recommender
    Framework: Tensorflow
    Model Format: ProtoText
    Precision: FP16
    Short Description: A short description here
    Display Name:
    Org: example_org
    Team:
    Built By:
    Owner Name:
    Publisher:
    Created Date: 2018-11-29T20:14:15.046Z
    Updated Date: 2018-11-29T20:14:15.046Z
    Labels:
        label1
        label2
    Latest Version ID:
    Latest Version Size (bytes):
    Public Dataset Used:
        Name: my dataset
        Link: www.example.com
        License: ds license
    Overview:
        # overview file contents here
--------------------------------------------------
```

### How to upload a model version [¶](\#how-to-upload-a-model-version "Permalink to this headline")

```
$ ngc registry model upload-version example_org/example_model_name:v1 --gpu-model 'GV-100' \
  --accuracy-reached 76.77 --batch-size 0 --memory-footprint '1024KB' \
  --num-epochs 91 --source tox.out

Uploaded 113.66 KB, 1/1 files in 1s, Avg Upload speed: 113.66 KB/s, Curr Upload Speed: 113.66 KB/s
----------------------------------------------------
Model id: example_model_name[version=v1]
Upload status: Completed
Uploaded local path: /home/jmaddux/projects/ngc_cli/test_new_cmds/ngc-cli/tox.out
Total files uploaded: 1
Total uploaded size: 113.66 KB
Started at: 2018-11-29 14:17:42.302443
Completed at: 2018-11-29 14:17:52.310996
Duration taken: 1s
----------------------------------------------------
```

### How to list model versions [¶](\#how-to-list-model-versions "Permalink to this headline")

```
$ ngc registry model list "example_org/example_model_name:*"

+---------+----------+--------+------------+-----------+------------------+-----------+-------+-----------------+------------------------+
| Version | Accuracy | Epochs | Batch Size | GPU Model | Memory Footprint | File Size | Owner | Status          | Created Date           |
+---------+----------+--------+------------+-----------+------------------+-----------+-------+-----------------+------------------------+
| v1      | 76.77    | 91     | 0.0        | GV-100    | 1024KB           | 113.52 KB |       | UPLOAD_COMPLETE |2018-11-29 20:17:08 UTC |
+---------+----------+--------+------------+-----------+------------------+-----------+-------+-----------------+------------------------+
```

### How to list model versions using column arguments [¶](\#how-to-list-model-versions-using-column-arguments "Permalink to this headline")

```
$ ngc registry model list "example_org/example_model_name:*" --column size --column status

+---------+-----------+-----------------+
| Version | File Size | Status          |
+---------+-----------+-----------------+
| v1      | 113.52 KB | UPLOAD_COMPLETE |
+---------+-----------+-----------------+
```

### How to get information about a model version [¶](\#how-to-get-information-about-a-model-version "Permalink to this headline")

```
$ ngc registry model info example_org/example_model_name:v1

--------------------------------------------------
  Model Version Information
    Id: v1
    Batch Size: 0
    Memory Footprint: 1024KB
    Number Of Epochs: 91
    GPU Model: GV-100
    Owner Name:
    Created Date: 2018-11-29T20:17:08.218Z
    Description:
    Status: UPLOAD_COMPLETE
    Total File Count: 1
    Total Size: 2.03 KB
--------------------------------------------------
```

### How to list files for a model [¶](\#how-to-list-files-for-a-model "Permalink to this headline")

```
$ ngc registry model example_org/example_model_name:v1 --files

--------------------------------------------------
  Model Version Information
    Id: v1
    Batch Size: 0
    Memory Footprint: 1024KB
    Number Of Epochs: 91
    GPU Model: GV-100
    Owner Name:
    Created Date: 2018-11-29T20:17:08.218Z
    Description:
    Status: UPLOAD_COMPLETE
    Total File Count: 1
    Total Size: 2.03 KB
    File List:
        tox.out - 2.03 KB
--------------------------------------------------
```

### How to update a model's version [¶](\#how-to-update-a-model-s-version "Permalink to this headline")

```
$ ngc registry model update example_org/example_model_name:v1 --desc \
  'This is an updated description. Blah blah blah'

Successfully updated model version'example_model_name.v1'.

--------------------------------------------------
  Model Version Information
    Id: v1
    Batch Size: 0.0
    Memory Footprint (TODO units): 1024KB
    Number Of Epochs: 91
    GPU Model: GV-100
    Owner Name:
    Created Date: 2018-11-29T20:17:08.218Z
    Description:
        This is an updated description.  blah blah blah
    Status: UPLOAD_COMPLETE
    Total File Count: 1
    Total Size: 2.03 KB
--------------------------------------------------
```

### How to remove a model [¶](\#how-to-remove-a-model "Permalink to this headline")

```
$ ngc registry model remove example_org/example_model_name

Re-enter model name to confirm removal from org-example_org: example_model_name
Successfully removed model 'example_model_name'.
```

### How to remove a version from a model [¶](\#how-to-remove-a-version-from-a-model "Permalink to this headline")

```
$ ngc registry model remove example_org/example_model_name:v1

Are you sure you would like to remove example_org/example_model_name:v1? [y/n]y
Successfully removed model version 'example_org/example_model_name:v1'.
```

### How to update a model [¶](\#how-to-update-a-model "Permalink to this headline")

Each of the attributes of a model can be updated so long as they are
specified. See the full list with `ngc registry model update -h`.

```
$ ngc registry model update example_org/example_model_name --display-name "My Deep Model"

--------------------------------------------------
Model Information
  Name: example_model_name
  Domain: Recommender
  Framework: TensorFlow
  Model Format: ProtoText
  Precision: FP16
  Description: A model for deep learning and recommendation
  Short Description: A description of the model
  Display Name: My Deep Model
  Logo: /path/to/url/rec.jpg
  Org: example_org
  Team:
  Built By:
  Owner Name:
  Publisher:
  Created Date: 2018-11-08T16:58:31.285Z
  Updated Date: 2018-11-08T16:58:31.285Z
  Labels:
      foo
  Latest Version ID: v1
  Latest Version Size: 2.01 KB
  Public Dataset Used:
      Name: my dataset
      Link: www.example.com
      License: ds license
--------------------------------------------------
```

### How to download a version of a model [¶](\#how-to-download-a-version-of-a-model "Permalink to this headline")

```
$ ngc registry model download-version example_org/my_ml_model:v1

----------------------------------------------------
Transfer id: my_ml_model
Download status: Completed
Downloaded local path: /a/path/to/the/model
Total files downloaded: 5
Total downloaded size: 200 MB
Started at: 2018-11-28 15:13:32.119121
Completed at: 2018-11-28 15:13:33.129846
Duration taken: 10s
----------------------------------------------------
```

See `ngc registry -h` for a full list of options.

### How to create a resource [¶](\#how-to-create-a-resource "Permalink to this headline")

See help strings for resource commands with `ngc registry resource -h`.

```
$ ngc registry resource create example_org/example_resource \
    --application OBJECT_DETECTION \
    --format FMT \
    --framework TensorFlow \
    --precision FP16 \
    --short-desc "A short description of my example_resource"

Successfully created resource 'example_org/example_resource'.

--------------------------------------------------
Resource Information
Name: example_resource
Application: OBJECT_DETECTION
Training Framework: TensorFlow
Model Format: FMT
Precision: FP16
Short Description: A short description of my example_resource
Public Dataset Used:
Name:
Link:
License:
Display Name:
Logo:
Org: example_org
Team:
Built By:
Publisher:
Created Date: 2020-04-01 19:03:33 UTC
Updated Date: 2020-04-01 19:03:33 UTC
Can Guest Download: False
Read Only: False
Labels:
Latest Version ID:
Latest Version Size (bytes):
Overview:
Setup:
Quick Start Guide:
Advanced Guide:
Performance:
--------------------------------------------------
```

### How to upload a new resource version [¶](\#how-to-upload-a-new-resource-version "Permalink to this headline")

```
$ ngc registry resource upload-version example_org/example_resource:v1 \
  --accuracy-reached 99 \
  --batch-size 25 \
  --gpu-model V100 \
  --memory-footprint 8GB \
  --num-epochs 2 \
  --source path/to/resource/dir

Uploaded 100 KB, 7/10 files in 3s, Avg Upload speed: 33.33 KB/s, Curr Upload Speed: 0 B/s

----------------------------------------------------
Resource ID: example_resource[version=v1]
Upload status: Completed
Uploaded local path (resource): /path/to/resource/dir
Total files uploaded: 10
Total transferred: 100 KB
Started at: 2020-04-01 14:12:01.155986
Completed at: 2020-04-01T14:12:05.162686Z
Duration taken: 4s
----------------------------------------------------
```

### How to get information about a resource or resource version [¶](\#how-to-get-information-about-a-resource-or-resource-version "Permalink to this headline")

```
$ ngc registry resource info example_org/example_resource

--------------------------------------------------
Resource Information
Name: example_resource
Application: OBJECT_DETECTION
Training Framework: TensorFlow
Model Format: FMT
Precision: FP16
Short Description: A short description of my example_resource
Public Dataset Used:
Name:
Link:
License:
Display Name:
Logo:
Org: example_org
Team:
Built By:
Publisher:
Created Date: 2020-04-01 19:03:33 UTC
Updated Date: 2020-04-01 19:12:05 UTC
Can Guest Download: False
Read Only: False
Labels:
Latest Version ID: v1
Latest Version Size (bytes): 10240
Overview:
Setup:
Quick Start Guide:
Advanced Guide:
Performance:
--------------------------------------------------
```

```
$ ngc registry resource info example_org/example_resource:v1

--------------------------------------------------
Resource Version Information
Id: v1
Batch Size: 25
Memory Footprint: 8GB
Number Of Epochs: 2
Accuracy Reached: 99.0
GPU Model: V100
Created By: stg-bed4agevt4237955bukje3t22e
Created Date: 2020-04-01 19:12:00 UTC
Status: UPLOAD_COMPLETE
Total File Count: 64
Total Size: 24.27 MB
Description:
Performance:
Quick Start Guide:
Release Notes:
Setup:
--------------------------------------------------
```

### How to list resources [¶](\#how-to-list-resources "Permalink to this headline")

```
$ ngc registry resource list

+------------------+------------------+----------------+------------------+------------+------------+---------------+------------+
| Name             | Repository       | Latest Version | Application      | Framework  | Precision  | Last Modified | Permission |
+------------------+------------------+----------------+------------------+------------+------------+---------------+------------+
| example_resource | example_org/exam | v1             | OBJECT_DETECTION | TensorFlow | FP16       | Feb 14, 2020  | unlocked   |
|                  | ple_resource     |                |                  |            |            |               |            |
|                  | v1_5             |                |                  |            |            |               |            |
+------------------+------------------+----------------+------------------+------------+------------+---------------+------------+
```

### How to list resources with column arguments [¶](\#how-to-list-resources-with-column-arguments "Permalink to this headline")

```
$ ngc registry resource list --column name --column version

+------------------+------------------+----------------+
| Repository       | Name             | Latest Version |
+------------------+------------------+----------------+
| example_org/exam | example_resource | v1             |
| ple_resource     |                  |                |
| v1_5             |                  |                |
+------------------+------------------+----------------+
```

### How to download a resource version [¶](\#how-to-download-a-resource-version "Permalink to this headline")

```
$ ngc registry resource download-version example_org/example_resorurce:v1 --dest ./tmp

Downloaded 23.74 MB in 4s, Download speed: 5.92 MB/s

----------------------------------------------------
Transfer id: example_resource_vv1 Download status: Completed.
Downloaded local path: /home/a_user/tmp/example_resource_vv2
Total files downloaded: 10
Total downloaded size: 101.24 KB
Started at: 2020-04-01 14:19:39.517996
Completed at: 2020-04-01 14:19:43.525729
Duration taken: 2s
----------------------------------------------------
```

### How to remove a resource or resource version [¶](\#how-to-remove-a-resource-or-resource-version "Permalink to this headline")

```
$ ngc registry resource remove example_org/example_resource
Are you sure you would like to remove example_org/example_resource? [y/n]y
Successfully removed resource 'example_org/example_resource'.
```

```
$ ngc registry resource remove example_org/example_resource:v1
Are you sure you would like to remove example_org/example_resource:v1? [y/n]y
Successfully removed model version 'example_org/example_resource:v1'.
```

### How to update a resource or resource version [¶](\#how-to-update-a-resource-or-resource-version "Permalink to this headline")

```
$ ngc registry resource update example_org/example_resource \
  --framework PyTorch \
  --precision FP32

Successfully updated resource 'example_org/example_resource'.

--------------------------------------------------
Resource Information
Name: example_resource
Application: OBJECT_DETECTION
Training Framework: PyTorch
Model Format: FMT
Precision: FP32
Short Description: A short description of my example_resource
Public Dataset Used:
Name:
Link:
License:
Display Name:
Logo:
Org: example_org
Team:
Built By:
Publisher:
Created Date: 2020-04-01 19:03:33 UTC
Updated Date: 2020-04-01 19:28:15 UTC
Can Guest Download: False
Read Only: False
Labels:
Latest Version ID: v2
Latest Version Size (bytes): 10240
Overview:
Setup:
Quick Start Guide:
Advanced Guide:
Performance:
--------------------------------------------------
```

```
$ ngc registry resource update example_org/example_resource:v2 --desc "a new description here" --batch-size 100

Successfully updated resource version 'example_org/example_resource:v2'.

--------------------------------------------------
Resource Version Information
Id: v2
Batch Size: 100
Memory Footprint: 8GB
Number Of Epochs: 2
Accuracy Reached: 99.0
GPU Model: V100
Created By: stg-bed4agevt4237955bukje3t22e
Created Date: 2020-04-01 19:23:09 UTC
Status: UPLOAD_COMPLETE
Total File Count: 10
Total Size: 100 KB
Description:
a new description here
Performance:
Quick Start Guide:
Release Notes:
Setup:
--------------------------------------------------
```

### How to list helm charts [¶](\#how-to-list-helm-charts "Permalink to this headline")

```
$ ngc registry chart list '*nginx*'

+---------+---------+---------+--------+---------+---------+---------+---------+
| Name    | Reposit | Version | Size   | Created | Descrip | Created | Last Mo |
|         | ory     |         |        | By      | tion    | Date    | dified  |
+---------+---------+---------+--------+---------+---------+---------+---------+
| nginx-  | nvexmpl | 1.26.2  | 109.19 | ukp3qoa |         | Apr 27, | Apr 27, |
| ingress | /nginx- |         | KB     | svi9h8v |         | 2020    | 2020    |
|         | ingress |         |        | vo3fkg9 |         |         |         |
|         |         |         |        | afo9f   |         |         |         |
+---------+---------+---------+--------+---------+---------+---------+---------+
```

### How to list helm charts with column arguments [¶](\#how-to-list-helm-charts-with-column-arguments "Permalink to this headline")

```
$ ngc registry chart list '*nginx*' --column name --column labels

+-----------------------+---------------+--------+
| Repository            | Name          | Labels |
+-----------------------+---------------+--------+
| nvexmpl/nginx-ingress | nginx-ingress |        |
+-----------------------+---------------+--------+
```

### How to remove a registry chart [¶](\#how-to-remove-a-registry-chart "Permalink to this headline")

```
$ ngc registry chart remove example_org/digits:2.0

Successfully removed chart 'example_org/digits:2.0'
```

### How to remove a registry chart repository [¶](\#how-to-remove-a-registry-chart-repository "Permalink to this headline")

```
$ ngc registry chart remove example_org/digits

Successfully removed chart 'example_org/digits:2.0'
Successfully removed chart 'example_org/digits:1.0'
Successfully removed chart repository 'example_org/digits'
```

### How to get information about a chart version [¶](\#how-to-get-information-about-a-chart-version "Permalink to this headline")

```
$ ngc registry chart info nvexmpl/nginx-ingress:1.26.2

--------------------------------------------------
  Chart Version Information
    Created Date: 2020-04-27 21:03:09 UTC
    Updated Date: 2020-04-27 21:03:09 UTC
    Version ID: 1.26.2
    Total File Count: 68
    Total Size: 109.19 KB
    Status: UPLOAD_COMPLETE
--------------------------------------------------
```

### How to get information about a chart repository [¶](\#how-to-get-information-about-a-chart-repository "Permalink to this headline")

```
$ ngc registry chart info nvexmpl/nginx-ingress

--------------------------------------------------
  Chart Information
    Name: nginx-ingress
    Short Description:
    Display Name:
    Team:
    Publisher:
    Built By:
    Labels:
    Logo:
    Created Date: 2020-04-27 21:03:09 UTC
    Updated Date: 2020-04-27 21:03:09 UTC
    Read Only: False
    Latest Version ID: 1.26.2
    Latest Version Size (bytes): 111814
    Overview:
        An nginx Ingress controller that uses ConfigMap to store the nginx configuration.
--------------------------------------------------
```

### How to pull a chart from the NGC chart registry [¶](\#how-to-pull-a-chart-from-the-ngc-chart-registry "Permalink to this headline")

Pulling a chart from a registry requires you to specify the path, which includes org name, team name (if any),
chart name, and version. Note that if you do not provide a version when pulling a chart, 'latest' will be assumed:

```
$ ngc registry chart list

    +--------------------------------+--------------------------------+----------+----------+--------------------------------+------------------------------+--------------+---------------+
    | Name                           | Repository                     | Version  | Size     | Created By                     | Description                  | Created Date | Last Modified |
    +--------------------------------+--------------------------------+----------+----------+--------------------------------+------------------------------+--------------+---------------+
    | ...                            | ...                            | ...      | ...      | ...                            | ...                          | ...          | ...           |
    | digits                         | example_org/digits             | 3.0      | 9 KB     |                                | A Helm Chart for digits      | Oct 23, 2020 | Oct 28, 2020  |
    | ...                            | ...                            | ...      | ...      | ...                            | ...                          | ...          | ...           |
    +--------------------------------+--------------------------------+----------+----------+--------------------------------+------------------------------+--------------+---------------+
```

```
$ ngc registry chart pull example_org/digits:3.0 --dest output/

    Successfully pulled chart version '/Users/me/output/digits-3.0.tgz'.
```

```
$ ngc registry chart pull example_org/digits --dest output/

    No version specified, downloading latest version: 3.0.
    Successfully pulled chart version '/Users/me/output/digits-3.0.tgz'.
```

### How to update a chart from the NGC chart registry [¶](\#how-to-update-a-chart-from-the-ngc-chart-registry "Permalink to this headline")

Updating a chart from a registry requires you to specify the path:

```
$ ngc registry chart update example_org/digits --short-desc new_description --label new_label --logo new_logo --publisher new_pub --built-by new_built

Successfully updated chart 'example_org/digits'.
--------------------------------------------------
  Chart Information
    Name: digits
    Short Description: new_description
    Display Name:
    Team:
    Publisher: new_pub
    Built By: new_built
    Labels:
        new_label
    Logo: new_logo
    Created Date: 2020-10-23 16:00:37 UTC
    Updated Date: 2020-11-05 20:13:35 UTC
    Read Only: False
    Latest Version ID: 0.4.0
    Latest Version Size (bytes): 9268
    Overview:
        This is a general overview of the chart. It can contain lots of information about its usage.
--------------------------------------------------
```

### How to push a chart to the NGC chart registry [¶](\#how-to-push-a-chart-to-the-ngc-chart-registry "Permalink to this headline")

Before you can push a chart, you have to create the overall chart record:

```
$ ngc registry chart create example_org/digits --short-desc "A Helm Chart for digits" --overview-filename overview.txt

    Successfully created chart 'example_org/digits'.
    --------------------------------------------------
      Chart Information
            Name: digits
            Short Description: A Helm Chart for digits
            Display Name:
            Team:
            Publisher:
            Built By:
            Labels:
            Logo:
            Created Date: 2020-11-05 21:38:27 UTC
            Updated Date: 2020-11-05 21:38:27 UTC
            Read Only: False
            Latest Version ID:
            Latest Version Size (bytes):
            Overview:
                    This is a general overview of the chart. It can contain lots of information about its usage.
    --------------------------------------------------
```

Once the chart is created, you can push versions of it to the helm repository:

```
$ ngc registry chart push example_org/digits:1.0

Successfully pushed chart version 'digits:1.0'.
--------------------------------------------------
  Chart Version Information
        Created Date: 2020-10-23 16:00:37 UTC
        Updated Date: 2020-10-23 16:00:37 UTC
        Version ID: 1.0
        Total File Count: 11
        Total Size: 10.25 KB
        Status: UPLOAD_COMPLETE
--------------------------------------------------
```

### How to list collections [¶](\#how-to-list-collections "Permalink to this headline")

```
$ ngc registry collection list
+-------------------------------------+-------------------------------------+--------------------------+--------------------------+
| Display Name                        | Name                                | Created                  | Updated                  |
+-------------------------------------+-------------------------------------+--------------------------+--------------------------+
| None                                | nvidia/ngc-web/ngcfegzg2xtmq        | 2020-08-12T17:40:54.681Z | 2021-03-29T18:09:58.760Z |
| None                                | nvidia/ngcfe9hg8gl7u                | 2020-08-12T17:40:54.689Z | 2021-03-29T18:09:58.055Z |
| None                                | nvidia/ngc-web/ngcfe2qc1y2p4        | 2020-08-12T17:52:22.250Z | 2021-03-29T18:10:01.759Z |
| None                                | nvidia/ngcfeykzaahcm                | 2020-08-12T17:52:22.298Z | 2021-03-29T18:10:00.681Z |
| None                                | nvidia/ngc-web/ngcfejyeogzwm        | 2020-08-12T17:54:35.579Z | 2021-03-29T18:09:58.939Z |
| None                                | nvidia/ngcfellsbe7xx                | 2020-08-12T17:54:35.581Z | 2021-03-29T18:09:58.941Z |
| None                                | nvidia/ngc-web/ngcfec6weygws        | 2020-08-12T18:02:01.309Z | 2021-03-29T18:09:58.423Z |
...
```

### How to remove a collection [¶](\#how-to-remove-a-collection "Permalink to this headline")

```
$ ngc registry collection remove example_org/collectionname
Are you sure you would like to remove example_org/collectionname? [y/n]y
Successfully removed collection 'example_org/collectionname'.
```

### How to get collection information [¶](\#how-to-get-collection-information "Permalink to this headline")

```
$ ngc registry collection info example_org/collectionname
--------------------------------------------------
  Collection Information
    Name: collectionname
    Org: example_org
    Team:
    Display Name:
    Logo:
    Built By:
    Publisher:
    Created Date: 2021-05-03T19:47:20.044Z
    Updated Date: 2021-05-03T19:47:20.044Z
    Short Description: Dummy description
    Category: BEGINNER
    Labels:
    Images:
    Charts:
    Models:
    Resources:
    Overview:
--------------------------------------------------
```

### How to create a collection [¶](\#how-to-create-a-collection "Permalink to this headline")

When you create a collection, all of the entities you wish to link to the collection (images, helm charts, etc.) must
already exist.

```
$ ngc registry collection create example_org/collectionname --short-desc "Dummy description" --category beginner --add-image orgname/imagename
--------------------------------------------------
  Collection Information
    Name: collectionname
    Org: example_org
    Team:
    Display Name:
    Logo:
    Built By:
    Publisher:
    Created Date: 2021-05-03T19:47:20.044Z
    Updated Date: 2021-05-03T19:47:20.044Z
    Short Description: Dummy description
    Category: BEGINNER
    Labels:
    Images:
      orgname/imagename
    Charts:
    Models:
    Resources:
    Overview:
--------------------------------------------------
```

### How to update a collection [¶](\#how-to-update-a-collection "Permalink to this headline")

Any of the fields of a collection can be updated after it's been created. You can use --help for a full list of
argument options.

```
$ ngc registry collection update example_org/collectionname --short-desc "New dummy description" --add-chart orgname/chartname --remove-image orgname/imagename
--------------------------------------------------
  Collection Information
    Name: collectionname
    Org: example_org
    Team:
    Display Name:
    Logo:
    Built By:
    Publisher:
    Created Date: 2021-05-03T19:47:20.044Z
    Updated Date: 2021-05-03T19:47:20.044Z
    Short Description: New dummy description
    Category: BEGINNER
    Labels:
    Images:
    Charts:
      orgname/chartname
    Models:
    Resources:
    Overview:
--------------------------------------------------
```
