Hello World

###### Named Arguments [¶](\#named-arguments_repeat55 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--dest`

Specify the path to store the downloaded workspace. Default: .

`--file`

Specify file(s) to download. This flag can be used multiple times.
If omitted, the entire workspace directory will be downloaded.

`--dir`

Specify one or more directories to download. If omitted, the entire workspace directory will be downloaded.

`--zip`

Download the entire dataset directory as a zip file.

`--dry-run`

List total size of the download without performing the download.

### datamover (dm) [¶](\#datamover (dm) "Permalink to this headline")

Data Mover commands to assist copying resources to/from an object storage or to another ACE

```
ngc base-command datamover [--debug] [--format_type <fmt>] [-h]  ...
```

###### Named Arguments [¶](\#named-arguments_repeat94 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--status`

Possible choices: CANCELED, FAILED, FAILED\_RUN\_LIMIT\_EXCEEDED, FINISHED\_SUCCESS, IM\_INTERNAL\_ERROR, INFINITY\_POOL\_MISSING, KILLED\_BY\_ADMIN, KILLED\_BY\_SYSTEM, KILLED\_BY\_USER, PENDING\_TERMINATION, PREEMPTED, PREEMPTED\_BY\_ADMIN, RESOURCE\_CONSUMPTION\_REQUEST\_IN\_PROGRESS, RESOURCE\_GRANTED, RESOURCE\_GRANT\_DENIED, RESOURCE\_LIMIT\_EXCEEDED, RESOURCE\_RELEASED, RUNNING, TASK\_LOST, UNKNOWN

Filter jobs matching input status. Multiple --status flags will OR together. Options: \['CANCELED', 'FAILED', 'FAILED\_RUN\_LIMIT\_EXCEEDED', 'FINISHED\_SUCCESS', 'IM\_INTERNAL\_ERROR', 'INFINITY\_POOL\_MISSING', 'KILLED\_BY\_ADMIN', 'KILLED\_BY\_SYSTEM', 'KILLED\_BY\_USER', 'PENDING\_TERMINATION', 'PREEMPTED', 'PREEMPTED\_BY\_ADMIN', 'RESOURCE\_CONSUMPTION\_REQUEST\_IN\_PROGRESS', 'RESOURCE\_GRANTED', 'RESOURCE\_GRANT\_DENIED', 'RESOURCE\_LIMIT\_EXCEEDED', 'RESOURCE\_RELEASED', 'RUNNING', 'TASK\_LOST', 'UNKNOWN'\]

`-y, --yes`

Automatically say yes to all interactive questions.

`--dry-run`

List matching input set without any action.

`--job-name`

Filter jobs with names matching specified pattern. Supports standard Unix shell-style wildcards like (?, \[abc\], \[!a-z\], etc..).

## **Examples** [¶](\#examples "Permalink to this headline")

### How to list ACE? [¶](\#how-to-list-ace "Permalink to this headline")

```
$ ngc base-command ace list

+-----------------------+-------+---------------------------------------+-----------------------------+
| ACE                   | Id    | Description                           | Instances                   |
+-----------------------+-------+---------------------------------------+-----------------------------+
| nvidia-exmpl-1        | 63915 | For testing group A                   | nvidia.exmpl.a2,            |
|                       |       |                                       | nvidia.exmpl.a6             |
| nvidia-exmpl-2        | 56392 | For testing group B                   | nvidia.exmpl.b7,            |
|                       |       |                                       | nvidia.exmpl.b5             |
+-----------------------+-------+---------------------------------------+-----------------------------+
```

### How to list ACE using column arguments? [¶](\#how-to-list-ace-using-column-arguments "Permalink to this headline")

```
$ ngc base-command ace list --column id

+-----------------------+-------+
| ACE                   | Id    |
+-----------------------+-------+
| nvidia-exmpl-1        | 63915 |
| nvidia-exmpl-2        | 56392 |
+-----------------------+-------+
```

### How to get ACE details? [¶](\#how-to-get-ace-details "Permalink to this headline")

```
$ ngc base-command ace info nvidia-exmpl-1

----------------------------------------------------
ACE Information
    Name: nvidia-exmpl-1
    Id: 63915
    Type: PUBLIC
    Created Date: 2018-03-04 05:01:00 UTC
    Created By:
    Description: For testing group A
    Auto Configuration Enabled: False
    Provider: NGN
    Storage Service Url: https://nvidia.com
    Proxy Service Url: https://nvidia.com
    Instances:
        Name: nvidia.exmpl.a2   GPUs:  1   GPU Mem: 16 GB   GPU Power:  160 W   CPUs:  8   System Mem:  50 GB
        Name: nvidia.exmpl.a6   GPUs:  2   GPU Mem: 16 GB   GPU Power:  160 W   CPUs: 16   System Mem: 100 GB
----------------------------------------------------
```

