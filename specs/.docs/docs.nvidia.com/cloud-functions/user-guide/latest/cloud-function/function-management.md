Hello World

### Prerequisites [](\#prerequisites "Permalink to this headline")

First, ensure that your client application is invoking your function by function ID, not function version ID. This allows the spread of requests to be even across all deployed versions of your function.

- Invocation API endpoint should be `https://api.nvcf.nvidia.com/v2/nvcf/pexec/functions/{functionID}`


### Function Update Flow (A/B Testing) [](\#function-update-flow-a-b-testing "Permalink to this headline")

1. To initiate an update, create a new version of your function, through API, UI or CLI.

2. Deploy the new version of your function. Ideally, replicate the min and max instance counts to be the same as the existing version of your function. This ensures it will successfully handle the same amount of traffic.


Note

Invocations to this function ID will now be routing to both the **new and old versions of the function after this deploy** based on function instance availability. **If you do not want this to occur, for example in order to perform some testing first, deploy a separate development function.**

1. Verify that the endpoint deployed successfully by invoking it a few times. Do any additional verification such as load testing or comparing your third party monitoring and analytics across both versions.

2. Once satisfied, to complete your update, undeploy the old version of the function. All invocations will now successfully route to the new version of the function.


![](../_static/NVIDIA-LogoBlack.svg)![](../_static/NVIDIA-LogoWhite.svg)
