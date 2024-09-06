Hello World

# Overview [](\#overview "Permalink to this headline")

NVIDIA Cloud Functions (NVCF) is a serverless API to deploy & manage AI workloads on GPUs, which provides security, scale and reliability to your workloads. The API to access the workloads is un-opinionated and supports HTTP polling, HTTP streaming & gRPC.

Cloud Functions is available via the [NGC Portal](https://ngc.nvidia.com). To gain access to Cloud Functions, talk to your NVIDIA Account Manager.

Cloud Functions is primarily suited for shorter running, preemptable workloads such as inferencing and fine-tuning.

See [Function Lifecycle](function-lifecycle.html#life-cycle) for key concepts and terminology.

## Function Types [](\#function-types "Permalink to this headline")

Cloud Functions supports two different workload and deployment types for defining functions - “Container” and “Helm Chart” function types.

The workloads are ephemeral and preemptable, so ensure you are not running long tasks, such as those spanning several hours, without expecting to save your work to the local disk.

Cloud Function models, containers, helm charts, and any additional resources are hosted by and pulled from [NGC Private Registry](https://docs.nvidia.com/ngc/gpu-cloud/ngc-private-registry-user-guide/index.html#using-ngc-registry-from-docker-command-line).

See [Function Creation](function-creation.html#function-creation) for an in-depth overview of each function type.

## Getting Started [](\#getting-started "Permalink to this headline")

The best way to get started with Cloud Functions is to follow along with the [Quickstart](quickstart.html#quick-start).

![](../_static/NVIDIA-LogoBlack.svg)![](../_static/NVIDIA-LogoWhite.svg)