### How to list dataset? [¶](\#how-to-list-dataset "Permalink to this headline")

```
$ ngc base-command dataset list

+------------+--------------+------------------+--------+----------+-----------------+----------------------------+
| Dataset Id | Dataset Name | Description      | ACE Id | Size     | Status          | Created Date               |
+------------+--------------+------------------+--------+----------+-----------------+----------------------------+
| 3067       | mnist        | mnist is awesome | 53     | 11.06 MB | UPLOAD_COMPLETE | 2017-12-02 22:21:38 UTC +0 |
+------------+--------------+------------------+--------+----------+-----------------+----------------------------+
```

### How to list dataset using column arguments? [¶](\#how-to-list-dataset-using-column-arguments "Permalink to this headline")

```
$ ngc base-command dataset list --column id --column name --column size

+-----------------------+--------------+------------------+----------+
| Id                    | Integer Id   | Name             | Size     |
+-----------------------+--------------+------------------+----------+
| oSjpnu6GtEXRQZCqqDp31 | 3067         | mnist is awesome | 11.06 MB |
+-----------------------+--------------+------------------+----------+
```

### How to upload dataset? [¶](\#how-to-upload-dataset "Permalink to this headline")

```
$ ngc base-command dataset upload --ace nv-exmpl-1 --desc "mnist is awesome" --source c:\dataset\mnist.zip mnist

Parsing list of files...
Number of files to be uploaded: 1
Creating dataset...
Dataset created id: 4597
Upload started: mnist.zip
2017-12-19 10:28:57:963000 Upload completed: mnist.zip Time taken: 3.28 seconds File size: 11600578 B
Total number of files uploaded 1/1
Dataset: 4597 Name: mnist Upload Completed
Dataset local path: c:\dataset\mnist.zip
Files uploaded: 1
Total Bytes transferred: 11600578 B
Started at: 2017-12-19 10:28:52.738000
Completed at: 2017-12-19 10:28:57.970000
Duration taken: 5.232 seconds
NOTE: It will take some time for dataset to be available for download.
```

### How to view dataset info? [¶](\#how-to-view-dataset-info "Permalink to this headline")

```
$ ngc base-command dataset info 4597

----------------------------------------------------
  Dataset Information
    Id: 4597
    Name: mnist
    Created By: FooBar
    Email: foobar@nvidia.com
    ACE: nv-exmpl-1
    Size: 11.6 MB
    Total Files: 1
    Status: UPLOAD_COMPLETE
    Description: mnist is awesome
    Owned: No
    Shared: Private
    Files:
        /mnist.zip
----------------------------------------------------
```

### How to download dataset? [¶](\#how-to-download-dataset "Permalink to this headline")

```
$ ngc base-command dataset download 9999

1 files to download, total size - 13 B
Downloaded 0 B, 0 files in 2s Download speed: 0 B/s
Downloaded 0 B, 0 files in 3s Download speed: 0 B/s
**********************************************************************
Dataset: 9999 Download status: Completed.
Downloaded local path: C:\Users\Admin\ngc-cli\9999
Total files downloaded: 1
Total downloaded size: 13 B
Started at: 2018-01-01 10:00:26.756000
Completed at: 2018-01-01 10:00:31.720000
Duration taken: 4s seconds
**********************************************************************
```

### How to share dataset? [¶](\#how-to-share-dataset "Permalink to this headline")

```
$ ngc base-command dataset share 4597 --team cosmos
```

```
$ ngc base-command dataset share 4597 --org nvidia
```

### How to revoke dataset share? [¶](\#how-to-revoke-dataset-share "Permalink to this headline")

```
$ ngc base-command dataset revoke-share 4597 --team cosmos
```

```
$ ngc base-command dataset revoke-share 4597 --org nvidia
```

### How to remove dataset? [¶](\#how-to-remove-dataset "Permalink to this headline")

```
$ ngc base-command dataset remove 4597
```

### How to convert result to dataset? [¶](\#how-to-convert-result-to-dataset "Permalink to this headline")

```
$ ngc base-command dataset convert --from-result 9999 dataset-name
```

### How to submit a job? [¶](\#how-to-submit-a-job "Permalink to this headline")

```
$ ngc base-command job run --ace nv-exmpl-1 --instance ngcv1 --name "Test Run"
                --image "nvidia/pytorch:17.11" --datasetid 5586:/data
                --result /result --command "/bin/ls -aFl /data"

 Job created.
 ----------------------------------------------------
 Job Information
   Id: 813581
   Name: Test Run
   Job Type: BATCH
   Created At: 2019-09-09 20:28:32 UTC
   Submitted By: <your name>
 Job Container Information
   Docker Image URL: nvidia/pytorch:17.11
 Job Commands
   Command: /bin/ls -aFl /data
   Dockerfile Image Entrypoint: False
 Datasets, Workspaces and Results
   Dataset ID: 5586
       Dataset Mount Point: /data
   Result Mount Point: /result
 Job Resources
   Instance Type: ngcv1
   Instance Details: 1 GPU, 8 CPU, 50 GB System Memory
   ACE: nv-exmpl-1
   Cluster: prd0-257-sjc3.nvk8s.com
 Job Status
   Status: CREATED
   Preempt Class: RUNONCE
 ----------------------------------------------------
```

