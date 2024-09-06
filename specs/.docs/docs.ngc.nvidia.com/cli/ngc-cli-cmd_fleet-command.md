Hello World

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

##### list [¶](\#list "Permalink to this headline")

Show the list if GPU's under management.

```
ngc fleet-command fc list [--column <column>] [--debug] [--format_type <fmt>]
                          [-h]
```

###### Named Arguments [¶](\#named-arguments_repeat6 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--column`

Specify output column as column\[=header\]. The header is optional. The default is: locationName\[='Location Name'\]. Valid columns are: nodeName\[='Node Name'\], totalGpuCount\[='Total GPU Count'\], managedGpus\[='Managed GPUs'\]. Use quotes with spaces. Multiple column arguments are allowed.

### appconfig [¶](\#appconfig "Permalink to this headline")

Fleet Command Application Configuration Commands

```
ngc fleet-command appconfig [--debug] [--format_type <fmt>] [-h]  ...
```

###### Named Arguments [¶](\#named-arguments_repeat40 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`-y, --yes`

Automatically say yes to all interactive questions.

##### mig-enable [¶](\#mig-enable "Permalink to this headline")

Configure Multi-Instance GPU (MIG). MIG allows supported GPUs to be partitioned and used across multiple applications. Warning, this command should only be executed when all deployments using the GPU have been terminated and the GPU is idle. If this command is executed on a GPU with a running deployment, the changes will temporarily disrupt applications and may cause applications to stop running if a selected configuration is not compatible.

```
ngc fleet-command location mig-enable [--debug] [--format_type <fmt>] [-h]
                                      [-y]
                                      <target> <gpuId>:<config>
                                      [<gpuId>:<config> ...]
```

###### Positional Arguments [¶](\#positional-arguments_repeat23 "Permalink to this headline")

`<target>`

System name. Format: <location name>:<system name>

`<gpuId>:<config>`

Space-separated list of GPU IDs and Configurations. Format: <gpuID>:<config>

###### Named Arguments [¶](\#named-arguments_repeat41 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`-y, --yes`

Automatically say yes to all interactive questions.

##### mig-disable [¶](\#mig-disable "Permalink to this headline")

Disable Multi-Instance GPU(s) on a system.

```
ngc fleet-command location mig-disable [--debug] [--format_type <fmt>] [-h]
                                       [-y]
                                       <target> <gpuId> [<gpuId> ...]
```

###### Positional Arguments [¶](\#positional-arguments_repeat24 "Permalink to this headline")

`<target>`

System name. Format: <location name>:<system name>

`<gpuId>`

Space-separated list of GPU IDs

###### Named Arguments [¶](\#named-arguments_repeat42 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`-y, --yes`

Automatically say yes to all interactive questions.

### log [¶](\#log "Permalink to this headline")

Fleet Command Log Commands

```
ngc fleet-command log [--debug] [--format_type <fmt>] [-h]  ...
```

```
$ ngc fleet-command location create test-location --address "Austin TX" --desc "Create a test location" --version 0.4.30
--------------------------------------------------
  Location Information
      Name: test-location
      Address: Austin TX
      Description: Create a test location
      Status: NONE
      Version Last Updated:
      Version: 0.4.30
      Update Available:
      Update Status: UNKNOWN
      Logs: https://egxqatest.graylog.api.stg.ngc.nvidia.com/search?q=location%3Atest-location+AND+component%3A%2A&rangetype=relative&relative=0
      Systems:
--------------------------------------------------
```

### How to add a system [¶](\#how-to-add-a-system "Permalink to this headline")

```
$ ngc fleet-command location add-system test-location:test-sys-1 --desc "create a test system"
--------------------------------------------------
  Location Information
    Name: test-location
    Address: Austin TX
    Description: Create a test location
    Status: NONE
    Version Last Updated: 02/01/2021
    Version: 0.4.30
    Update Available:
    Update Status: UNKNOWN
    Logs: https://egxqatest.graylog.api.stg.ngc.nvidia.com/search?q=location%3Atest-location+AND+component%3A%2A&rangetype=relative&relative=0
    Message: System test-sys-1 successfully added, use activation code x6o0-s7u7-t6k2 to pair the system. The activation code will expire in 11:59:20.
    Systems:
        Name: test-sys-1
        Status: CONNECTING
        Marked For Delete: False
        Config:
        Local IP:
        Description: create a test system
        Logs: https://egxqatest.graylog.api.stg.ngc.nvidia.com/search?q=location%3Atest-location+AND+source%3Atest-sys-1.egx.nvidia.com+AND+component%3A%2A&rangetype=relative&relative=0
--------------------------------------------------
```

### How to create an application [¶](\#how-to-create-an-application "Permalink to this headline")

```
$ ngc fleet-command application create test-helm-application --desc "Add a test application" --display-name "Test Helm Application" --helm https://helm.ngc.nvidia.com/testapp --version 1.0.0
 --------------------------------------------------
   Application Information
     Display Name: Test Helm Application
     Helm Name: test-helm-application
     Create Time: 2021-02-01 18:02:33 UTC
     Description: Add a test application
     Helm Repo: https://helm.ngc.nvidia.com/testapp
     Helm Version: 1.0.0
--------------------------------------------------
```

### How to create an application configuration [¶](\#how-to-create-an-application-configuration "Permalink to this headline")

