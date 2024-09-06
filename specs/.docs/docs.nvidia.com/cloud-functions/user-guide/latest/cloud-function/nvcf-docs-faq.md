Hello World

How can I join an existing Cloud Functions organization?

The NGC organization owner of the organization with the Cloud Functions product entitlement needs to add you as a user within the organization and to ensure your user has the Cloud Functions role. Refer to the [NGC Documentation](https://docs.nvidia.com/ngc/gpu-cloud/ngc-user-guide/index.html#ngc-org-owner-users).

What happens to invocations/jobs in the queue when a function is undeployed or deleted?

The corresponding queue for the function is cleared and deleted.

How can I monitor Cloud Functions for incidents?

Please feel free to subscribe to our [Status Page](https://status.ngc.nvidia.com/).

Is it expected to see functions from unknown NCA IDs/organizations while listing functions?

Yes, this is expected. Please see [Function Permissions](function-permissions.html#function-permissions).

Where should I expect my mounted model files to be located in my container?

Every function version deployed also has a corresponding queue.

Distribution of work is based on whether the function instance is “busy” or not, as soon as it’s available to receive requests, then requests are routed to it. Therefore, work is roughly balanced across all instances of a function version based on their availability.

To distribute work across all versions of a function, invoke by function ID, not by function version ID. By doing so, work is distributed evenly across both function versions. To ensure one function version is not overloaded compared to another, all function versions should have relatively equal instance counts.

![](../_static/NVIDIA-LogoBlack.svg)![](../_static/NVIDIA-LogoWhite.svg)