### How to submit job using json file? [¶](\#how-to-submit-job-using-json-file "Permalink to this headline")

```
1. First upload the dataset to ACE.

$ ngc base-command dataset upload --ace nv-exmpl-1 --desc "mnist is awesome" --source c:\dataset\mnist.zip mnist

Parsing list of files...
Number of files to be uploaded: 1
Creating dataset...
Dataset created id: 4597
Upload started: mnist.zip
2017-12-19 10:28:57:963000 Upload completed: mnist.zip Time taken: 3.28 seconds File size: 11600578 B
Total number of files uploaded 1/1
Dataset: 4597 Name: mnist Upload Completed
Dataset local path: c:\dataset\mnist.zip
Files uploaded: 1
Total Bytes transferred: 11600578 B
Started at: 2017-12-19 10:28:52.738000
Duration taken: 5.232 seconds
Completed at: 2017-12-19 10:28:57.970000
NOTE: It will take some time for dataset to be available for download.

2. Create a tensorflow-mnist.json file with following json object. Make sure you use the dataset id generated
by uploading the dataset.

{
  "dockerImageName": "nvidia/tensorflow:17.10",
  "aceName": "nv-exmpl-1",
  "name": "tensorflow-mnist",
  "command": "cp -r /data /tmp/; cd /tmp/data; unzip -j mnist.zip; cd /src/TensorFlow-Examples/examples/3_NeuralNetworks; cp /tmp/data/input_data.py .; python /src/TensorFlow-Examples/examples/3_NeuralNetworks/convolutional_network.py",
  "datasetMounts": [
    {
      "containerMountPoint": "/data",
      "id": 4597
    }
  ],
  "resultContainerMountPoint": "/result",
  "aceInstance": "ngcv1"
}

3. Submit job using json file.

$ ngc base-command job run -f tensorflow-mnist.json
```

### How to submit job using json file and arguments? [¶](\#how-to-submit-job-using-json-file-and-arguments "Permalink to this headline")

Note: Single-use arguments will override and multiple-use arguments will be appended to corresponding json values.

```
Submit job with a new name and instance overriding the values from the json file.

$ ngc base-command job run -f tensorflow-mnist.json --name tensorflow-mnist-2 --instance dgx1v.16g.2.norm
--------------------------------------------------
  Job Information
    Id: 1181406
    Name: tensorflow-mnist-2
    Number of Replicas: 1
    Job Type: BATCH
    Submitted By: <your name>
  Job Container Information
    Docker Image URL: nvidia/tensorflow:17.10
  Job Commands
    Command: cp -r /data /tmp/; cd /tmp/data; unzip -j mnist.zip; cd /src/TensorFlow-Examples/examples/3_NeuralNetworks; cp /tmp/data/input_data.py .; python /src/TensorFlow-Examples/examples/3_NeuralNetworks/convolutional_network.py
    Dockerfile Image Entrypoint: False
  Datasets, Workspaces and Results
    Dataset ID: 5586
        Dataset Mount Point: /data
        Prepopulated: No
    Result Mount Point: /result
  Job Resources
    Instance Type: dgx1v.16g.2.norm
    Instance Details: 2 GPU, 16 CPU, 100 GB System Memory
    ACE: nv-exmpl-1
    Cluster: prd0-257-sjc3.nvk8s.com
    Team: ngc
  Job Status
    Created at: 2020-05-15 19:59:52 UTC
    Status: CREATED
    Preempt Class: RUNONCE
--------------------------------------------------
```

### How to kill job? [¶](\#how-to-kill-job "Permalink to this headline")

```
$ ngc base-command job kill 19556

Submitted kill request for job Id: 19556
```

### How to list jobs? [¶](\#how-to-list-jobs "Permalink to this headline")

```
$ ngc base-command job list

+--------+-------------+-----------+------------------+----------+--------------------------+
| Id     | Name        | Team      |Status            | Duration | Status Details           |
+--------+----- -------+-----------|------------------+----------+--------------------------+
| 123456 | job-name-4  |           | FINISHED_SUCCESS | 0:00:30  |                          |
| 123455 | job-name-3  |           | FINISHED_SUCCESS | 0:00:00  |                          |
| 314169 | job-name-2  | your_team | KILLED_BY_USER   | -        | (-1): Requested by user. |
| 314172 | job-name-1  | my+team   | FAILED           | 0:00:01  | (100): Container exited  |
|        |             |           |                  |          | with status 1.           |
+--------+-------------+-----------+------------------+----------+--------------------------+
```