```
$ ngc fleet-command appconfig create test-appconfig --filename test-appconfig.yaml
--------------------------------------------------
  AppConfig Information
    Name: test-appconfig
    Create Time: 2021-02-01 18:04:39 UTC
    Contents:
        key: value
--------------------------------------------------
```

### How to create a deployment [¶](\#how-to-create-a-deployment "Permalink to this headline")

```
$ ngc fleet-command deployment create test-deployment --application test-application --location test-location
Deployment will initiate immediately and cannot be undone.  Are you sure you would like to continue? [y/n]y
--------------------------------------------------
  Deployment Information
    Name: test-deployment
    Application: test-application
    Appconfig:
    Logs: https://egxqatest.graylog.api.stg.ngc.nvidia.com/search?q=deploymentname%3test-deployment&rangetype=relative&relative=0
    Issue: One or more locations are offline. Deployed applications may stop running and no new deployments can be made to those locations until they are online.
    Locations:
        Name: test-system
        Location Status: OFFLINE_MODE
        Deployment Status: DEPLOYING
        Description: Create a test location
        Address: test-application
        Logs: https://egxqatest.graylog.api.stg.ngc.nvidia.com/search?q=location%3test-location+AND+deploymentname%3Aus-north-100&rangetype=relative&relative=0
--------------------------------------------------
```

### How to update a MiG configuration [¶](\#how-to-update-a-mig-configuration "Permalink to this headline")

```
Get GPU MiG configurations

$ ngc fleet-command location info test-location:test-system
-----------------------------------------------------------------
 System Information
   Name: test-location
   Status: READY
   Marked For Delete: False
   Config: controller-worker
   Local IP: 172.16.0.117
   Description: test-location
   Advanced Networking Details
     Default Gateway: 172.16.0.1
     Default Interface: ens5f0
     Host Name: test-location.egx.nvidia.com
     HTTP Proxy:
     HTTPS Proxy:
     No Proxy:
     Interface 1
       Name: ens6f0
       IP Addresses: fe80::bace:f6ff:fedf:e8b4/64

     Interface 2
       Name: ens6f1
       IP Addresses: fe80::bace:f6ff:fedf:e8b5/64

     Interface 3
       Name: ens5f0
       IP Addresses: 172.16.0.117/24, fe80::ac0:ebff:fe32:5c8a/64

     Interface 4
       Name: ens5f1
       IP Addresses: fe80::ac0:ebff:fe32:5c8b/64

   GPU Details
     Application Compatibility: Yes
     GPU 0
       Description: NVIDIA A30-24GB
       MIG Status: ENABLED
     MIG Profile: 4 MIGs of 1c.6gb
       Available MIG Profiles: 2c.12gb, 1c.6gb

-----------------------------------------------------------------

$ ngc fleet-command location mig-enable test-location:test-system 'GPU 0:1c.6gb' -y
  Warning, changes will temporarily disrupt any running applications on test-location.
  Successfully sent request to enable MIG on test-location, GPUs: GPU 0:1c.6gb.
```

### How to delete an appconfig/deployment [¶](\#how-to-delete-an-appconfig-deployment "Permalink to this headline")

```
$ ngc fleet-command appconfig remove 028567238d52b00e76810cd2d3bac6bf -y
appconfig '028567238d52b00e76810cd2d3bac6bf' successfully removed.

$ ngc fleet-command deployment remove temp-deployment -y
Deployment 'temp-deployment' successfully removed.
```

### How to create a custom deployment with appconfig [¶](\#how-to-create-a-custom-deployment-with-appconfig "Permalink to this headline")

```
$ ngc fleet-command deployment create --location test-location --application t2cf1b295-a4aa-4024-ac8f-7c928b8b80c7l --appconfig 2a978ac8e17d6220719494a29d813673 test-deployment-name2
Deployment will initiate immediately and cannot be undone.  Are you sure you would like to continue? [y/n]y
------------------------------------------------------
 Deployment Information
   Name: test-deployment-name2
   Application: t2cf1b295-a4aa-4024-ac8f-7c928b8b80c7l
   Appconfig: 2a978ac8e17d6220719494a29d813673
   Application Access to All System Devices: Disabled
   Allow any path to be used by host path: Disabled
   Allow host path persistent volume: Disabled
   Allow any capability: Disabled
   Allow privileged containers: Disabled
   Allow host namespace: Disabled
 Locations
 Name: test-location
     Location Status: ONLINE
     Deployment Status: DEPLOYING
     Description: HQ Building
     Address: San Tomas Expwy
------------------------------------------------------
```

### How to use remote console [¶](\#how-to-use-remote-console "Permalink to this headline")

```
$ ngc fleet-command remote console a-a-a-apartha-gpuoploc:gpuopnode
Console request created
Console not ready, Retry 1/10
Console not ready, Retry 2/10
Console ready; setting up connection...
Connecting to console... use Ctrl-C/Ctrl-D to exit
Warning: Permanently added '[localhost]:52277' (ED25519) to the list of known hosts.
Authorized uses only. All activity may be monitored and reported.
Welcome to Ubuntu 20.04.5 LTS (GNU/Linux 5.4.0-125-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

Last login: Wed Oct 12 13:18:05 2022 from 127.0.0.1
Could not chdir to home directory /home/rcproxy: No such file or directory
rcuser@cpu0871:~$ lsb_release -a
No LSB modules are available.
Distributor ID:     Ubuntu
Description:        Ubuntu 20.04.5 LTS
Release:    20.04
Codename:   focal
```