### How to list jobs using column arguments? [¶](\#how-to-list-jobs-using-column-arguments "Permalink to this headline")

```
$ ngc base-command job list --column name --column status

+--------+------------+------------------+
| Id     | Name       |Status            |
+--------+----- ------|------------------+
| 123456 | job-name-4 | FINISHED_SUCCESS |
| 123455 | job-name-3 | FINISHED_SUCCESS |
| 314169 | job-name-2 | KILLED_BY_USER   |
| 314172 | job-name-1 | FAILED           |
+--------+------------+------------------+
```

### How to view job info? [¶](\#how-to-view-job-info "Permalink to this headline")

```
$ ngc base-command job info 710135
--------------------------------------------------
  Job Information
    Id: 710135
    Name: TestJobLumetta
    Job Type: BATCH
    Created At: 2019-06-20 20:38:35 UTC
    Submitted By: <your name>
  Job Container Information
    Docker Image URL: nvidia/pytorch:17.11
    Container name: c983092fb5755e946177f82bb01e2eb02021b9285697cd9cf06e8da0e8c382a0
  Job Commands
    Dockerfile Image Entrypoint: False
  Datasets, Workspaces and Results
    Result Mount Point: /result
  Job Resources
    Instance Type: ngcv1
    Instance Details: 1 GPU, 8 CPU, 50 GB System Memory
    ACE: Staging
    Cluster: stg-sjc3.nonprod-nvkong.com
  Job Status
    Started at: 2019-06-20 20:41:12 UTC
    Ended at: 2019-06-20 20:41:12 UTC
    Status: FINISHED_SUCCESS
    Status Type: OK
    Preempt Class: RUNONCE
--------------------------------------------------
```

### How to attach to Docker container? [¶](\#how-to-attach-to-docker-container "Permalink to this headline")

Note: Specified job must be running

```
$ ngc base-command job attach 15472
```

### How to exec to Docker container? [¶](\#how-to-exec-to-docker-container "Permalink to this headline")

Note: Specified job must be running

```
$ ngc base-command job exec 15472
```

### How to generate a job with telemetry data? [¶](\#how-to-generate-a-job-with-telemetry-data "Permalink to this headline")

Note: Specified image must have metrics turned on, or there will be no output for the telemetry command.

```
$ ngc base-command job run --name "test-run" --preempt RUNONCE --ace nv-exmpl-1
               --instance dgx1v.16g.2.norm --commandline "jupyter lab --ip=0.0.0.
               --allow-root --no-browser --NotebookApp.token=''
               --notebook-dir= --NotebookApp.allow_origin='*' & date;
               export TF_ENABLE_AUTO_MIXED_PRECISION=1;
               cd /mnt/democode/nvidia/tensorflow-19.05-py3/workspace/nvidia-examples/cnn;
               mpiexec --allow-run-as-root -np 1 python resnet.py --layers=50
               --data_dir=/data/imagenet --log_dir=/result; " --result /result
               --image "nvidia/tensorflow:19.11-tf1-py3" --org nvexmpl --team onboarding
               --datasetid 9382:/data/imagenet
               --workspace wWL-MpYfSkmWcSjvZFwYwQ:/mnt/democode:RO --port 8888

Job created. (2-GPU configuration: "--instance dgx1v.16g.2.norm")
-------------------------------------------------------------------------------------------
Job Information
  Id: 1120624
  Name: test-run
  Number of Replicas: 1
  Job Type: BATCH
  Created At: 2020-04-07 05:38:38 UTC
  Submitted By: <your name>
Job Container Information
  Docker Image URL: nvidia/tensorflow:19.11-tf1-py3
Job Commands
  Command: jupyter lab --ip=0.0.0.0 --allow-root --no-browser --NotebookApp.token=''
           --notebook-dir=/ --NotebookApp.allow_origin='*' & date;
           export TF_ENABLE_AUTO_MIXED_PRECISION=1;
           cd /mnt/democode/nvidia/tensorflow-19.05-py3/workspace/nvidia-examples/cnn;
           mpiexec --allow-run-as-root -np 1 python resnet.py --layers=50
           --data_dir=/data/imagenet --log_dir=/result;
  Dockerfile Image Entrypoint: False
Datasets, Workspaces and Results
  Dataset ID: 9382
      Dataset Mount Point: /data/imagenet
      Prepopulated: No
  Workspace ID: wWL-MpYfSkmWcSjvZFwYwQ
      Workspace Name: sn-code
      Workspace Mount Point: /mnt/democode
      Workspace Mount Mode: RO
  Result Mount Point: /result
Job Resources
  Instance Type: dgx1v.16g.2.norm
  Instance Details: 2 GPU, 8 CPU, 50 GB System Memory
  ACE: nv-exmpl-1
  Cluster: prd0-257-sjc3.nvk8s.com
  Team: onboarding
Job Status
  Status: CREATED
  Preempt Class: RUNONCE
-------------------------------------------------------------------------------------------
```

### How to get telemetry arguments information? [¶](\#how-to-get-telemetry-arguments-information "Permalink to this headline")

```
$ ngc base-command job telemetry --help

usage: ngc batch telemetry [--ace <name>] [--debug] [--format_type <fmt>]
                           [--interval-time <t>] [--interval-unit <u>]
                           [--org <name>] [--statistics <form>]
                           [--team <name>] [--type <type>] [-h]
                           <<job id>[:replica_id]>

List telemetry data for the given job.

positional arguments:
  <<job id>[:replica_id]>
                        Job ID

optional arguments:
  -h, --help            Show this help message and exit.
  --ace <name>          Specify the ACE name. Use "--ace no-ace" to override
                        other sources and specify no ACE. Default: current
                        configuration
  --debug               Enable debug mode.
  --format_type <fmt>   Specify the output format type. Supported formats are:
                        ascii, csv, json. Only commands that produce tabular
                        data support csv format. Default: ascii
  --interval-time <t>   Data collection interval time value. Default: 1
  --interval-unit <u>   Data collection interval unit. Options: HOUR, MINUTE,
                        SECOND. Default: MINUTE
  --org <name>          Specify the organization name. Use "--org no-org" to
                        override other sources and specify no org. Default:
                        current configuration
  --statistics <form>   Statistical form of the data to report. Options: MAX,
                        MEAN, MIN. Default: MEAN
  --team <name>         Specify the team name. Use "--team no-team" to
                        override other sources and specify no team. Default:
                        current configuration
  --type <type>         A telemetry type to report. Options:
                        APPLICATION_TELEMETRY, CPU_UTILIZATION, GPU_FB_USED,
                        GPU_FI_PROF_DRAM_ACTIVE, GPU_FI_PROF_PCIE_RX_BYTES,
                        GPU_FI_PROF_PCIE_TX_BYTES,
                        GPU_FI_PROF_PIPE_TENSOR_ACTIVE,
                        GPU_NVLINK_BANDWIDTH_TOTAL, GPU_POWER_USAGE,
                        GPU_UTILIZATION, MEM_UTILIZATION. Default: None
```

### How to view default telemetry? [¶](\#how-to-view-default-telemetry "Permalink to this headline")

Note: This case shows a 2-GPU configuration (--instance dgx1v.16g.2.norm)

```
$ ngc base-command job telemetry --interval-time 90 --interval-unit HOUR 1120624
+-----------------------------------+----------------------+-----------------------+
| Name                              | Time                 | Measurement           |
+-----------------------------------+----------------------+-----------------------+
| ngcjob_appmetrics_job_rate        | 2020-05-04T06:00:00Z | 351.479144517938      |
| ngcjob_appmetrics_job_rate        | 2020-05-08T00:00:00Z | 372.21862476360195    |
| ngcjob_appmetrics_learn_rate      | 2020-05-04T06:00:00Z | 0.7806435847527863    |
| ngcjob_appmetrics_learn_rate      | 2020-05-08T00:00:00Z | 0.019446378715977816  |
| ngcjob_appmetrics_num_epochs      | 2020-05-04T06:00:00Z | 38.453847984087396    |
| ngcjob_appmetrics_num_epochs      | 2020-05-08T00:00:00Z | 81.39723414001247     |
| ngcjob_appmetrics_loss            | 2020-05-04T06:00:00Z | 2.6386090555393493    |
| ngcjob_appmetrics_loss            | 2020-05-08T00:00:00Z | 1.356071743548495     |
| ngcjob_appmetrics_total_loss      | 2020-05-04T06:00:00Z | 4.068851139706283     |
| ngcjob_appmetrics_total_loss      | 2020-05-08T00:00:00Z | 1.9573122789348445    |
| GPU_UTILIZATION                   | 2020-05-04T06:00:00Z | 18.253698644530818    |
| GPU_UTILIZATION                   | 2020-05-08T00:00:00Z | 19.78424418604651     |
| GPU_UTILIZATION_gpu_5             | 2020-05-04T06:00:00Z | 36.45377190221379     |
| GPU_UTILIZATION_gpu_5             | 2020-05-08T00:00:00Z | 39.70700116686115     |
| GPU_UTILIZATION_gpu_6             | 2020-05-04T06:00:00Z | 0.0                   |
| GPU_UTILIZATION_gpu_6             | 2020-05-08T00:00:00Z | 0.0                   |
| GPU_FI_PROF_PIPE_TENSOR_ACTIVE    | 2020-05-04T06:00:00Z | 5.0732140045141945    |
| GPU_FI_PROF_PIPE_TENSOR_ACTIVE    | 2020-05-08T00:00:00Z | 5.531902552204171     |
| GPU_FI_PROF_PIPE_TENSOR_ACTIVE_gp | 2020-05-04T06:00:00Z | 10.155490175475455    |
| u_5                               |                      |                       |
| GPU_FI_PROF_PIPE_TENSOR_ACTIVE_gp | 2020-05-08T00:00:00Z | 11.076655052264798    |
| u_5                               |                      |                       |
| GPU_FI_PROF_PIPE_TENSOR_ACTIVE_gp | 2020-05-04T06:00:00Z | 0.0                   |
| u_6                               |                      |                       |
| GPU_FI_PROF_PIPE_TENSOR_ACTIVE_gp | 2020-05-08T00:00:00Z | 0.0                   |
| u_6                               |                      |                       |
| GPU_FI_PROF_DRAM_ACTIVE           | 2020-05-04T06:00:00Z | 8.480215505913197     |
| GPU_FI_PROF_DRAM_ACTIVE           | 2020-05-08T00:00:00Z | 9.223577235772378     |
| GPU_FI_PROF_DRAM_ACTIVE_gpu_5     | 2020-05-04T06:00:00Z | 16.963105877404956    |
| GPU_FI_PROF_DRAM_ACTIVE_gpu_5     | 2020-05-08T00:00:00Z | 18.46860465116283     |
| GPU_FI_PROF_DRAM_ACTIVE_gpu_6     | 2020-05-04T06:00:00Z | 0.0                   |
| GPU_FI_PROF_DRAM_ACTIVE_gpu_6     | 2020-05-08T00:00:00Z | 0.0                   |
| GPU_POWER_USAGE                   | 2020-05-04T06:00:00Z | 70.64337745072271     |
| GPU_POWER_USAGE                   | 2020-05-08T00:00:00Z | 72.78912856311828     |
| GPU_POWER_USAGE_gpu_5             | 2020-05-04T06:00:00Z | 95.24901714526119     |
| GPU_POWER_USAGE_gpu_5             | 2020-05-08T00:00:00Z | 99.43907317073177     |
| GPU_POWER_USAGE_gpu_6             | 2020-05-04T06:00:00Z | 46.06617461651623     |
| GPU_POWER_USAGE_gpu_6             | 2020-05-08T00:00:00Z | 46.04600233100266     |
| GPU_FB_USED                       | 2020-05-04T06:00:00Z | 6253.323733445449     |
| GPU_FB_USED                       | 2020-05-08T00:00:00Z | 6276.2501454333915    |
| GPU_FB_USED_gpu_5                 | 2020-05-04T06:00:00Z | 12359.62638056169     |
| GPU_FB_USED_gpu_5                 | 2020-05-08T00:00:00Z | 12361.0               |
| GPU_FB_USED_gpu_6                 | 2020-05-04T06:00:00Z | 156.0                 |
| GPU_FB_USED_gpu_6                 | 2020-05-08T00:00:00Z | 156.0                 |
| GPU_FI_PROF_PCIE_RX_BYTES         | 2020-05-04T06:00:00Z | 5.681953140065174E8   |
| GPU_FI_PROF_PCIE_RX_BYTES         | 2020-05-08T00:00:00Z | 6.240817377829639E8   |
| GPU_FI_PROF_PCIE_RX_BYTES_gpu_5   | 2020-05-04T06:00:00Z | 1.1338959633084602E9  |
| GPU_FI_PROF_PCIE_RX_BYTES_gpu_5   | 2020-05-08T00:00:00Z | 1.242978021476135E9   |
| GPU_FI_PROF_PCIE_RX_BYTES_gpu_6   | 2020-05-04T06:00:00Z | 2256750.4371780045    |
| GPU_FI_PROF_PCIE_RX_BYTES_gpu_6   | 2020-05-08T00:00:00Z | 2290032.879532164     |
| GPU_FI_PROF_PCIE_TX_BYTES         | 2020-05-04T06:00:00Z | 7.030049576372905E7   |
| GPU_FI_PROF_PCIE_TX_BYTES         | 2020-05-08T00:00:00Z | 7.68041546759744E7    |
| GPU_FI_PROF_PCIE_TX_BYTES_gpu_5   | 2020-05-04T06:00:00Z | 1.3947316406226337E8  |
| GPU_FI_PROF_PCIE_TX_BYTES_gpu_5   | 2020-05-08T00:00:00Z | 1.5263490327272728E8  |
| GPU_FI_PROF_PCIE_TX_BYTES_gpu_6   | 2020-05-04T06:00:00Z | 1222276.019745825     |
| GPU_FI_PROF_PCIE_TX_BYTES_gpu_6   | 2020-05-08T00:00:00Z | 1237624.7154471544    |
| GPU_NVLINK_BANDWIDTH_TOTAL        | 2020-05-04T06:00:00Z | 0.0                   |
| GPU_NVLINK_BANDWIDTH_TOTAL        | 2020-05-08T00:00:00Z | 0.0                   |
| GPU_NVLINK_BANDWIDTH_TOTAL_gpu_5  | 2020-05-04T06:00:00Z | 0.0                   |
| GPU_NVLINK_BANDWIDTH_TOTAL_gpu_5  | 2020-05-08T00:00:00Z | 0.0                   |
| GPU_NVLINK_BANDWIDTH_TOTAL_gpu_6  | 2020-05-04T06:00:00Z | 0.0                   |
| GPU_NVLINK_BANDWIDTH_TOTAL_gpu_6  | 2020-05-08T00:00:00Z | 0.0                   |
| CPU_UTILIZATION                   | 2020-05-08T00:00:00Z | 0.8535945500785372    |
| MEM_UTILIZATION                   | 2020-05-04T06:00:00Z | 1.0148062796099368E11 |
| MEM_UTILIZATION                   | 2020-05-08T00:00:00Z | 9.146897689060422E10  |
+-----------------------------------+----------------------+-----------------------+
```

### How to select the needed telemetry types? [¶](\#how-to-select-the-needed-telemetry-types "Permalink to this headline")

```
$ ngc base-command job telemetry --interval-time 90 --interval-unit HOUR --type GPU_POWER_USAGE
  --type APPLICATION_TELEMETRY 1120624
+-----------------------------------+----------------------+-----------------------+
| Name                              | Time                 | Measurement           |
+-----------------------------------+----------------------+-----------------------+
| GPU_UTILIZATION                   | 2020-05-04T06:00:00Z | 18.253698644530818    |
| GPU_UTILIZATION                   | 2020-05-08T00:00:00Z | 19.78424418604651     |
| GPU_UTILIZATION_gpu_5             | 2020-05-04T06:00:00Z | 36.45377190221379     |
| GPU_UTILIZATION_gpu_5             | 2020-05-08T00:00:00Z | 39.70700116686115     |
| GPU_UTILIZATION_gpu_6             | 2020-05-04T06:00:00Z | 0.0                   |
| GPU_UTILIZATION_gpu_6             | 2020-05-08T00:00:00Z | 0.0                   |
| ngcjob_appmetrics_job_rate        | 2020-05-04T06:00:00Z | 351.479144517938      |
| ngcjob_appmetrics_job_rate        | 2020-05-08T00:00:00Z | 372.21862476360195    |
| ngcjob_appmetrics_learn_rate      | 2020-05-04T06:00:00Z | 0.7806435847527863    |
| ngcjob_appmetrics_learn_rate      | 2020-05-08T00:00:00Z | 0.019446378715977816  |
| ngcjob_appmetrics_num_epochs      | 2020-05-04T06:00:00Z | 38.453847984087396    |
| ngcjob_appmetrics_num_epochs      | 2020-05-08T00:00:00Z | 81.39723414001247     |
| ngcjob_appmetrics_loss            | 2020-05-04T06:00:00Z | 2.6386090555393493    |
| ngcjob_appmetrics_loss            | 2020-05-08T00:00:00Z | 1.356071743548495     |
| ngcjob_appmetrics_total_loss      | 2020-05-04T06:00:00Z | 4.068851139706283     |
| ngcjob_appmetrics_total_loss      | 2020-05-08T00:00:00Z | 1.9573122789348445    |
+-----------------------------------+----------------------+-----------------------+
```

### How to get telemetry csv format data? [¶](\#how-to-get-telemetry-csv-format-data "Permalink to this headline")

```
$ ngc base-command job telemetry --interval-time 90 --interval-unit HOUR --format_type csv 1120624

  Time,App Metrics:job_rate,App Metrics:learn_rate,App Metrics:num_epochs,App Metrics:loss,App Metrics:total_loss,GPU_UTILIZATION,GPU_UTILIZATION_gpu_5,GPU_UTILIZATION_gpu_6,GPU_FI_PROF_PIPE_TENSOR_ACTIVE,GPU_FI_PROF_PIPE_TENSOR_ACTIVE_gpu_5,GPU_FI_PROF_PIPE_TENSOR_ACTIVE_gpu_6,GPU_FI_PROF_DRAM_ACTIVE,GPU_FI_PROF_DRAM_ACTIVE_gpu_5,GPU_FI_PROF_DRAM_ACTIVE_gpu_6,GPU_POWER_USAGE,GPU_POWER_USAGE_gpu_5,GPU_POWER_USAGE_gpu_6,GPU_FB_USED,GPU_FB_USED_gpu_5,GPU_FB_USED_gpu_6,GPU_FI_PROF_PCIE_RX_BYTES,GPU_FI_PROF_PCIE_RX_BYTES_gpu_5,GPU_FI_PROF_PCIE_RX_BYTES_gpu_6,GPU_FI_PROF_PCIE_TX_BYTES,GPU_FI_PROF_PCIE_TX_BYTES_gpu_5,GPU_FI_PROF_PCIE_TX_BYTES_gpu_6,GPU_NVLINK_BANDWIDTH_TOTAL,GPU_NVLINK_BANDWIDTH_TOTAL_gpu_5,GPU_NVLINK_BANDWIDTH_TOTAL_gpu_6,CPU_UTILIZATION,MEM_UTILIZATION
  2020-05-04T06:00:00Z,351.479144517938,0.7806435847527863,38.453847984087396,2.6386090555393493,4.068851139706283,18.253698644530818,36.45377190221379,0.0,5.0732140045141945,10.155490175475455,0.0,8.480215505913197,16.963105877404956,0.0,70.64337745072271,95.24901714526119,46.06617461651623,6253.323733445449,12359.62638056169,156.0,5.681953140065174E8,1.1338959633084602E9,2256750.4371780045,7.030049576372905E7,1.3947316406226337E8,1222276.019745825,0.0,0.0,0.0,,1.0148062796099368E11
  2020-05-08T00:00:00Z,373.13010860893604,0.018556020195032785,81.65085542400061,1.341255228094049,1.9361629716369715,19.79727223131477,39.70284463894965,0.0,5.537745098039208,11.087568157033791,0.0,9.228462377317365,18.477074235807915,0.0,72.7692570960701,99.37005337690641,46.052045951860336,6268.487725040916,12361.0,156.0,6.252954906637459E8,1.2455773122448087E9,2290148.461031833,7.701736719650654E7,1.5296292707322404E8,1237446.4907306435,0.0,0.0,0.0,0.8583701189035325,9.224660433413626E10
```

### How to get result info? [¶](\#how-to-get-result-info "Permalink to this headline")

```
$ ngc base-command result info 9999
```

### How to remove result from job? [¶](\#how-to-remove-result-from-job "Permalink to this headline")

```
$ ngc base-command result remove 9999
```

### How to download result? [¶](\#how-to-download-result "Permalink to this headline")

```
$ ngc base-command result download 9999
```

### How to create workspaces? [¶](\#how-to-create-workspaces "Permalink to this headline")

```
$ ngc base-command workspace create --ace nvidia-exmpl-1

Successfully created workspace with ID: 'e9UJrwAPTSmOQCxA'
  Workspace Information
      ID: e9UJrwAPTSmOQCxA
      Name: None
      Created By: ngccli
      Size: 0 B
      ACE: nvidia-exmpl-1
      Org: robot
      Description:
      Shared with: None
```

### How to list workspaces? [¶](\#how-to-list-workspaces "Permalink to this headline")

```
$ ngc base-command workspace list

+------------------+------------------+------------------+----------------+------------------+--------+--------------+-------+----------+
| Id               | Name             | Description      | ACE            | Creator Username | Shared | Created Date | Owned | Size     |
+------------------+------------------+------------------+----------------+------------------+--------+--------------+-------+----------+
| e9UJrwAPTSmOQCxA |                  |                  | nvidia-exmpl-1 | Amy Smith        | Yes    | 2021-02-02   | No    | 14.01 KB |
|                  |                  |                  |                |                  |        | 11:38:23 UTC |       |          |
| cizRgbYrQp7nFo   | workspace-test   |                  | nvidia-exmpl-1 | Bill Williams    | Yes    | 2021-02-19   | No    | 0 B      |
|                  |                  |                  |                |                  |        | 01:11:25 UTC |       |          |
| jHJx5rBoT3uTe-C8 | wkspc-example    |                  | nvidia-exmpl-2 | Chad Brown       | Yes    | 2020-06-04   | No    | 2.67 GB  |
|                  |                  |                  |                |                  |        | 10:09:25 UTC |       |          |
+------------------+------------------+------------------+----------------+------------------+--------+--------------+-------+----------+
```

### How to list workspaces using column arguments? [¶](\#how-to-list-workspaces-using-column-arguments "Permalink to this headline")

```
$ ngc base-command workspace list --column ace --column 'updated=Date'

+------------------------+----------------+-------------------------+
| Id                     | Ace            | Date                    |
+------------------------+----------------+-------------------------+
| e9UJrwAPTSmOQCxA       | nvidia-exmpl-1 | 2021-03-18 13:48:36 UTC |
| cizRgbYrQp7nFo         | nvidia-exmpl-1 | 2021-02-25 12:33:09 UTC |
| jHJx5rBoT3uTe-C8       | nvidia-exmpl-2 | 2020-06-04 19:42:45 UTC |
+------------------------+----------------+-------------------------+
```

### How to get workspace info? [¶](\#how-to-get-workspace-info "Permalink to this headline")

```
$ ngc base-command workspace info workspace1

----------------------------------------------------
  Workspace Information
    ID: nwJF12QPQvKkPm5aIBTTkg
    Name: workspace1
    ACE: Staging
    Org: nvidia
    Description: workspace testing
    Shared with: nvidia, nvidia/a10, nvidia/a11, nvidia/workspace_test
----------------------------------------------------
```
