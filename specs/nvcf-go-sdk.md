package nvcf // import "github.com/tmc/nvcf-go"


CONSTANTS

const FunctionResponseFunctionAPIBodyFormatCustom = shared.FunctionResponseFunctionAPIBodyFormatCustom
    This is an alias to an internal value.

const FunctionResponseFunctionAPIBodyFormatPredictV2 = shared.FunctionResponseFunctionAPIBodyFormatPredictV2
    This is an alias to an internal value.

const FunctionResponseFunctionActiveInstancesInstanceStatusActive = shared.FunctionResponseFunctionActiveInstancesInstanceStatusActive
    This is an alias to an internal value.

const FunctionResponseFunctionActiveInstancesInstanceStatusDeleted = shared.FunctionResponseFunctionActiveInstancesInstanceStatusDeleted
    This is an alias to an internal value.

const FunctionResponseFunctionActiveInstancesInstanceStatusErrored = shared.FunctionResponseFunctionActiveInstancesInstanceStatusErrored
    This is an alias to an internal value.

const FunctionResponseFunctionActiveInstancesInstanceStatusPreempted = shared.FunctionResponseFunctionActiveInstancesInstanceStatusPreempted
    This is an alias to an internal value.

const FunctionResponseFunctionFunctionTypeDefault = shared.FunctionResponseFunctionFunctionTypeDefault
    This is an alias to an internal value.

const FunctionResponseFunctionFunctionTypeStreaming = shared.FunctionResponseFunctionFunctionTypeStreaming
    This is an alias to an internal value.

const FunctionResponseFunctionHealthProtocolGRpc = shared.FunctionResponseFunctionHealthProtocolGRpc
    This is an alias to an internal value.

const FunctionResponseFunctionHealthProtocolHTTP = shared.FunctionResponseFunctionHealthProtocolHTTP
    This is an alias to an internal value.

const FunctionResponseFunctionStatusActive = shared.FunctionResponseFunctionStatusActive
    This is an alias to an internal value.

const FunctionResponseFunctionStatusDeleted = shared.FunctionResponseFunctionStatusDeleted
    This is an alias to an internal value.

const FunctionResponseFunctionStatusDeploying = shared.FunctionResponseFunctionStatusDeploying
    This is an alias to an internal value.

const FunctionResponseFunctionStatusError = shared.FunctionResponseFunctionStatusError
    This is an alias to an internal value.

const FunctionResponseFunctionStatusInactive = shared.FunctionResponseFunctionStatusInactive
    This is an alias to an internal value.

const GetQueuesResponseQueuesFunctionStatusActive = shared.GetQueuesResponseQueuesFunctionStatusActive
    This is an alias to an internal value.

const GetQueuesResponseQueuesFunctionStatusDeleted = shared.GetQueuesResponseQueuesFunctionStatusDeleted
    This is an alias to an internal value.

const GetQueuesResponseQueuesFunctionStatusDeploying = shared.GetQueuesResponseQueuesFunctionStatusDeploying
    This is an alias to an internal value.

const GetQueuesResponseQueuesFunctionStatusError = shared.GetQueuesResponseQueuesFunctionStatusError
    This is an alias to an internal value.

const GetQueuesResponseQueuesFunctionStatusInactive = shared.GetQueuesResponseQueuesFunctionStatusInactive
    This is an alias to an internal value.

const InvokeFunctionResponseStatusErrored = shared.InvokeFunctionResponseStatusErrored
    This is an alias to an internal value.

const InvokeFunctionResponseStatusFulfilled = shared.InvokeFunctionResponseStatusFulfilled
    This is an alias to an internal value.

const InvokeFunctionResponseStatusInProgress = shared.InvokeFunctionResponseStatusInProgress
    This is an alias to an internal value.

const InvokeFunctionResponseStatusPendingEvaluation = shared.InvokeFunctionResponseStatusPendingEvaluation
    This is an alias to an internal value.

const InvokeFunctionResponseStatusRejected = shared.InvokeFunctionResponseStatusRejected
    This is an alias to an internal value.


FUNCTIONS

func Bool(value bool) param.Field[bool]
    Bool is a param field helper which helps specify bools.

func F[T any](value T) param.Field[T]
    F is a param field helper used to initialize a param.Field generic struct.
    This helps specify null, zero values, and overrides, as well as normal
    values. You can read more about this in our README.

[README]: https://pkg.go.dev/github.com/tmc/nvcf-go#readme-request-fields

func FileParam(reader io.Reader, filename string, contentType string) param.Field[io.Reader]
    FileParam is a param field helper which helps files with a mime
    content-type.

func Float(value float64) param.Field[float64]
    Float is a param field helper which helps specify floats.

func Int(value int64) param.Field[int64]
    Int is a param field helper which helps specify integers. This is
    particularly helpful when specifying integer constants for fields.

func Null[T any]() param.Field[T]
    Null is a param field helper which explicitly sends null to the API.

func Raw[T any](value any) param.Field[T]
    Raw is a param field helper for specifying values for fields when the type
    you are looking to send is different from the type that is specified in
    the SDK. For example, if the type of the field is an integer, but you want
    to send a float, you could do that by setting the corresponding field with
    Raw[int](0.5).

func String(value string) param.Field[string]
    String is a param field helper which helps specify strings.


TYPES

type AssetNewParams struct {
	// Content type of the asset such image/png, image/jpeg, etc.
	ContentType param.Field[string] `json:"contentType,required"`
	// Asset description
	Description param.Field[string] `json:"description,required"`
}

func (r AssetNewParams) MarshalJSON() (data []byte, err error)

type AssetResponse struct {
	// Data Transfer Object(DTO) representing an asset
	Asset AssetResponseAsset `json:"asset"`
	JSON  assetResponseJSON  `json:"-"`
}

func (r *AssetResponse) UnmarshalJSON(data []byte) (err error)

type AssetResponseAsset struct {
	// Asset id
	AssetID string `json:"assetId" format:"uuid"`
	// Content-type specified when creating the asset
	ContentType string `json:"contentType"`
	// Description specified when creating the asset
	Description string                 `json:"description"`
	JSON        assetResponseAssetJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an asset

func (r *AssetResponseAsset) UnmarshalJSON(data []byte) (err error)

type AssetService struct {
	Options []option.RequestOption
}
    AssetService contains methods and other services that help with interacting
    with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewAssetService method instead.

func NewAssetService(opts ...option.RequestOption) (r *AssetService)
    NewAssetService generates a new service that applies the given options to
    each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

func (r *AssetService) Delete(ctx context.Context, assetID string, opts ...option.RequestOption) (err error)
    Deletes asset belonging to the current NVIDIA Cloud Account. Requires
    either a bearer token or an api-key with 'invoke_function' scope in the HTTP
    Authorization header.

func (r *AssetService) Get(ctx context.Context, assetID string, opts ...option.RequestOption) (res *AssetResponse, err error)
    Returns details for the specified asset-id belonging to the current
    NVIDIA Cloud Account. Requires either a bearer token or an api-key with
    'invoke_function' scope in the HTTP Authorization header.

func (r *AssetService) List(ctx context.Context, opts ...option.RequestOption) (res *ListAssetsResponse, err error)
    List assets owned by the current NVIDIA Cloud Account. Requires either
    a bearer token or an api-key with invoke_function scope in the HTTP
    Authorization header.

func (r *AssetService) New(ctx context.Context, body AssetNewParams, opts ...option.RequestOption) (res *CreateAssetResponse, err error)
    Creates a unique id representing an asset and a pre-signed URL to upload
    the asset artifact to AWS S3 bucket for the NVIDIA Cloud Account. Requires
    either a bearer token or an api-key with 'invoke_function' scope in the HTTP
    Authorization header.

type AuthorizationFunctionAddParams struct {
	// Data Transfer Object(DTO) representing an authorized party.
	AuthorizedParty param.Field[AuthorizationFunctionAddParamsAuthorizedParty] `json:"authorizedParty,required"`
}

func (r AuthorizationFunctionAddParams) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionAddParamsAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID param.Field[string] `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID param.Field[string] `json:"clientId"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r AuthorizationFunctionAddParamsAuthorizedParty) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionRemoveParams struct {
	// Data Transfer Object(DTO) representing an authorized party.
	AuthorizedParty param.Field[AuthorizationFunctionRemoveParamsAuthorizedParty] `json:"authorizedParty,required"`
}

func (r AuthorizationFunctionRemoveParams) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionRemoveParamsAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID param.Field[string] `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID param.Field[string] `json:"clientId"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r AuthorizationFunctionRemoveParamsAuthorizedParty) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionService struct {
	Options  []option.RequestOption
	Versions *AuthorizationFunctionVersionService
}
    AuthorizationFunctionService contains methods and other services that help
    with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewAuthorizationFunctionService method instead.

func NewAuthorizationFunctionService(opts ...option.RequestOption) (r *AuthorizationFunctionService)
    NewAuthorizationFunctionService generates a new service that applies the
    given options to each request. These options are applied after the parent
    client's options (if there is one), and before any request-specific options.

func (r *AuthorizationFunctionService) Add(ctx context.Context, functionID string, body AuthorizationFunctionAddParams, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Adds the specified NVIDIA Cloud Account to the set of authorized
    accounts that are can invoke all the versions of the specified function.
    If the specified function does not have any existing inheritable authorized
    accounts, it results in a response with status 404. If the specified
    account is already in the set of existing inheritable authorized accounts,
    it results in a response with status code 409. If a function is public, then
    Account Admin cannot perform this operation. Access to this functionality
    mandates the inclusion of a bearer token with the 'authorize_clients' scope
    in the HTTP Authorization header

func (r *AuthorizationFunctionService) Remove(ctx context.Context, functionID string, body AuthorizationFunctionRemoveParams, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Removes the specified NVIDIA Cloud Account from the set of authorized
    accounts that can invoke all the versions of the specified function.
    If the specified function does not have any existing inheritable authorized
    parties, it results in a response with status 404. Also, if the specified
    account is not in the existing set of inheritable authorized accounts,
    it results in a response with status 400. If the specified function is
    public, then Account Admin cannot perform this operation. Access to
    this functionality mandates the inclusion of a bearer token with the
    'authorize_clients' scope in the HTTP Authorization header

type AuthorizationFunctionVersionAddParams struct {
	// Data Transfer Object(DTO) representing an authorized party.
	AuthorizedParty param.Field[AuthorizationFunctionVersionAddParamsAuthorizedParty] `json:"authorizedParty,required"`
}

func (r AuthorizationFunctionVersionAddParams) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionVersionAddParamsAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID param.Field[string] `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID param.Field[string] `json:"clientId"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r AuthorizationFunctionVersionAddParamsAuthorizedParty) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionVersionRemoveParams struct {
	// Data Transfer Object(DTO) representing an authorized party.
	AuthorizedParty param.Field[AuthorizationFunctionVersionRemoveParamsAuthorizedParty] `json:"authorizedParty,required"`
}

func (r AuthorizationFunctionVersionRemoveParams) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionVersionRemoveParamsAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID param.Field[string] `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID param.Field[string] `json:"clientId"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r AuthorizationFunctionVersionRemoveParamsAuthorizedParty) MarshalJSON() (data []byte, err error)

type AuthorizationFunctionVersionService struct {
	Options []option.RequestOption
}
    AuthorizationFunctionVersionService contains methods and other services that
    help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewAuthorizationFunctionVersionService method instead.

func NewAuthorizationFunctionVersionService(opts ...option.RequestOption) (r *AuthorizationFunctionVersionService)
    NewAuthorizationFunctionVersionService generates a new service that applies
    the given options to each request. These options are applied after the
    parent client's options (if there is one), and before any request-specific
    options.

func (r *AuthorizationFunctionVersionService) Add(ctx context.Context, functionID string, functionVersionID string, body AuthorizationFunctionVersionAddParams, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Adds the specified NVIDIA Cloud Account to the set of authorized accounts
    that can invoke the specified function version. If the specified function
    version does not have any existing inheritable authorized accounts, it
    results in a response with status 404. If the specified account is already
    in the set of existing authorized accounts that are directly associated
    with the function version, it results in a response wit status code 409.
    If a function is public, then Account Admin cannot perform this operation.
    Access to this functionality mandates the inclusion of a bearer token with
    the 'authorize_clients' scope in the HTTP Authorization header

func (r *AuthorizationFunctionVersionService) Remove(ctx context.Context, functionID string, functionVersionID string, body AuthorizationFunctionVersionRemoveParams, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Removes the specified NVIDIA Cloud Account from the set of authorized
    accounts that are directly associated with specified function version. If
    the specified function version does not have any of its own(not inherited)
    authorized accounts, it results in a response with status 404. Also,
    if the specified authorized account is not in the set of existing authorized
    parties that are directly associated with the specified function version,
    it results in a response with status code 400. If the specified function
    version is public, then Account Admin cannot perform this operation.
    Access to this functionality mandates the inclusion of a bearer token with
    the 'authorize_clients' scope in the HTTP Authorization header

type AuthorizationService struct {
	Options   []option.RequestOption
	Functions *AuthorizationFunctionService
}
    AuthorizationService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewAuthorizationService method instead.

func NewAuthorizationService(opts ...option.RequestOption) (r *AuthorizationService)
    NewAuthorizationService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

type AuthorizedAccountFunctionAuthorizeParams struct {
	// Parties authorized to invoke function
	AuthorizedParties param.Field[[]AuthorizedAccountFunctionAuthorizeParamsAuthorizedParty] `json:"authorizedParties,required"`
}

func (r AuthorizedAccountFunctionAuthorizeParams) MarshalJSON() (data []byte, err error)

type AuthorizedAccountFunctionAuthorizeParamsAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID param.Field[string] `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID param.Field[string] `json:"clientId"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r AuthorizedAccountFunctionAuthorizeParamsAuthorizedParty) MarshalJSON() (data []byte, err error)

type AuthorizedAccountFunctionService struct {
	Options  []option.RequestOption
	Versions *AuthorizedAccountFunctionVersionService
}
    AuthorizedAccountFunctionService contains methods and other services that
    help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewAuthorizedAccountFunctionService method instead.

func NewAuthorizedAccountFunctionService(opts ...option.RequestOption) (r *AuthorizedAccountFunctionService)
    NewAuthorizedAccountFunctionService generates a new service that applies the
    given options to each request. These options are applied after the parent
    client's options (if there is one), and before any request-specific options.

func (r *AuthorizedAccountFunctionService) Authorize(ctx context.Context, functionID string, body AuthorizedAccountFunctionAuthorizeParams, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Authorizes additional NVIDIA Cloud Accounts to invoke any version of the
    specified function. By default, a function belongs to the NVIDIA Cloud
    Account that created it, and the credentials used for function invocation
    must reference the same NVIDIA Cloud Account. Upon invocation of this
    endpoint, any existing authorized accounts will be overwritten by the newly
    specified authorized accounts. Access to this functionality mandates the
    inclusion of a bearer token with the 'authorize_clients' scope in the HTTP
    Authorization header

func (r *AuthorizedAccountFunctionService) Delete(ctx context.Context, functionID string, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Deletes all the extra NVIDIA Cloud Accounts that were authorized to
    invoke the function and all its versions. If a function version has its
    own set of authorized accounts, those are not deleted. If the specified
    function is public, then Account Admin cannot perform this operation.
    Access to this functionality mandates the inclusion of a bearer token with
    the 'authorize_clients' scope in the HTTP Authorization header

func (r *AuthorizedAccountFunctionService) Get(ctx context.Context, functionID string, opts ...option.RequestOption) (res *ListAuthorizedPartiesResponse, err error)
    Lists NVIDIA Cloud Account IDs that are authorized to invoke any version of
    the specified function. The response includes an array showing authorized
    accounts for each version. Individual versions of a function can have their
    own authorized accounts. So, each object in the array can have different
    authorized accounts listed. Access to this functionality mandates the
    inclusion of a bearer token with the 'authorize_clients' scope in the HTTP
    Authorization header

type AuthorizedAccountFunctionVersionAuthorizeParams struct {
	// Parties authorized to invoke function
	AuthorizedParties param.Field[[]AuthorizedAccountFunctionVersionAuthorizeParamsAuthorizedParty] `json:"authorizedParties,required"`
}

func (r AuthorizedAccountFunctionVersionAuthorizeParams) MarshalJSON() (data []byte, err error)

type AuthorizedAccountFunctionVersionAuthorizeParamsAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID param.Field[string] `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID param.Field[string] `json:"clientId"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r AuthorizedAccountFunctionVersionAuthorizeParamsAuthorizedParty) MarshalJSON() (data []byte, err error)

type AuthorizedAccountFunctionVersionService struct {
	Options []option.RequestOption
}
    AuthorizedAccountFunctionVersionService contains methods and other services
    that help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewAuthorizedAccountFunctionVersionService method
    instead.

func NewAuthorizedAccountFunctionVersionService(opts ...option.RequestOption) (r *AuthorizedAccountFunctionVersionService)
    NewAuthorizedAccountFunctionVersionService generates a new service that
    applies the given options to each request. These options are applied
    after the parent client's options (if there is one), and before any
    request-specific options.

func (r *AuthorizedAccountFunctionVersionService) Authorize(ctx context.Context, functionID string, functionVersionID string, body AuthorizedAccountFunctionVersionAuthorizeParams, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Authorizes additional NVIDIA Cloud Accounts to invoke a specific function
    version. By default, a function belongs to the NVIDIA Cloud Account
    that created it, and the credentials used for function invocation must
    reference the same NVIDIA Cloud Account. Upon invocation of this endpoint,
    any existing authorized accounts will be overwritten by the newly specified
    authorized accounts. Access to this functionality mandates the inclusion of
    a bearer token with the 'authorize_clients' scope in the HTTP Authorization
    header

func (r *AuthorizedAccountFunctionVersionService) Delete(ctx context.Context, functionID string, functionVersionID string, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Deletes all the authorized accounts that are directly associated with
    the specified function version. Authorized parties that are inherited by
    the function version are not deleted. If the specified function version
    is public, then Account Admin cannot perform this operation. Access to
    this functionality mandates the inclusion of a bearer token with the
    'authorize_clients' scope in the HTTP Authorization header

func (r *AuthorizedAccountFunctionVersionService) Get(ctx context.Context, functionID string, functionVersionID string, opts ...option.RequestOption) (res *shared.AuthorizedPartiesResponse, err error)
    Gets NVIDIA Cloud Account IDs that are authorized to invoke specified
    function version. Response includes authorized accounts that were added
    specifically to the function version and the inherited authorized accounts
    that were added at the function level. Access to this functionality mandates
    the inclusion of a bearer token with the 'authorize_clients' scope in the
    HTTP Authorization header

type AuthorizedAccountService struct {
	Options   []option.RequestOption
	Functions *AuthorizedAccountFunctionService
}
    AuthorizedAccountService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewAuthorizedAccountService method instead.

func NewAuthorizedAccountService(opts ...option.RequestOption) (r *AuthorizedAccountService)
    NewAuthorizedAccountService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

type AuthorizedPartiesResponse = shared.AuthorizedPartiesResponse
    Parties authorized to invoke function

    This is an alias to an internal type.

type AuthorizedPartiesResponseFunction = shared.AuthorizedPartiesResponseFunction
    Data Transfer Object(DTO) representing a function with authorized accounts

    This is an alias to an internal type.

type AuthorizedPartiesResponseFunctionAuthorizedParty = shared.AuthorizedPartiesResponseFunctionAuthorizedParty
    Data Transfer Object(DTO) representing an authorized party.

    This is an alias to an internal type.

type Client struct {
	Options                    []option.RequestOption
	UserSecretManagement       *UserSecretManagementService
	FunctionManagement         *FunctionManagementService
	FunctionDeployment         *FunctionDeploymentService
	FunctionInvocation         *FunctionInvocationService
	EnvelopeFunctionInvocation *EnvelopeFunctionInvocationService
	Functions                  *FunctionService
	AuthorizedAccounts         *AuthorizedAccountService
	Assets                     *AssetService
	Authorizations             *AuthorizationService
	Queues                     *QueueService
	Pexec                      *PexecService
	Exec                       *ExecService
	ClusterGroups              *ClusterGroupService
}
    Client creates a struct with services and top level methods that help
    with interacting with the nvcf API. You should not instantiate this client
    directly, and instead use the NewClient method instead.

func NewClient(opts ...option.RequestOption) (r *Client)
    NewClient generates a new client with the default option read from the
    environment (NGC_CLI_API_KEY). The option passed in as arguments are applied
    after these default arguments, and all option will be passed down to the
    services and requests that this client makes.

func (r *Client) Delete(ctx context.Context, path string, params interface{}, res interface{}, opts ...option.RequestOption) error
    Delete makes a DELETE request with the given URL, params, and optionally
    deserializes to a response. See [Execute] documentation on the params and
    response.

func (r *Client) Execute(ctx context.Context, method string, path string, params interface{}, res interface{}, opts ...option.RequestOption) error
    Execute makes a request with the given context, method, URL, request params,
    response, and request options. This is useful for hitting undocumented
    endpoints while retaining the base URL, auth, retries, and other options
    from the client.

    If a byte slice or an io.Reader is supplied to params, it will be used as-is
    for the request body.

    The params is by default serialized into the body using encoding/json.
    If your type implements a MarshalJSON function, it will be used instead to
    serialize the request. If a URLQuery method is implemented, the returned
    url.Values will be used as query strings to the url.

    If your params struct uses param.Field, you must provide either
    [MarshalJSON], [URLQuery], and/or [MarshalForm] functions. It is undefined
    behavior to use a struct uses param.Field without specifying how it is
    serialized.

    Any "…Params" object defined in this library can be used as the request
    argument. Note that 'path' arguments will not be forwarded into the url.

    The response body will be deserialized into the res variable, depending on
    its type:

      - A pointer to a *http.Response is populated by the raw response.
      - A pointer to a byte array will be populated with the contents of the
        request body.
      - A pointer to any other type uses this library's default JSON decoding,
        which respects UnmarshalJSON if it is defined on the type.
      - A nil value will not read the response body.

    For even greater flexibility, see option.WithResponseInto and
    option.WithResponseBodyInto.

func (r *Client) Get(ctx context.Context, path string, params interface{}, res interface{}, opts ...option.RequestOption) error
    Get makes a GET request with the given URL, params, and optionally
    deserializes to a response. See [Execute] documentation on the params and
    response.

func (r *Client) Patch(ctx context.Context, path string, params interface{}, res interface{}, opts ...option.RequestOption) error
    Patch makes a PATCH request with the given URL, params, and optionally
    deserializes to a response. See [Execute] documentation on the params and
    response.

func (r *Client) Post(ctx context.Context, path string, params interface{}, res interface{}, opts ...option.RequestOption) error
    Post makes a POST request with the given URL, params, and optionally
    deserializes to a response. See [Execute] documentation on the params and
    response.

func (r *Client) Put(ctx context.Context, path string, params interface{}, res interface{}, opts ...option.RequestOption) error
    Put makes a PUT request with the given URL, params, and optionally
    deserializes to a response. See [Execute] documentation on the params and
    response.

type ClusterGroupService struct {
	Options []option.RequestOption
}
    ClusterGroupService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewClusterGroupService method instead.

func NewClusterGroupService(opts ...option.RequestOption) (r *ClusterGroupService)
    NewClusterGroupService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

func (r *ClusterGroupService) List(ctx context.Context, opts ...option.RequestOption) (res *ClusterGroupsResponse, err error)
    Lists Cluster Groups for the current account. The response includes
    cluster groups defined specifically in the current account and publicly
    available cluster groups such as GFN, OCI, etc. Requires a bearer token with
    'list_cluster_groups' scope in HTTP Authorization header.

type ClusterGroupsResponse struct {
	ClusterGroups []ClusterGroupsResponseClusterGroup `json:"clusterGroups"`
	JSON          clusterGroupsResponseJSON           `json:"-"`
}

func (r *ClusterGroupsResponse) UnmarshalJSON(data []byte) (err error)

type ClusterGroupsResponseClusterGroup struct {
	ID               string                                      `json:"id" format:"uuid"`
	AuthorizedNcaIDs []string                                    `json:"authorizedNcaIds"`
	Clusters         []ClusterGroupsResponseClusterGroupsCluster `json:"clusters"`
	GPUs             []ClusterGroupsResponseClusterGroupsGPU     `json:"gpus"`
	Name             string                                      `json:"name"`
	NcaID            string                                      `json:"ncaId"`
	JSON             clusterGroupsResponseClusterGroupJSON       `json:"-"`
}

func (r *ClusterGroupsResponseClusterGroup) UnmarshalJSON(data []byte) (err error)

type ClusterGroupsResponseClusterGroupsCluster struct {
	ID         string                                        `json:"id"`
	K8sVersion string                                        `json:"k8sVersion"`
	Name       string                                        `json:"name"`
	JSON       clusterGroupsResponseClusterGroupsClusterJSON `json:"-"`
}

func (r *ClusterGroupsResponseClusterGroupsCluster) UnmarshalJSON(data []byte) (err error)

type ClusterGroupsResponseClusterGroupsGPU struct {
	InstanceTypes []ClusterGroupsResponseClusterGroupsGPUsInstanceType `json:"instanceTypes"`
	Name          string                                               `json:"name"`
	JSON          clusterGroupsResponseClusterGroupsGPUJSON            `json:"-"`
}

func (r *ClusterGroupsResponseClusterGroupsGPU) UnmarshalJSON(data []byte) (err error)

type ClusterGroupsResponseClusterGroupsGPUsInstanceType struct {
	Default     bool                                                   `json:"default"`
	Description string                                                 `json:"description"`
	Name        string                                                 `json:"name"`
	JSON        clusterGroupsResponseClusterGroupsGPUsInstanceTypeJSON `json:"-"`
}

func (r *ClusterGroupsResponseClusterGroupsGPUsInstanceType) UnmarshalJSON(data []byte) (err error)

type CreateAssetResponse struct {
	// Unique id of the asset to be uploaded to AWS S3 bucket
	AssetID string `json:"assetId" format:"uuid"`
	// Content type of the asset such image/png, image/jpeg, etc.
	ContentType string `json:"contentType"`
	// Asset description to be used when uploading the asset
	Description string `json:"description"`
	// Pre-signed upload URL to upload asset
	UploadURL string                  `json:"uploadUrl" format:"url"`
	JSON      createAssetResponseJSON `json:"-"`
}
    Response body containing asset-id and the corresponding pre-signed URL to
    upload an asset of specified content-type to AWS S3 bucket.

func (r *CreateAssetResponse) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponse struct {
	// Data Transfer Object (DTO) representing a function
	Function CreateFunctionResponseFunction `json:"function,required"`
	JSON     createFunctionResponseJSON     `json:"-"`
}
    Response body for create function request.

func (r *CreateFunctionResponse) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponseFunction struct {
	// Unique function id
	ID string `json:"id,required" format:"uuid"`
	// Function creation timestamp
	CreatedAt time.Time `json:"createdAt,required" format:"date-time"`
	// Used to indicate a STREAMING function. Defaults to DEFAULT.
	FunctionType CreateFunctionResponseFunctionFunctionType `json:"functionType,required"`
	// Health endpoint for the container or helmChart
	HealthUri string `json:"healthUri,required" format:"uri"`
	// Function name
	Name string `json:"name,required"`
	// NVIDIA Cloud Account Id
	NcaID string `json:"ncaId,required"`
	// Function status
	Status CreateFunctionResponseFunctionStatus `json:"status,required"`
	// Unique function version id
	VersionID string `json:"versionId,required" format:"uuid"`
	// List of active instances for this function.
	ActiveInstances []CreateFunctionResponseFunctionActiveInstance `json:"activeInstances"`
	// Invocation request body format
	APIBodyFormat CreateFunctionResponseFunctionAPIBodyFormat `json:"apiBodyFormat"`
	// Args used to launch the container
	ContainerArgs string `json:"containerArgs"`
	// Environment settings used to launch the container
	ContainerEnvironment []CreateFunctionResponseFunctionContainerEnvironment `json:"containerEnvironment"`
	// Optional custom container
	ContainerImage string `json:"containerImage" format:"uri"`
	// Function/version description
	Description string `json:"description"`
	// Data Transfer Object(DTO) representing a function ne
	Health CreateFunctionResponseFunctionHealth `json:"health"`
	// Optional Helm Chart
	HelmChart string `json:"helmChart" format:"uri"`
	// Helm Chart Service Name specified only when helmChart property is specified
	HelmChartServiceName string `json:"helmChartServiceName"`
	// Optional port number where the inference listener is running - defaults to 8000
	// for Triton
	InferencePort int64 `json:"inferencePort"`
	// Entrypoint for invoking the container to process requests
	InferenceURL string `json:"inferenceUrl" format:"uri"`
	// Optional set of models
	Models []CreateFunctionResponseFunctionModel `json:"models"`
	// Indicates whether the function is owned by another account. If the account that
	// is being used to lookup functions happens to be authorized to invoke/list this
	// function which is owned by a different account, then this field is set to true
	// and ncaId will contain the id of the account that owns the function. Otherwise,
	// this field is not set as it defaults to false.
	OwnedByDifferentAccount bool `json:"ownedByDifferentAccount"`
	// Optional set of resources.
	Resources []CreateFunctionResponseFunctionResource `json:"resources"`
	// Optional secret names
	Secrets []string `json:"secrets"`
	// Optional set of tags. Maximum allowed number of tags per function is 64. Maximum
	// length of each tag is 128 chars.
	Tags []string                           `json:"tags"`
	JSON createFunctionResponseFunctionJSON `json:"-"`
}
    Data Transfer Object (DTO) representing a function

func (r *CreateFunctionResponseFunction) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponseFunctionAPIBodyFormat string
    Invocation request body format

const (
	CreateFunctionResponseFunctionAPIBodyFormatPredictV2 CreateFunctionResponseFunctionAPIBodyFormat = "PREDICT_V2"
	CreateFunctionResponseFunctionAPIBodyFormatCustom    CreateFunctionResponseFunctionAPIBodyFormat = "CUSTOM"
)
func (r CreateFunctionResponseFunctionAPIBodyFormat) IsKnown() bool

type CreateFunctionResponseFunctionActiveInstance struct {
	// Backend where the instance is running
	Backend string `json:"backend"`
	// Function executing on the instance
	FunctionID string `json:"functionId" format:"uuid"`
	// Function version executing on the instance
	FunctionVersionID string `json:"functionVersionId" format:"uuid"`
	// GPU name powering the instance
	GPU string `json:"gpu"`
	// Instance creation timestamp
	InstanceCreatedAt time.Time `json:"instanceCreatedAt" format:"date-time"`
	// Unique id of the instance
	InstanceID string `json:"instanceId"`
	// Instance status
	InstanceStatus CreateFunctionResponseFunctionActiveInstancesInstanceStatus `json:"instanceStatus"`
	// GPU instance-type powering the instance
	InstanceType string `json:"instanceType"`
	// Instance's last updated timestamp
	InstanceUpdatedAt time.Time `json:"instanceUpdatedAt" format:"date-time"`
	// Location such as zone name or region where the instance is running
	Location string `json:"location"`
	// NVIDIA Cloud Account Id that owns the function running on the instance
	NcaID string `json:"ncaId"`
	// SIS request-id used to launch this instance
	SisRequestID string                                           `json:"sisRequestId" format:"uuid"`
	JSON         createFunctionResponseFunctionActiveInstanceJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a spot instance

func (r *CreateFunctionResponseFunctionActiveInstance) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponseFunctionActiveInstancesInstanceStatus string
    Instance status

const (
	CreateFunctionResponseFunctionActiveInstancesInstanceStatusActive    CreateFunctionResponseFunctionActiveInstancesInstanceStatus = "ACTIVE"
	CreateFunctionResponseFunctionActiveInstancesInstanceStatusErrored   CreateFunctionResponseFunctionActiveInstancesInstanceStatus = "ERRORED"
	CreateFunctionResponseFunctionActiveInstancesInstanceStatusPreempted CreateFunctionResponseFunctionActiveInstancesInstanceStatus = "PREEMPTED"
	CreateFunctionResponseFunctionActiveInstancesInstanceStatusDeleted   CreateFunctionResponseFunctionActiveInstancesInstanceStatus = "DELETED"
)
func (r CreateFunctionResponseFunctionActiveInstancesInstanceStatus) IsKnown() bool

type CreateFunctionResponseFunctionContainerEnvironment struct {
	// Container environment key
	Key string `json:"key,required"`
	// Container environment value
	Value string                                                 `json:"value,required"`
	JSON  createFunctionResponseFunctionContainerEnvironmentJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a container environment entry

func (r *CreateFunctionResponseFunctionContainerEnvironment) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponseFunctionFunctionType string
    Used to indicate a STREAMING function. Defaults to DEFAULT.

const (
	CreateFunctionResponseFunctionFunctionTypeDefault   CreateFunctionResponseFunctionFunctionType = "DEFAULT"
	CreateFunctionResponseFunctionFunctionTypeStreaming CreateFunctionResponseFunctionFunctionType = "STREAMING"
)
func (r CreateFunctionResponseFunctionFunctionType) IsKnown() bool

type CreateFunctionResponseFunctionHealth struct {
	// Expected return status code considered as successful.
	ExpectedStatusCode int64 `json:"expectedStatusCode,required"`
	// Port number where the health listener is running
	Port int64 `json:"port,required"`
	// HTTP/gPRC protocol type for health endpoint
	Protocol CreateFunctionResponseFunctionHealthProtocol `json:"protocol,required"`
	// ISO 8601 duration string in PnDTnHnMn.nS format
	Timeout string `json:"timeout,required" format:"PnDTnHnMn.nS"`
	// Health endpoint for the container or the helmChart
	Uri  string                                   `json:"uri,required" format:"uri"`
	JSON createFunctionResponseFunctionHealthJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a function ne

func (r *CreateFunctionResponseFunctionHealth) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponseFunctionHealthProtocol string
    HTTP/gPRC protocol type for health endpoint

const (
	CreateFunctionResponseFunctionHealthProtocolHTTP CreateFunctionResponseFunctionHealthProtocol = "HTTP"
	CreateFunctionResponseFunctionHealthProtocolGRpc CreateFunctionResponseFunctionHealthProtocol = "gRPC"
)
func (r CreateFunctionResponseFunctionHealthProtocol) IsKnown() bool

type CreateFunctionResponseFunctionModel struct {
	// Artifact name
	Name string `json:"name,required"`
	// Artifact URI
	Uri string `json:"uri,required" format:"uri"`
	// Artifact version
	Version string                                  `json:"version,required"`
	JSON    createFunctionResponseFunctionModelJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an artifact

func (r *CreateFunctionResponseFunctionModel) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponseFunctionResource struct {
	// Artifact name
	Name string `json:"name,required"`
	// Artifact URI
	Uri string `json:"uri,required" format:"uri"`
	// Artifact version
	Version string                                     `json:"version,required"`
	JSON    createFunctionResponseFunctionResourceJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an artifact

func (r *CreateFunctionResponseFunctionResource) UnmarshalJSON(data []byte) (err error)

type CreateFunctionResponseFunctionStatus string
    Function status

const (
	CreateFunctionResponseFunctionStatusActive    CreateFunctionResponseFunctionStatus = "ACTIVE"
	CreateFunctionResponseFunctionStatusDeploying CreateFunctionResponseFunctionStatus = "DEPLOYING"
	CreateFunctionResponseFunctionStatusError     CreateFunctionResponseFunctionStatus = "ERROR"
	CreateFunctionResponseFunctionStatusInactive  CreateFunctionResponseFunctionStatus = "INACTIVE"
	CreateFunctionResponseFunctionStatusDeleted   CreateFunctionResponseFunctionStatus = "DELETED"
)
func (r CreateFunctionResponseFunctionStatus) IsKnown() bool

type DeploymentResponse struct {
	// Function deployment response
	Deployment DeploymentResponseDeployment `json:"deployment,required"`
	JSON       deploymentResponseJSON       `json:"-"`
}
    Function Deployment Response

func (r *DeploymentResponse) UnmarshalJSON(data []byte) (err error)

type DeploymentResponseDeployment struct {
	// Function deployment creation timestamp
	CreatedAt time.Time `json:"createdAt,required" format:"date-time"`
	// Function deployment details
	DeploymentSpecifications []DeploymentResponseDeploymentDeploymentSpecification `json:"deploymentSpecifications,required"`
	// Function id
	FunctionID string `json:"functionId,required" format:"uuid"`
	// Function name
	FunctionName string `json:"functionName,required"`
	// Function status
	FunctionStatus DeploymentResponseDeploymentFunctionStatus `json:"functionStatus,required"`
	// Function version id
	FunctionVersionID string `json:"functionVersionId,required" format:"uuid"`
	// NVIDIA Cloud Account Id
	NcaID string `json:"ncaId,required"`
	// Health info for a deployment specification is included only if there are any
	// issues/errors.
	HealthInfo []DeploymentResponseDeploymentHealthInfo `json:"healthInfo"`
	// Deprecated Request Queue URL
	RequestQueueURL string                           `json:"requestQueueUrl"`
	JSON            deploymentResponseDeploymentJSON `json:"-"`
}
    Function deployment response

func (r *DeploymentResponseDeployment) UnmarshalJSON(data []byte) (err error)

type DeploymentResponseDeploymentDeploymentSpecification struct {
	// GPU name from the cluster
	GPU string `json:"gpu,required"`
	// Instance type, based on GPU, assigned to a Worker
	InstanceType string `json:"instanceType,required"`
	// Maximum number of spot instances for the deployment
	MaxInstances int64 `json:"maxInstances,required"`
	// Minimum number of spot instances for the deployment
	MinInstances int64 `json:"minInstances,required"`
	// Specific attributes capabilities to deploy functions.
	Attributes []string `json:"attributes"`
	// List of availability-zones(or clusters) in the cluster group
	AvailabilityZones []string `json:"availabilityZones"`
	// Backend/CSP where the GPU powered instance will be launched
	Backend string `json:"backend"`
	// Specific clusters within spot instance or worker node powered by the selected
	// instance-type to deploy function.
	Clusters      []string    `json:"clusters"`
	Configuration interface{} `json:"configuration"`
	// Max request concurrency between 1 (default) and 1024.
	MaxRequestConcurrency int64 `json:"maxRequestConcurrency"`
	// Preferred order of deployment if there are several gpu specs.
	PreferredOrder int64 `json:"preferredOrder"`
	// List of regions allowed to deploy. The instance or worker node will be in one of
	// the specified geographical regions.
	Regions []string                                                `json:"regions"`
	JSON    deploymentResponseDeploymentDeploymentSpecificationJSON `json:"-"`
}
    Data Transfer Object(DTO) representing GPU specification.

func (r *DeploymentResponseDeploymentDeploymentSpecification) UnmarshalJSON(data []byte) (err error)

type DeploymentResponseDeploymentFunctionStatus string
    Function status

const (
	DeploymentResponseDeploymentFunctionStatusActive    DeploymentResponseDeploymentFunctionStatus = "ACTIVE"
	DeploymentResponseDeploymentFunctionStatusDeploying DeploymentResponseDeploymentFunctionStatus = "DEPLOYING"
	DeploymentResponseDeploymentFunctionStatusError     DeploymentResponseDeploymentFunctionStatus = "ERROR"
	DeploymentResponseDeploymentFunctionStatusInactive  DeploymentResponseDeploymentFunctionStatus = "INACTIVE"
	DeploymentResponseDeploymentFunctionStatusDeleted   DeploymentResponseDeploymentFunctionStatus = "DELETED"
)
func (r DeploymentResponseDeploymentFunctionStatus) IsKnown() bool

type DeploymentResponseDeploymentHealthInfo struct {
	// Backend/CSP where the GPU powered instance will be launched
	Backend string `json:"backend,required"`
	// Deployment error
	Error string `json:"error,required"`
	// GPU Type as per SDD
	GPU string `json:"gpu,required"`
	// Instance type
	InstanceType string `json:"instanceType"`
	// SIS Request ID
	SisRequestID string                                     `json:"sisRequestId" format:"uuid"`
	JSON         deploymentResponseDeploymentHealthInfoJSON `json:"-"`
}
    Data Transfer Object(DTO) representing deployment error

func (r *DeploymentResponseDeploymentHealthInfo) UnmarshalJSON(data []byte) (err error)

type EnvelopeFunctionInvocationFunctionInvokeEnvelopeParams struct {
	RequestBody param.Field[interface{}] `json:"requestBody,required"`
	// Data Transfer Object(DTO) representing header/address for Cloud Functions
	// processing.
	RequestHeader param.Field[EnvelopeFunctionInvocationFunctionInvokeEnvelopeParamsRequestHeader] `json:"requestHeader"`
}

func (r EnvelopeFunctionInvocationFunctionInvokeEnvelopeParams) MarshalJSON() (data []byte, err error)

type EnvelopeFunctionInvocationFunctionInvokeEnvelopeParamsRequestHeader struct {
	// List of UUIDs corresponding to the uploaded assets to be used as input for
	// executing the task.
	InputAssetReferences param.Field[[]string] `json:"inputAssetReferences" format:"uuid"`
	// Metadata used for billing/metering purposes.
	MeteringData param.Field[[]EnvelopeFunctionInvocationFunctionInvokeEnvelopeParamsRequestHeaderMeteringData] `json:"meteringData"`
	// Polling timeout duration.
	PollDurationSeconds param.Field[int64] `json:"pollDurationSeconds"`
}
    Data Transfer Object(DTO) representing header/address for Cloud Functions
    processing.

func (r EnvelopeFunctionInvocationFunctionInvokeEnvelopeParamsRequestHeader) MarshalJSON() (data []byte, err error)

type EnvelopeFunctionInvocationFunctionInvokeEnvelopeParamsRequestHeaderMeteringData struct {
	// Metering/Billing key
	Key param.Field[string] `json:"key,required"`
	// Metering/Billing value
	Value param.Field[string] `json:"value,required"`
}
    Data Transfer Object(DTO) representing a billing/metering data entry

func (r EnvelopeFunctionInvocationFunctionInvokeEnvelopeParamsRequestHeaderMeteringData) MarshalJSON() (data []byte, err error)

type EnvelopeFunctionInvocationFunctionService struct {
	Options  []option.RequestOption
	Versions *EnvelopeFunctionInvocationFunctionVersionService
}
    EnvelopeFunctionInvocationFunctionService contains methods and other
    services that help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewEnvelopeFunctionInvocationFunctionService method
    instead.

func NewEnvelopeFunctionInvocationFunctionService(opts ...option.RequestOption) (r *EnvelopeFunctionInvocationFunctionService)
    NewEnvelopeFunctionInvocationFunctionService generates a new service that
    applies the given options to each request. These options are applied
    after the parent client's options (if there is one), and before any
    request-specific options.

func (r *EnvelopeFunctionInvocationFunctionService) InvokeEnvelope(ctx context.Context, functionID string, body EnvelopeFunctionInvocationFunctionInvokeEnvelopeParams, opts ...option.RequestOption) (res *shared.InvokeFunctionResponse, err error)
    Invokes the specified function that was successfully deployed. If the
    version is not specified, any active function versions will handle the
    request. If the version is specified in the URI, then the request is
    exclusively processed by the designated version of the function. By default,
    this endpoint will block for 5 seconds. If the request is not fulfilled
    before the timeout, it's status is considered in-progress or pending and
    the response includes HTTP status code 202 with an invocation request ID,
    indicating that the client should commence polling for the result using
    the invocation request ID. Access to this endpoint mandates inclusion of
    either a bearer token or an api-key with 'invoke_function' scope in the
    HTTP Authorization header. Additionally, this endpoint has the capability
    to provide updates on the progress of the request, contingent upon the
    workload's provision of such information. In-progress responses are returned
    in order. If no in-progress response is received during polling you will
    receive the most recent in-progress response. Only the first 256 unread
    in-progress messages are kept.

type EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParams struct {
	RequestBody param.Field[interface{}] `json:"requestBody,required"`
	// Data Transfer Object(DTO) representing header/address for Cloud Functions
	// processing.
	RequestHeader param.Field[EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParamsRequestHeader] `json:"requestHeader"`
}

func (r EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParams) MarshalJSON() (data []byte, err error)

type EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParamsRequestHeader struct {
	// List of UUIDs corresponding to the uploaded assets to be used as input for
	// executing the task.
	InputAssetReferences param.Field[[]string] `json:"inputAssetReferences" format:"uuid"`
	// Metadata used for billing/metering purposes.
	MeteringData param.Field[[]EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParamsRequestHeaderMeteringData] `json:"meteringData"`
	// Polling timeout duration.
	PollDurationSeconds param.Field[int64] `json:"pollDurationSeconds"`
}
    Data Transfer Object(DTO) representing header/address for Cloud Functions
    processing.

func (r EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParamsRequestHeader) MarshalJSON() (data []byte, err error)

type EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParamsRequestHeaderMeteringData struct {
	// Metering/Billing key
	Key param.Field[string] `json:"key,required"`
	// Metering/Billing value
	Value param.Field[string] `json:"value,required"`
}
    Data Transfer Object(DTO) representing a billing/metering data entry

func (r EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParamsRequestHeaderMeteringData) MarshalJSON() (data []byte, err error)

type EnvelopeFunctionInvocationFunctionVersionService struct {
	Options []option.RequestOption
}
    EnvelopeFunctionInvocationFunctionVersionService contains methods and other
    services that help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewEnvelopeFunctionInvocationFunctionVersionService
    method instead.

func NewEnvelopeFunctionInvocationFunctionVersionService(opts ...option.RequestOption) (r *EnvelopeFunctionInvocationFunctionVersionService)
    NewEnvelopeFunctionInvocationFunctionVersionService generates a new
    service that applies the given options to each request. These options are
    applied after the parent client's options (if there is one), and before any
    request-specific options.

func (r *EnvelopeFunctionInvocationFunctionVersionService) InvokeEnvelope(ctx context.Context, functionID string, versionID string, body EnvelopeFunctionInvocationFunctionVersionInvokeEnvelopeParams, opts ...option.RequestOption) (res *shared.InvokeFunctionResponse, err error)
    Invokes the specified function that was successfully deployed. If the
    version is not specified, any active function versions will handle the
    request. If the version is specified in the URI, then the request is
    exclusively processed by the designated version of the function. By default,
    this endpoint will block for 5 seconds. If the request is not fulfilled
    before the timeout, it's status is considered in-progress or pending and
    the response includes HTTP status code 202 with an invocation request ID,
    indicating that the client should commence polling for the result using
    the invocation request ID. Access to this endpoint mandates inclusion of
    either a bearer token or an api-key with 'invoke_function' scope in the
    HTTP Authorization header. Additionally, this endpoint has the capability
    to provide updates on the progress of the request, contingent upon the
    workload's provision of such information. In-progress responses are returned
    in order. If no in-progress response is received during polling you will
    receive the most recent in-progress response. Only the first 256 unread
    in-progress messages are kept.

type EnvelopeFunctionInvocationService struct {
	Options   []option.RequestOption
	Functions *EnvelopeFunctionInvocationFunctionService
}
    EnvelopeFunctionInvocationService contains methods and other services that
    help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewEnvelopeFunctionInvocationService method instead.

func NewEnvelopeFunctionInvocationService(opts ...option.RequestOption) (r *EnvelopeFunctionInvocationService)
    NewEnvelopeFunctionInvocationService generates a new service that applies
    the given options to each request. These options are applied after the
    parent client's options (if there is one), and before any request-specific
    options.

type Error = apierror.Error

type ExecService struct {
	Options []option.RequestOption
	Status  *ExecStatusService
}
    ExecService contains methods and other services that help with interacting
    with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewExecService method instead.

func NewExecService(opts ...option.RequestOption) (r *ExecService)
    NewExecService generates a new service that applies the given options to
    each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

type ExecStatusService struct {
	Options []option.RequestOption
}
    ExecStatusService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewExecStatusService method instead.

func NewExecStatusService(opts ...option.RequestOption) (r *ExecStatusService)
    NewExecStatusService generates a new service that applies the given options
    to each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

func (r *ExecStatusService) Get(ctx context.Context, requestID string, opts ...option.RequestOption) (res *shared.InvokeFunctionResponse, err error)
    Retrieves the status of an in-progress or pending request using its
    unique invocation request ID. If the result is available, it will be
    included in the response, marking the request as fulfilled. Conversely,
    if the result is not yet available, the request is deemed pending. Access
    to this endpoint mandates inclusion of either a bearer token or an api-key
    with 'invoke_function' scope in the HTTP Authorization header. In-progress
    responses are returned in order. If no in-progress response is received
    during polling you will receive the most recent in-progress response.
    Only the first 256 unread in-progress messages are kept.

type FunctionDeploymentFunctionService struct {
	Options  []option.RequestOption
	Versions *FunctionDeploymentFunctionVersionService
}
    FunctionDeploymentFunctionService contains methods and other services that
    help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionDeploymentFunctionService method instead.

func NewFunctionDeploymentFunctionService(opts ...option.RequestOption) (r *FunctionDeploymentFunctionService)
    NewFunctionDeploymentFunctionService generates a new service that applies
    the given options to each request. These options are applied after the
    parent client's options (if there is one), and before any request-specific
    options.

type FunctionDeploymentFunctionVersionDeleteDeploymentParams struct {
	// Query param to deactivate function for graceful shutdown
	Graceful param.Field[bool] `query:"graceful"`
}

func (r FunctionDeploymentFunctionVersionDeleteDeploymentParams) URLQuery() (v url.Values)
    URLQuery serializes
    FunctionDeploymentFunctionVersionDeleteDeploymentParams's query parameters
    as `url.Values`.

type FunctionDeploymentFunctionVersionInitiateDeploymentParams struct {
	// Deployment specs with Backend, GPU, instance-type, etc. details
	DeploymentSpecifications param.Field[[]FunctionDeploymentFunctionVersionInitiateDeploymentParamsDeploymentSpecification] `json:"deploymentSpecifications,required"`
}

func (r FunctionDeploymentFunctionVersionInitiateDeploymentParams) MarshalJSON() (data []byte, err error)

type FunctionDeploymentFunctionVersionInitiateDeploymentParamsDeploymentSpecification struct {
	// GPU name from the cluster
	GPU param.Field[string] `json:"gpu,required"`
	// Instance type, based on GPU, assigned to a Worker
	InstanceType param.Field[string] `json:"instanceType,required"`
	// Maximum number of spot instances for the deployment
	MaxInstances param.Field[int64] `json:"maxInstances,required"`
	// Minimum number of spot instances for the deployment
	MinInstances param.Field[int64] `json:"minInstances,required"`
	// Specific attributes capabilities to deploy functions.
	Attributes param.Field[[]string] `json:"attributes"`
	// List of availability-zones(or clusters) in the cluster group
	AvailabilityZones param.Field[[]string] `json:"availabilityZones"`
	// Backend/CSP where the GPU powered instance will be launched
	Backend param.Field[string] `json:"backend"`
	// Specific clusters within spot instance or worker node powered by the selected
	// instance-type to deploy function.
	Clusters      param.Field[[]string]    `json:"clusters"`
	Configuration param.Field[interface{}] `json:"configuration"`
	// Max request concurrency between 1 (default) and 1024.
	MaxRequestConcurrency param.Field[int64] `json:"maxRequestConcurrency"`
	// Preferred order of deployment if there are several gpu specs.
	PreferredOrder param.Field[int64] `json:"preferredOrder"`
	// List of regions allowed to deploy. The instance or worker node will be in one of
	// the specified geographical regions.
	Regions param.Field[[]string] `json:"regions"`
}
    Data Transfer Object(DTO) representing GPU specification.

func (r FunctionDeploymentFunctionVersionInitiateDeploymentParamsDeploymentSpecification) MarshalJSON() (data []byte, err error)

type FunctionDeploymentFunctionVersionService struct {
	Options []option.RequestOption
}
    FunctionDeploymentFunctionVersionService contains methods and other services
    that help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionDeploymentFunctionVersionService method
    instead.

func NewFunctionDeploymentFunctionVersionService(opts ...option.RequestOption) (r *FunctionDeploymentFunctionVersionService)
    NewFunctionDeploymentFunctionVersionService generates a new service that
    applies the given options to each request. These options are applied
    after the parent client's options (if there is one), and before any
    request-specific options.

func (r *FunctionDeploymentFunctionVersionService) DeleteDeployment(ctx context.Context, functionID string, functionVersionID string, body FunctionDeploymentFunctionVersionDeleteDeploymentParams, opts ...option.RequestOption) (res *shared.FunctionResponse, err error)
    Deletes the deployment associated with the specified function. Upon
    deletion, any active instances will be terminated, and the function's status
    will transition to 'INACTIVE'. To undeploy a function version gracefully,
    specify 'graceful=true' query parameter, allowing current tasks to complete
    before terminating the instances. If the specified function version is
    public, then Account Admin cannot perform this operation. Access to this
    endpoint mandates a bearer token with 'deploy_function' scope in the HTTP
    Authorization header.

func (r *FunctionDeploymentFunctionVersionService) GetDeployment(ctx context.Context, functionID string, functionVersionID string, opts ...option.RequestOption) (res *DeploymentResponse, err error)
    Allows Account Admins to retrieve the deployment details of the specified
    function version. Access to this endpoint mandates a bearer token with
    'deploy_function' scope in the HTTP Authorization header.

func (r *FunctionDeploymentFunctionVersionService) InitiateDeployment(ctx context.Context, functionID string, functionVersionID string, body FunctionDeploymentFunctionVersionInitiateDeploymentParams, opts ...option.RequestOption) (res *DeploymentResponse, err error)
    Initiates deployment for the specified function version. Upon invocation
    of this endpoint, the function's status transitions to 'DEPLOYING'.
    If the specified function version is public, then Account Admin cannot
    perform this operation. Access to this endpoint mandates a bearer token with
    'deploy_function' scope in the HTTP Authorization header.

func (r *FunctionDeploymentFunctionVersionService) UpdateDeployment(ctx context.Context, functionID string, functionVersionID string, body FunctionDeploymentFunctionVersionUpdateDeploymentParams, opts ...option.RequestOption) (res *DeploymentResponse, err error)
    Updates the deployment specs of the specified function version.
    It's important to note that GPU type and backend configurations cannot
    be modified through this endpoint. If the specified function is public,
    then Account Admin cannot perform this operation. Access to this
    endpoint mandates a bearer token with 'deploy_function' scope in the HTTP
    Authorization header.

type FunctionDeploymentFunctionVersionUpdateDeploymentParams struct {
	// Deployment specs with GPU, instance-type, etc. details for update request
	DeploymentSpecifications param.Field[[]FunctionDeploymentFunctionVersionUpdateDeploymentParamsDeploymentSpecification] `json:"deploymentSpecifications,required"`
}

func (r FunctionDeploymentFunctionVersionUpdateDeploymentParams) MarshalJSON() (data []byte, err error)

type FunctionDeploymentFunctionVersionUpdateDeploymentParamsDeploymentSpecification struct {
	// GPU name from the cluster
	GPU param.Field[string] `json:"gpu,required"`
	// Instance type, based on GPU, assigned to a Worker
	InstanceType param.Field[string] `json:"instanceType,required"`
	// Maximum number of spot instances for the deployment
	MaxInstances param.Field[int64] `json:"maxInstances,required"`
	// Minimum number of spot instances for the deployment
	MinInstances param.Field[int64] `json:"minInstances,required"`
	// Max request concurrency between 1 (default) and 1024.
	MaxRequestConcurrency param.Field[int64] `json:"maxRequestConcurrency"`
}
    Data Transfer Object(DTO) representing GPU specification for Deployment
    Update case.

func (r FunctionDeploymentFunctionVersionUpdateDeploymentParamsDeploymentSpecification) MarshalJSON() (data []byte, err error)

type FunctionDeploymentService struct {
	Options   []option.RequestOption
	Functions *FunctionDeploymentFunctionService
}
    FunctionDeploymentService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionDeploymentService method instead.

func NewFunctionDeploymentService(opts ...option.RequestOption) (r *FunctionDeploymentService)
    NewFunctionDeploymentService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

type FunctionIDListParams struct {
	// Query param 'visibility' indicates the kind of functions to be included in the
	// response.
	Visibility param.Field[[]FunctionIDListParamsVisibility] `query:"visibility"`
}

func (r FunctionIDListParams) URLQuery() (v url.Values)
    URLQuery serializes FunctionIDListParams's query parameters as `url.Values`.

type FunctionIDListParamsVisibility string

const (
	FunctionIDListParamsVisibilityAuthorized FunctionIDListParamsVisibility = "authorized"
	FunctionIDListParamsVisibilityPrivate    FunctionIDListParamsVisibility = "private"
	FunctionIDListParamsVisibilityPublic     FunctionIDListParamsVisibility = "public"
)
func (r FunctionIDListParamsVisibility) IsKnown() bool

type FunctionIDService struct {
	Options []option.RequestOption
}
    FunctionIDService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionIDService method instead.

func NewFunctionIDService(opts ...option.RequestOption) (r *FunctionIDService)
    NewFunctionIDService generates a new service that applies the given options
    to each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

func (r *FunctionIDService) List(ctx context.Context, query FunctionIDListParams, opts ...option.RequestOption) (res *ListFunctionIDsResponse, err error)
    Lists ids of all the functions in the authenticated NVIDIA Cloud Account.
    Requires either a bearer token or an api-key with 'list_functions' or
    'list_functions_details' scopes in the HTTP Authorization header.

type FunctionInvocationFunctionInvokeParams struct {
	Body                     interface{}           `json:"body,required"`
	NvcfInputAssetReferences param.Field[[]string] `header:"NVCF-INPUT-ASSET-REFERENCES"`
	NvcfPollSeconds          param.Field[int64]    `header:"NVCF-POLL-SECONDS"`
}

func (r FunctionInvocationFunctionInvokeParams) MarshalJSON() (data []byte, err error)

type FunctionInvocationFunctionInvokeResponse struct {
	Char     string                                       `json:"char"`
	Direct   bool                                         `json:"direct"`
	Double   float64                                      `json:"double"`
	Float    float64                                      `json:"float"`
	Int      int64                                        `json:"int"`
	Long     int64                                        `json:"long"`
	ReadOnly bool                                         `json:"readOnly"`
	Short    int64                                        `json:"short"`
	JSON     functionInvocationFunctionInvokeResponseJSON `json:"-"`
}

func (r *FunctionInvocationFunctionInvokeResponse) UnmarshalJSON(data []byte) (err error)

type FunctionInvocationFunctionService struct {
	Options  []option.RequestOption
	Versions *FunctionInvocationFunctionVersionService
}
    FunctionInvocationFunctionService contains methods and other services that
    help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionInvocationFunctionService method instead.

func NewFunctionInvocationFunctionService(opts ...option.RequestOption) (r *FunctionInvocationFunctionService)
    NewFunctionInvocationFunctionService generates a new service that applies
    the given options to each request. These options are applied after the
    parent client's options (if there is one), and before any request-specific
    options.

func (r *FunctionInvocationFunctionService) Invoke(ctx context.Context, functionID string, params FunctionInvocationFunctionInvokeParams, opts ...option.RequestOption) (res *FunctionInvocationFunctionInvokeResponse, err error)
    Invokes the specified function that was successfully deployed. If the
    version is not specified, any active function versions will handle the
    request. If the version is specified in the URI, then the request is
    exclusively processed by the designated version of the function. By default,
    this endpoint will block for 5 seconds. If the request is not fulfilled
    before the timeout, it's status is considered in-progress or pending and
    the response includes HTTP status code 202 with an invocation request ID,
    indicating that the client should commence polling for the result using
    the invocation request ID. Access to this endpoint mandates inclusion of
    either a bearer token or an api-key with 'invoke_function' scope in the
    HTTP Authorization header. Additionally, this endpoint has the capability
    to provide updates on the progress of the request, contingent upon the
    workload's provision of such information. In-progress responses are returned
    in order. If no in-progress response is received during polling you will
    receive the most recent in-progress response. Only the first 256 unread
    in-progress messages are kept.

type FunctionInvocationFunctionVersionInvokeParams struct {
	Body                     interface{}           `json:"body,required"`
	NvcfInputAssetReferences param.Field[[]string] `header:"NVCF-INPUT-ASSET-REFERENCES"`
	NvcfPollSeconds          param.Field[int64]    `header:"NVCF-POLL-SECONDS"`
}

func (r FunctionInvocationFunctionVersionInvokeParams) MarshalJSON() (data []byte, err error)

type FunctionInvocationFunctionVersionInvokeResponse struct {
	Char     string                                              `json:"char"`
	Direct   bool                                                `json:"direct"`
	Double   float64                                             `json:"double"`
	Float    float64                                             `json:"float"`
	Int      int64                                               `json:"int"`
	Long     int64                                               `json:"long"`
	ReadOnly bool                                                `json:"readOnly"`
	Short    int64                                               `json:"short"`
	JSON     functionInvocationFunctionVersionInvokeResponseJSON `json:"-"`
}

func (r *FunctionInvocationFunctionVersionInvokeResponse) UnmarshalJSON(data []byte) (err error)

type FunctionInvocationFunctionVersionService struct {
	Options []option.RequestOption
}
    FunctionInvocationFunctionVersionService contains methods and other services
    that help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionInvocationFunctionVersionService method
    instead.

func NewFunctionInvocationFunctionVersionService(opts ...option.RequestOption) (r *FunctionInvocationFunctionVersionService)
    NewFunctionInvocationFunctionVersionService generates a new service that
    applies the given options to each request. These options are applied
    after the parent client's options (if there is one), and before any
    request-specific options.

func (r *FunctionInvocationFunctionVersionService) Invoke(ctx context.Context, functionID string, versionID string, params FunctionInvocationFunctionVersionInvokeParams, opts ...option.RequestOption) (res *FunctionInvocationFunctionVersionInvokeResponse, err error)
    Invokes the specified function that was successfully deployed. If the
    version is not specified, any active function versions will handle the
    request. If the version is specified in the URI, then the request is
    exclusively processed by the designated version of the function. By default,
    this endpoint will block for 5 seconds. If the request is not fulfilled
    before the timeout, it's status is considered in-progress or pending and
    the response includes HTTP status code 202 with an invocation request ID,
    indicating that the client should commence polling for the result using
    the invocation request ID. Access to this endpoint mandates inclusion of
    either a bearer token or an api-key with 'invoke_function' scope in the
    HTTP Authorization header. Additionally, this endpoint has the capability
    to provide updates on the progress of the request, contingent upon the
    workload's provision of such information. In-progress responses are returned
    in order. If no in-progress response is received during polling you will
    receive the most recent in-progress response. Only the first 256 unread
    in-progress messages are kept.

type FunctionInvocationService struct {
	Options   []option.RequestOption
	Functions *FunctionInvocationFunctionService
}
    FunctionInvocationService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionInvocationService method instead.

func NewFunctionInvocationService(opts ...option.RequestOption) (r *FunctionInvocationService)
    NewFunctionInvocationService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

type FunctionListParams struct {
	// Query param 'visibility' indicates the kind of functions to be included in the
	// response.
	Visibility param.Field[[]FunctionListParamsVisibility] `query:"visibility"`
}

func (r FunctionListParams) URLQuery() (v url.Values)
    URLQuery serializes FunctionListParams's query parameters as `url.Values`.

type FunctionListParamsVisibility string

const (
	FunctionListParamsVisibilityAuthorized FunctionListParamsVisibility = "authorized"
	FunctionListParamsVisibilityPrivate    FunctionListParamsVisibility = "private"
	FunctionListParamsVisibilityPublic     FunctionListParamsVisibility = "public"
)
func (r FunctionListParamsVisibility) IsKnown() bool

type FunctionManagementFunctionService struct {
	Options  []option.RequestOption
	Versions *FunctionManagementFunctionVersionService
}
    FunctionManagementFunctionService contains methods and other services that
    help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionManagementFunctionService method instead.

func NewFunctionManagementFunctionService(opts ...option.RequestOption) (r *FunctionManagementFunctionService)
    NewFunctionManagementFunctionService generates a new service that applies
    the given options to each request. These options are applied after the
    parent client's options (if there is one), and before any request-specific
    options.

type FunctionManagementFunctionVersionService struct {
	Options []option.RequestOption
}
    FunctionManagementFunctionVersionService contains methods and other services
    that help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionManagementFunctionVersionService method
    instead.

func NewFunctionManagementFunctionVersionService(opts ...option.RequestOption) (r *FunctionManagementFunctionVersionService)
    NewFunctionManagementFunctionVersionService generates a new service that
    applies the given options to each request. These options are applied
    after the parent client's options (if there is one), and before any
    request-specific options.

func (r *FunctionManagementFunctionVersionService) UpdateMetadata(ctx context.Context, functionID string, functionVersionID string, body FunctionManagementFunctionVersionUpdateMetadataParams, opts ...option.RequestOption) (res *shared.FunctionResponse, err error)
    Updates metadata, such as tags, of the specified function version within
    the authenticated NVIDIA Cloud Account. Values specified in the payload
    completely override the existing values. Requires a bearer token with
    'update_function' scope in the HTTP Authorization header.

type FunctionManagementFunctionVersionUpdateMetadataParams struct {
	// Set of tags provided by user
	Tags param.Field[[]string] `json:"tags"`
}

func (r FunctionManagementFunctionVersionUpdateMetadataParams) MarshalJSON() (data []byte, err error)

type FunctionManagementIDService struct {
	Options []option.RequestOption
}
    FunctionManagementIDService contains methods and other services that help
    with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionManagementIDService method instead.

func NewFunctionManagementIDService(opts ...option.RequestOption) (r *FunctionManagementIDService)
    NewFunctionManagementIDService generates a new service that applies the
    given options to each request. These options are applied after the parent
    client's options (if there is one), and before any request-specific options.

type FunctionManagementService struct {
	Options   []option.RequestOption
	Functions *FunctionManagementFunctionService
	IDs       *FunctionManagementIDService
}
    FunctionManagementService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionManagementService method instead.

func NewFunctionManagementService(opts ...option.RequestOption) (r *FunctionManagementService)
    NewFunctionManagementService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

type FunctionNewParams struct {
	// Entrypoint for invoking the container to process a request
	InferenceURL param.Field[string] `json:"inferenceUrl,required" format:"uri"`
	// Function name must start with lowercase/uppercase/digit and can only contain
	// lowercase, uppercase, digit, hyphen, and underscore characters
	Name param.Field[string] `json:"name,required"`
	// Invocation request body format
	APIBodyFormat param.Field[FunctionNewParamsAPIBodyFormat] `json:"apiBodyFormat"`
	// Args to be passed when launching the container
	ContainerArgs param.Field[string] `json:"containerArgs"`
	// Environment settings for launching the container
	ContainerEnvironment param.Field[[]FunctionNewParamsContainerEnvironment] `json:"containerEnvironment"`
	// Optional custom container image
	ContainerImage param.Field[string] `json:"containerImage" format:"uri"`
	// Optional function/version description
	Description param.Field[string] `json:"description"`
	// Optional function type, used to indicate a STREAMING function. Defaults to
	// DEFAULT.
	FunctionType param.Field[FunctionNewParamsFunctionType] `json:"functionType"`
	// Data Transfer Object(DTO) representing a function ne
	Health param.Field[FunctionNewParamsHealth] `json:"health"`
	// Health endpoint for the container or the helmChart
	HealthUri param.Field[string] `json:"healthUri" format:"uri"`
	// Optional Helm Chart
	HelmChart param.Field[string] `json:"helmChart" format:"uri"`
	// Helm Chart Service Name is required when helmChart property is specified
	HelmChartServiceName param.Field[string] `json:"helmChartServiceName"`
	// Optional port number where the inference listener is running. Defaults to 8000
	// for Triton.
	InferencePort param.Field[int64] `json:"inferencePort"`
	// Optional set of models
	Models param.Field[[]FunctionNewParamsModel] `json:"models"`
	// Optional set of resources
	Resources param.Field[[]FunctionNewParamsResource] `json:"resources"`
	// Optional secrets
	Secrets param.Field[[]FunctionNewParamsSecret] `json:"secrets"`
	// Optional set of tags - could be empty. Provided by user
	Tags param.Field[[]string] `json:"tags"`
}

func (r FunctionNewParams) MarshalJSON() (data []byte, err error)

type FunctionNewParamsAPIBodyFormat string
    Invocation request body format

const (
	FunctionNewParamsAPIBodyFormatPredictV2 FunctionNewParamsAPIBodyFormat = "PREDICT_V2"
	FunctionNewParamsAPIBodyFormatCustom    FunctionNewParamsAPIBodyFormat = "CUSTOM"
)
func (r FunctionNewParamsAPIBodyFormat) IsKnown() bool

type FunctionNewParamsContainerEnvironment struct {
	// Container environment key
	Key param.Field[string] `json:"key,required"`
	// Container environment value
	Value param.Field[string] `json:"value,required"`
}
    Data Transfer Object(DTO) representing a container environment entry

func (r FunctionNewParamsContainerEnvironment) MarshalJSON() (data []byte, err error)

type FunctionNewParamsFunctionType string
    Optional function type, used to indicate a STREAMING function. Defaults to
    DEFAULT.

const (
	FunctionNewParamsFunctionTypeDefault   FunctionNewParamsFunctionType = "DEFAULT"
	FunctionNewParamsFunctionTypeStreaming FunctionNewParamsFunctionType = "STREAMING"
)
func (r FunctionNewParamsFunctionType) IsKnown() bool

type FunctionNewParamsHealth struct {
	// Expected return status code considered as successful.
	ExpectedStatusCode param.Field[int64] `json:"expectedStatusCode,required"`
	// Port number where the health listener is running
	Port param.Field[int64] `json:"port,required"`
	// HTTP/gPRC protocol type for health endpoint
	Protocol param.Field[FunctionNewParamsHealthProtocol] `json:"protocol,required"`
	// ISO 8601 duration string in PnDTnHnMn.nS format
	Timeout param.Field[string] `json:"timeout,required" format:"PnDTnHnMn.nS"`
	// Health endpoint for the container or the helmChart
	Uri param.Field[string] `json:"uri,required" format:"uri"`
}
    Data Transfer Object(DTO) representing a function ne

func (r FunctionNewParamsHealth) MarshalJSON() (data []byte, err error)

type FunctionNewParamsHealthProtocol string
    HTTP/gPRC protocol type for health endpoint

const (
	FunctionNewParamsHealthProtocolHTTP FunctionNewParamsHealthProtocol = "HTTP"
	FunctionNewParamsHealthProtocolGRpc FunctionNewParamsHealthProtocol = "gRPC"
)
func (r FunctionNewParamsHealthProtocol) IsKnown() bool

type FunctionNewParamsModel struct {
	// Artifact name
	Name param.Field[string] `json:"name,required"`
	// Artifact URI
	Uri param.Field[string] `json:"uri,required" format:"uri"`
	// Artifact version
	Version param.Field[string] `json:"version,required"`
}
    Data Transfer Object(DTO) representing an artifact

func (r FunctionNewParamsModel) MarshalJSON() (data []byte, err error)

type FunctionNewParamsResource struct {
	// Artifact name
	Name param.Field[string] `json:"name,required"`
	// Artifact URI
	Uri param.Field[string] `json:"uri,required" format:"uri"`
	// Artifact version
	Version param.Field[string] `json:"version,required"`
}
    Data Transfer Object(DTO) representing an artifact

func (r FunctionNewParamsResource) MarshalJSON() (data []byte, err error)

type FunctionNewParamsSecret struct {
	// Secret name
	Name param.Field[string] `json:"name,required"`
	// Secret value
	Value param.Field[string] `json:"value,required"`
}
    Data Transfer Object(DTO) representing secret name/value pair

func (r FunctionNewParamsSecret) MarshalJSON() (data []byte, err error)

type FunctionResponse = shared.FunctionResponse
    Response body with function details

    This is an alias to an internal type.

type FunctionResponseFunction = shared.FunctionResponseFunction
    Data Transfer Object (DTO) representing a function

    This is an alias to an internal type.

type FunctionResponseFunctionAPIBodyFormat = shared.FunctionResponseFunctionAPIBodyFormat
    Invocation request body format

    This is an alias to an internal type.

type FunctionResponseFunctionActiveInstance = shared.FunctionResponseFunctionActiveInstance
    Data Transfer Object(DTO) representing a spot instance

    This is an alias to an internal type.

type FunctionResponseFunctionActiveInstancesInstanceStatus = shared.FunctionResponseFunctionActiveInstancesInstanceStatus
    Instance status

    This is an alias to an internal type.

type FunctionResponseFunctionContainerEnvironment = shared.FunctionResponseFunctionContainerEnvironment
    Data Transfer Object(DTO) representing a container environment entry

    This is an alias to an internal type.

type FunctionResponseFunctionFunctionType = shared.FunctionResponseFunctionFunctionType
    Used to indicate a STREAMING function. Defaults to DEFAULT.

    This is an alias to an internal type.

type FunctionResponseFunctionHealth = shared.FunctionResponseFunctionHealth
    Data Transfer Object(DTO) representing a function ne

    This is an alias to an internal type.

type FunctionResponseFunctionHealthProtocol = shared.FunctionResponseFunctionHealthProtocol
    HTTP/gPRC protocol type for health endpoint

    This is an alias to an internal type.

type FunctionResponseFunctionModel = shared.FunctionResponseFunctionModel
    Data Transfer Object(DTO) representing an artifact

    This is an alias to an internal type.

type FunctionResponseFunctionResource = shared.FunctionResponseFunctionResource
    Data Transfer Object(DTO) representing an artifact

    This is an alias to an internal type.

type FunctionResponseFunctionStatus = shared.FunctionResponseFunctionStatus
    Function status

    This is an alias to an internal type.

type FunctionService struct {
	Options  []option.RequestOption
	Versions *FunctionVersionService
	IDs      *FunctionIDService
}
    FunctionService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionService method instead.

func NewFunctionService(opts ...option.RequestOption) (r *FunctionService)
    NewFunctionService generates a new service that applies the given options
    to each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

func (r *FunctionService) List(ctx context.Context, query FunctionListParams, opts ...option.RequestOption) (res *ListFunctionsResponse, err error)
    Lists all the functions associated with the authenticated NVIDIA Cloud
    Account. Requires either a bearer token or an api-key with 'list_functions'
    or 'list_functions_details' scopes in the HTTP Authorization header.

func (r *FunctionService) New(ctx context.Context, body FunctionNewParams, opts ...option.RequestOption) (res *CreateFunctionResponse, err error)
    Creates a new function within the authenticated NVIDIA Cloud Account.
    Requires a bearer token with 'register_function' scope in the HTTP
    Authorization header.

type FunctionVersionGetParams struct {
	// Query param 'includeSecrets' indicates whether to include secret names for the
	// function in the response.
	IncludeSecrets param.Field[bool] `query:"includeSecrets"`
}

func (r FunctionVersionGetParams) URLQuery() (v url.Values)
    URLQuery serializes FunctionVersionGetParams's query parameters as
    `url.Values`.

type FunctionVersionNewParams struct {
	// Entrypoint for invoking the container to process a request
	InferenceURL param.Field[string] `json:"inferenceUrl,required" format:"uri"`
	// Function name must start with lowercase/uppercase/digit and can only contain
	// lowercase, uppercase, digit, hyphen, and underscore characters
	Name param.Field[string] `json:"name,required"`
	// Invocation request body format
	APIBodyFormat param.Field[FunctionVersionNewParamsAPIBodyFormat] `json:"apiBodyFormat"`
	// Args to be passed when launching the container
	ContainerArgs param.Field[string] `json:"containerArgs"`
	// Environment settings for launching the container
	ContainerEnvironment param.Field[[]FunctionVersionNewParamsContainerEnvironment] `json:"containerEnvironment"`
	// Optional custom container image
	ContainerImage param.Field[string] `json:"containerImage" format:"uri"`
	// Optional function/version description
	Description param.Field[string] `json:"description"`
	// Optional function type, used to indicate a STREAMING function. Defaults to
	// DEFAULT.
	FunctionType param.Field[FunctionVersionNewParamsFunctionType] `json:"functionType"`
	// Data Transfer Object(DTO) representing a function ne
	Health param.Field[FunctionVersionNewParamsHealth] `json:"health"`
	// Health endpoint for the container or the helmChart
	HealthUri param.Field[string] `json:"healthUri" format:"uri"`
	// Optional Helm Chart
	HelmChart param.Field[string] `json:"helmChart" format:"uri"`
	// Helm Chart Service Name is required when helmChart property is specified
	HelmChartServiceName param.Field[string] `json:"helmChartServiceName"`
	// Optional port number where the inference listener is running. Defaults to 8000
	// for Triton.
	InferencePort param.Field[int64] `json:"inferencePort"`
	// Optional set of models
	Models param.Field[[]FunctionVersionNewParamsModel] `json:"models"`
	// Optional set of resources
	Resources param.Field[[]FunctionVersionNewParamsResource] `json:"resources"`
	// Optional secrets
	Secrets param.Field[[]FunctionVersionNewParamsSecret] `json:"secrets"`
	// Optional set of tags - could be empty. Provided by user
	Tags param.Field[[]string] `json:"tags"`
}

func (r FunctionVersionNewParams) MarshalJSON() (data []byte, err error)

type FunctionVersionNewParamsAPIBodyFormat string
    Invocation request body format

const (
	FunctionVersionNewParamsAPIBodyFormatPredictV2 FunctionVersionNewParamsAPIBodyFormat = "PREDICT_V2"
	FunctionVersionNewParamsAPIBodyFormatCustom    FunctionVersionNewParamsAPIBodyFormat = "CUSTOM"
)
func (r FunctionVersionNewParamsAPIBodyFormat) IsKnown() bool

type FunctionVersionNewParamsContainerEnvironment struct {
	// Container environment key
	Key param.Field[string] `json:"key,required"`
	// Container environment value
	Value param.Field[string] `json:"value,required"`
}
    Data Transfer Object(DTO) representing a container environment entry

func (r FunctionVersionNewParamsContainerEnvironment) MarshalJSON() (data []byte, err error)

type FunctionVersionNewParamsFunctionType string
    Optional function type, used to indicate a STREAMING function. Defaults to
    DEFAULT.

const (
	FunctionVersionNewParamsFunctionTypeDefault   FunctionVersionNewParamsFunctionType = "DEFAULT"
	FunctionVersionNewParamsFunctionTypeStreaming FunctionVersionNewParamsFunctionType = "STREAMING"
)
func (r FunctionVersionNewParamsFunctionType) IsKnown() bool

type FunctionVersionNewParamsHealth struct {
	// Expected return status code considered as successful.
	ExpectedStatusCode param.Field[int64] `json:"expectedStatusCode,required"`
	// Port number where the health listener is running
	Port param.Field[int64] `json:"port,required"`
	// HTTP/gPRC protocol type for health endpoint
	Protocol param.Field[FunctionVersionNewParamsHealthProtocol] `json:"protocol,required"`
	// ISO 8601 duration string in PnDTnHnMn.nS format
	Timeout param.Field[string] `json:"timeout,required" format:"PnDTnHnMn.nS"`
	// Health endpoint for the container or the helmChart
	Uri param.Field[string] `json:"uri,required" format:"uri"`
}
    Data Transfer Object(DTO) representing a function ne

func (r FunctionVersionNewParamsHealth) MarshalJSON() (data []byte, err error)

type FunctionVersionNewParamsHealthProtocol string
    HTTP/gPRC protocol type for health endpoint

const (
	FunctionVersionNewParamsHealthProtocolHTTP FunctionVersionNewParamsHealthProtocol = "HTTP"
	FunctionVersionNewParamsHealthProtocolGRpc FunctionVersionNewParamsHealthProtocol = "gRPC"
)
func (r FunctionVersionNewParamsHealthProtocol) IsKnown() bool

type FunctionVersionNewParamsModel struct {
	// Artifact name
	Name param.Field[string] `json:"name,required"`
	// Artifact URI
	Uri param.Field[string] `json:"uri,required" format:"uri"`
	// Artifact version
	Version param.Field[string] `json:"version,required"`
}
    Data Transfer Object(DTO) representing an artifact

func (r FunctionVersionNewParamsModel) MarshalJSON() (data []byte, err error)

type FunctionVersionNewParamsResource struct {
	// Artifact name
	Name param.Field[string] `json:"name,required"`
	// Artifact URI
	Uri param.Field[string] `json:"uri,required" format:"uri"`
	// Artifact version
	Version param.Field[string] `json:"version,required"`
}
    Data Transfer Object(DTO) representing an artifact

func (r FunctionVersionNewParamsResource) MarshalJSON() (data []byte, err error)

type FunctionVersionNewParamsSecret struct {
	// Secret name
	Name param.Field[string] `json:"name,required"`
	// Secret value
	Value param.Field[string] `json:"value,required"`
}
    Data Transfer Object(DTO) representing secret name/value pair

func (r FunctionVersionNewParamsSecret) MarshalJSON() (data []byte, err error)

type FunctionVersionService struct {
	Options []option.RequestOption
}
    FunctionVersionService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewFunctionVersionService method instead.

func NewFunctionVersionService(opts ...option.RequestOption) (r *FunctionVersionService)
    NewFunctionVersionService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

func (r *FunctionVersionService) Delete(ctx context.Context, functionID string, functionVersionID string, opts ...option.RequestOption) (err error)
    Deletes the specified function version in the authenticated NVIDIA Cloud
    Account. Requires a bearer token with 'delete_function' scope in the HTTP
    Authorization header. If the function version is public, then Account Admin
    cannot delete the function.

func (r *FunctionVersionService) Get(ctx context.Context, functionID string, functionVersionID string, query FunctionVersionGetParams, opts ...option.RequestOption) (res *shared.FunctionResponse, err error)
    Retrieves detailed information of the specified function version in the
    authenticated NVIDIA Cloud Account. Requires either a bearer token or an
    api-key with 'list_functions' or 'list_functions_details' scopes in the HTTP
    Authorization header.

func (r *FunctionVersionService) List(ctx context.Context, functionID string, opts ...option.RequestOption) (res *ListFunctionsResponse, err error)
    Lists details of all the versions of the specified function in the
    authenticated NVIDIA Cloud Account. Requires either a bearer token or an
    api-key with 'list_functions' or 'list_functions_details' scopes in the HTTP
    Authorization header.

func (r *FunctionVersionService) New(ctx context.Context, functionID string, body FunctionVersionNewParams, opts ...option.RequestOption) (res *CreateFunctionResponse, err error)
    Creates a version of the specified function within the authenticated NVIDIA
    Cloud Account. Requires a bearer token with 'register_function' scope in the
    HTTP Authorization header.

type GetPositionInQueueResponse struct {
	// Function id
	FunctionID string `json:"functionId,required" format:"uuid"`
	// Function version id
	FunctionVersionID string `json:"functionVersionId,required" format:"uuid"`
	// Position of request in queue
	PositionInQueue int64                          `json:"positionInQueue"`
	JSON            getPositionInQueueResponseJSON `json:"-"`
}
    Request position in queue for invocation request

func (r *GetPositionInQueueResponse) UnmarshalJSON(data []byte) (err error)

type GetQueuesResponse = shared.GetQueuesResponse
    Request queue details of all the functions with same id in an account

    This is an alias to an internal type.

type GetQueuesResponseQueue = shared.GetQueuesResponseQueue
    Data Transfer Object(DTO) representing a request queue for function version

    This is an alias to an internal type.

type GetQueuesResponseQueuesFunctionStatus = shared.GetQueuesResponseQueuesFunctionStatus
    Function status

    This is an alias to an internal type.

type InvokeFunctionResponse = shared.InvokeFunctionResponse
    Response body with result from a request for executing a job/task as a cloud
    function using a GPU powered spot/on-demand instance.

    This is an alias to an internal type.

type InvokeFunctionResponseStatus = shared.InvokeFunctionResponseStatus
    Status of the task/job executing cloud function.

    This is an alias to an internal type.

type ListAssetsResponse struct {
	// List of assets uploaded for the nca id
	Assets []ListAssetsResponseAsset `json:"assets"`
	JSON   listAssetsResponseJSON    `json:"-"`
}
    Response body containing list of assets of the current nca id

func (r *ListAssetsResponse) UnmarshalJSON(data []byte) (err error)

type ListAssetsResponseAsset struct {
	// Asset id
	AssetID string `json:"assetId" format:"uuid"`
	// Content-type specified when creating the asset
	ContentType string `json:"contentType"`
	// Description specified when creating the asset
	Description string                      `json:"description"`
	JSON        listAssetsResponseAssetJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an asset

func (r *ListAssetsResponseAsset) UnmarshalJSON(data []byte) (err error)

type ListAuthorizedPartiesResponse struct {
	// Functions with authorized parties and other details
	Functions []ListAuthorizedPartiesResponseFunction `json:"functions,required"`
	JSON      listAuthorizedPartiesResponseJSON       `json:"-"`
}
    Parties authorized to invoke function

func (r *ListAuthorizedPartiesResponse) UnmarshalJSON(data []byte) (err error)

type ListAuthorizedPartiesResponseFunction struct {
	// Function id
	ID string `json:"id,required" format:"uuid"`
	// NVIDIA Cloud Account Id
	NcaID string `json:"ncaId,required"`
	// Authorized parties allowed to invoke the function
	AuthorizedParties []ListAuthorizedPartiesResponseFunctionsAuthorizedParty `json:"authorizedParties"`
	// Function version id
	VersionID string                                    `json:"versionId" format:"uuid"`
	JSON      listAuthorizedPartiesResponseFunctionJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a function with authorized accounts

func (r *ListAuthorizedPartiesResponseFunction) UnmarshalJSON(data []byte) (err error)

type ListAuthorizedPartiesResponseFunctionsAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID string `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID string                                                    `json:"clientId"`
	JSON     listAuthorizedPartiesResponseFunctionsAuthorizedPartyJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r *ListAuthorizedPartiesResponseFunctionsAuthorizedParty) UnmarshalJSON(data []byte) (err error)

type ListFunctionIDsResponse struct {
	// List of function ids
	FunctionIDs []string                    `json:"functionIds,required" format:"uuid"`
	JSON        listFunctionIDsResponseJSON `json:"-"`
}
    Response body containing list of function ids in an account

func (r *ListFunctionIDsResponse) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponse struct {
	// List of functions
	Functions []ListFunctionsResponseFunction `json:"functions,required"`
	JSON      listFunctionsResponseJSON       `json:"-"`
}
    Response body containing list of functions

func (r *ListFunctionsResponse) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponseFunction struct {
	// Unique function id
	ID string `json:"id,required" format:"uuid"`
	// Function creation timestamp
	CreatedAt time.Time `json:"createdAt,required" format:"date-time"`
	// Used to indicate a STREAMING function. Defaults to DEFAULT.
	FunctionType ListFunctionsResponseFunctionsFunctionType `json:"functionType,required"`
	// Health endpoint for the container or helmChart
	HealthUri string `json:"healthUri,required" format:"uri"`
	// Function name
	Name string `json:"name,required"`
	// NVIDIA Cloud Account Id
	NcaID string `json:"ncaId,required"`
	// Function status
	Status ListFunctionsResponseFunctionsStatus `json:"status,required"`
	// Unique function version id
	VersionID string `json:"versionId,required" format:"uuid"`
	// List of active instances for this function.
	ActiveInstances []ListFunctionsResponseFunctionsActiveInstance `json:"activeInstances"`
	// Invocation request body format
	APIBodyFormat ListFunctionsResponseFunctionsAPIBodyFormat `json:"apiBodyFormat"`
	// Args used to launch the container
	ContainerArgs string `json:"containerArgs"`
	// Environment settings used to launch the container
	ContainerEnvironment []ListFunctionsResponseFunctionsContainerEnvironment `json:"containerEnvironment"`
	// Optional custom container
	ContainerImage string `json:"containerImage" format:"uri"`
	// Function/version description
	Description string `json:"description"`
	// Data Transfer Object(DTO) representing a function ne
	Health ListFunctionsResponseFunctionsHealth `json:"health"`
	// Optional Helm Chart
	HelmChart string `json:"helmChart" format:"uri"`
	// Helm Chart Service Name specified only when helmChart property is specified
	HelmChartServiceName string `json:"helmChartServiceName"`
	// Optional port number where the inference listener is running - defaults to 8000
	// for Triton
	InferencePort int64 `json:"inferencePort"`
	// Entrypoint for invoking the container to process requests
	InferenceURL string `json:"inferenceUrl" format:"uri"`
	// Optional set of models
	Models []ListFunctionsResponseFunctionsModel `json:"models"`
	// Indicates whether the function is owned by another account. If the account that
	// is being used to lookup functions happens to be authorized to invoke/list this
	// function which is owned by a different account, then this field is set to true
	// and ncaId will contain the id of the account that owns the function. Otherwise,
	// this field is not set as it defaults to false.
	OwnedByDifferentAccount bool `json:"ownedByDifferentAccount"`
	// Optional set of resources.
	Resources []ListFunctionsResponseFunctionsResource `json:"resources"`
	// Optional secret names
	Secrets []string `json:"secrets"`
	// Optional set of tags. Maximum allowed number of tags per function is 64. Maximum
	// length of each tag is 128 chars.
	Tags []string                          `json:"tags"`
	JSON listFunctionsResponseFunctionJSON `json:"-"`
}
    Data Transfer Object (DTO) representing a function

func (r *ListFunctionsResponseFunction) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponseFunctionsAPIBodyFormat string
    Invocation request body format

const (
	ListFunctionsResponseFunctionsAPIBodyFormatPredictV2 ListFunctionsResponseFunctionsAPIBodyFormat = "PREDICT_V2"
	ListFunctionsResponseFunctionsAPIBodyFormatCustom    ListFunctionsResponseFunctionsAPIBodyFormat = "CUSTOM"
)
func (r ListFunctionsResponseFunctionsAPIBodyFormat) IsKnown() bool

type ListFunctionsResponseFunctionsActiveInstance struct {
	// Backend where the instance is running
	Backend string `json:"backend"`
	// Function executing on the instance
	FunctionID string `json:"functionId" format:"uuid"`
	// Function version executing on the instance
	FunctionVersionID string `json:"functionVersionId" format:"uuid"`
	// GPU name powering the instance
	GPU string `json:"gpu"`
	// Instance creation timestamp
	InstanceCreatedAt time.Time `json:"instanceCreatedAt" format:"date-time"`
	// Unique id of the instance
	InstanceID string `json:"instanceId"`
	// Instance status
	InstanceStatus ListFunctionsResponseFunctionsActiveInstancesInstanceStatus `json:"instanceStatus"`
	// GPU instance-type powering the instance
	InstanceType string `json:"instanceType"`
	// Instance's last updated timestamp
	InstanceUpdatedAt time.Time `json:"instanceUpdatedAt" format:"date-time"`
	// Location such as zone name or region where the instance is running
	Location string `json:"location"`
	// NVIDIA Cloud Account Id that owns the function running on the instance
	NcaID string `json:"ncaId"`
	// SIS request-id used to launch this instance
	SisRequestID string                                           `json:"sisRequestId" format:"uuid"`
	JSON         listFunctionsResponseFunctionsActiveInstanceJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a spot instance

func (r *ListFunctionsResponseFunctionsActiveInstance) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponseFunctionsActiveInstancesInstanceStatus string
    Instance status

const (
	ListFunctionsResponseFunctionsActiveInstancesInstanceStatusActive    ListFunctionsResponseFunctionsActiveInstancesInstanceStatus = "ACTIVE"
	ListFunctionsResponseFunctionsActiveInstancesInstanceStatusErrored   ListFunctionsResponseFunctionsActiveInstancesInstanceStatus = "ERRORED"
	ListFunctionsResponseFunctionsActiveInstancesInstanceStatusPreempted ListFunctionsResponseFunctionsActiveInstancesInstanceStatus = "PREEMPTED"
	ListFunctionsResponseFunctionsActiveInstancesInstanceStatusDeleted   ListFunctionsResponseFunctionsActiveInstancesInstanceStatus = "DELETED"
)
func (r ListFunctionsResponseFunctionsActiveInstancesInstanceStatus) IsKnown() bool

type ListFunctionsResponseFunctionsContainerEnvironment struct {
	// Container environment key
	Key string `json:"key,required"`
	// Container environment value
	Value string                                                 `json:"value,required"`
	JSON  listFunctionsResponseFunctionsContainerEnvironmentJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a container environment entry

func (r *ListFunctionsResponseFunctionsContainerEnvironment) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponseFunctionsFunctionType string
    Used to indicate a STREAMING function. Defaults to DEFAULT.

const (
	ListFunctionsResponseFunctionsFunctionTypeDefault   ListFunctionsResponseFunctionsFunctionType = "DEFAULT"
	ListFunctionsResponseFunctionsFunctionTypeStreaming ListFunctionsResponseFunctionsFunctionType = "STREAMING"
)
func (r ListFunctionsResponseFunctionsFunctionType) IsKnown() bool

type ListFunctionsResponseFunctionsHealth struct {
	// Expected return status code considered as successful.
	ExpectedStatusCode int64 `json:"expectedStatusCode,required"`
	// Port number where the health listener is running
	Port int64 `json:"port,required"`
	// HTTP/gPRC protocol type for health endpoint
	Protocol ListFunctionsResponseFunctionsHealthProtocol `json:"protocol,required"`
	// ISO 8601 duration string in PnDTnHnMn.nS format
	Timeout string `json:"timeout,required" format:"PnDTnHnMn.nS"`
	// Health endpoint for the container or the helmChart
	Uri  string                                   `json:"uri,required" format:"uri"`
	JSON listFunctionsResponseFunctionsHealthJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a function ne

func (r *ListFunctionsResponseFunctionsHealth) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponseFunctionsHealthProtocol string
    HTTP/gPRC protocol type for health endpoint

const (
	ListFunctionsResponseFunctionsHealthProtocolHTTP ListFunctionsResponseFunctionsHealthProtocol = "HTTP"
	ListFunctionsResponseFunctionsHealthProtocolGRpc ListFunctionsResponseFunctionsHealthProtocol = "gRPC"
)
func (r ListFunctionsResponseFunctionsHealthProtocol) IsKnown() bool

type ListFunctionsResponseFunctionsModel struct {
	// Artifact name
	Name string `json:"name,required"`
	// Artifact URI
	Uri string `json:"uri,required" format:"uri"`
	// Artifact version
	Version string                                  `json:"version,required"`
	JSON    listFunctionsResponseFunctionsModelJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an artifact

func (r *ListFunctionsResponseFunctionsModel) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponseFunctionsResource struct {
	// Artifact name
	Name string `json:"name,required"`
	// Artifact URI
	Uri string `json:"uri,required" format:"uri"`
	// Artifact version
	Version string                                     `json:"version,required"`
	JSON    listFunctionsResponseFunctionsResourceJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an artifact

func (r *ListFunctionsResponseFunctionsResource) UnmarshalJSON(data []byte) (err error)

type ListFunctionsResponseFunctionsStatus string
    Function status

const (
	ListFunctionsResponseFunctionsStatusActive    ListFunctionsResponseFunctionsStatus = "ACTIVE"
	ListFunctionsResponseFunctionsStatusDeploying ListFunctionsResponseFunctionsStatus = "DEPLOYING"
	ListFunctionsResponseFunctionsStatusError     ListFunctionsResponseFunctionsStatus = "ERROR"
	ListFunctionsResponseFunctionsStatusInactive  ListFunctionsResponseFunctionsStatus = "INACTIVE"
	ListFunctionsResponseFunctionsStatusDeleted   ListFunctionsResponseFunctionsStatus = "DELETED"
)
func (r ListFunctionsResponseFunctionsStatus) IsKnown() bool

type PexecService struct {
	Options []option.RequestOption
	Status  *PexecStatusService
}
    PexecService contains methods and other services that help with interacting
    with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewPexecService method instead.

func NewPexecService(opts ...option.RequestOption) (r *PexecService)
    NewPexecService generates a new service that applies the given options to
    each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

type PexecStatusGetParams struct {
	NvcfPollSeconds param.Field[int64] `header:"NVCF-POLL-SECONDS"`
}

type PexecStatusGetResponse struct {
	Char     string                     `json:"char"`
	Direct   bool                       `json:"direct"`
	Double   float64                    `json:"double"`
	Float    float64                    `json:"float"`
	Int      int64                      `json:"int"`
	Long     int64                      `json:"long"`
	ReadOnly bool                       `json:"readOnly"`
	Short    int64                      `json:"short"`
	JSON     pexecStatusGetResponseJSON `json:"-"`
}

func (r *PexecStatusGetResponse) UnmarshalJSON(data []byte) (err error)

type PexecStatusService struct {
	Options []option.RequestOption
}
    PexecStatusService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewPexecStatusService method instead.

func NewPexecStatusService(opts ...option.RequestOption) (r *PexecStatusService)
    NewPexecStatusService generates a new service that applies the given options
    to each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

func (r *PexecStatusService) Get(ctx context.Context, requestID string, query PexecStatusGetParams, opts ...option.RequestOption) (res *PexecStatusGetResponse, err error)
    Retrieves the status of an in-progress or pending request using its
    unique invocation request ID. If the result is available, it will be
    included in the response, marking the request as fulfilled. Conversely,
    if the result is not yet available, the request is deemed pending. Access
    to this endpoint mandates inclusion of either a bearer token or an api-key
    with 'invoke_function' scope in the HTTP Authorization header. In-progress
    responses are returned in order. If no in-progress response is received
    during polling you will receive the most recent in-progress response.
    Only the first 256 unread in-progress messages are kept.

type QueueFunctionService struct {
	Options  []option.RequestOption
	Versions *QueueFunctionVersionService
}
    QueueFunctionService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewQueueFunctionService method instead.

func NewQueueFunctionService(opts ...option.RequestOption) (r *QueueFunctionService)
    NewQueueFunctionService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

func (r *QueueFunctionService) List(ctx context.Context, functionID string, opts ...option.RequestOption) (res *shared.GetQueuesResponse, err error)
    Provides details of all the queues associated with the specified function.
    If a function has multiple versions and they are all deployed, then the
    response includes details of all the queues. If the specified function is
    public, then Account Admin cannot perform this operation. Requires a bearer
    token or an api-key with 'queue_details' scope in the HTTP Authorization
    header.

type QueueFunctionVersionService struct {
	Options []option.RequestOption
}
    QueueFunctionVersionService contains methods and other services that help
    with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewQueueFunctionVersionService method instead.

func NewQueueFunctionVersionService(opts ...option.RequestOption) (r *QueueFunctionVersionService)
    NewQueueFunctionVersionService generates a new service that applies the
    given options to each request. These options are applied after the parent
    client's options (if there is one), and before any request-specific options.

func (r *QueueFunctionVersionService) List(ctx context.Context, functionID string, versionID string, opts ...option.RequestOption) (res *shared.GetQueuesResponse, err error)
    Provides details of all the queues associated with the specified function.
    If a function has multiple versions and they are all deployed, then the
    response includes details of all the queues. If the specified function is
    public, then Account Admin cannot perform this operation. Requires a bearer
    token or an api-key with 'queue_details' scope in the HTTP Authorization
    header.

type QueuePositionService struct {
	Options []option.RequestOption
}
    QueuePositionService contains methods and other services that help with
    interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewQueuePositionService method instead.

func NewQueuePositionService(opts ...option.RequestOption) (r *QueuePositionService)
    NewQueuePositionService generates a new service that applies the given
    options to each request. These options are applied after the parent client's
    options (if there is one), and before any request-specific options.

func (r *QueuePositionService) Get(ctx context.Context, requestID string, opts ...option.RequestOption) (res *GetPositionInQueueResponse, err error)
    Using the specified function invocation request id, returns the estimated
    position of the corresponding message up to 1000 in the queue. Requires
    a bearer token or an api-key with 'queue_details' scope in the HTTP
    Authorization header.

type QueueService struct {
	Options   []option.RequestOption
	Functions *QueueFunctionService
	Position  *QueuePositionService
}
    QueueService contains methods and other services that help with interacting
    with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewQueueService method instead.

func NewQueueService(opts ...option.RequestOption) (r *QueueService)
    NewQueueService generates a new service that applies the given options to
    each request. These options are applied after the parent client's options
    (if there is one), and before any request-specific options.

type UserSecretManagementFunctionService struct {
	Options  []option.RequestOption
	Versions *UserSecretManagementFunctionVersionService
}
    UserSecretManagementFunctionService contains methods and other services that
    help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewUserSecretManagementFunctionService method instead.

func NewUserSecretManagementFunctionService(opts ...option.RequestOption) (r *UserSecretManagementFunctionService)
    NewUserSecretManagementFunctionService generates a new service that applies
    the given options to each request. These options are applied after the
    parent client's options (if there is one), and before any request-specific
    options.

type UserSecretManagementFunctionVersionService struct {
	Options []option.RequestOption
}
    UserSecretManagementFunctionVersionService contains methods and other
    services that help with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewUserSecretManagementFunctionVersionService method
    instead.

func NewUserSecretManagementFunctionVersionService(opts ...option.RequestOption) (r *UserSecretManagementFunctionVersionService)
    NewUserSecretManagementFunctionVersionService generates a new service
    that applies the given options to each request. These options are applied
    after the parent client's options (if there is one), and before any
    request-specific options.

func (r *UserSecretManagementFunctionVersionService) UpdateSecrets(ctx context.Context, functionID string, versionID string, body UserSecretManagementFunctionVersionUpdateSecretsParams, opts ...option.RequestOption) (err error)
    Updates secrets for the specified function version. This endpoint requires
    either a bearer token or an api-key with 'update_secrets' scope in the HTTP
    Authorization header.

type UserSecretManagementFunctionVersionUpdateSecretsParams struct {
	// Secrets
	Secrets param.Field[[]UserSecretManagementFunctionVersionUpdateSecretsParamsSecret] `json:"secrets,required"`
}

func (r UserSecretManagementFunctionVersionUpdateSecretsParams) MarshalJSON() (data []byte, err error)

type UserSecretManagementFunctionVersionUpdateSecretsParamsSecret struct {
	// Secret name
	Name param.Field[string] `json:"name,required"`
	// Secret value
	Value param.Field[string] `json:"value,required"`
}
    Data Transfer Object(DTO) representing secret name/value pair

func (r UserSecretManagementFunctionVersionUpdateSecretsParamsSecret) MarshalJSON() (data []byte, err error)

type UserSecretManagementService struct {
	Options   []option.RequestOption
	Functions *UserSecretManagementFunctionService
}
    UserSecretManagementService contains methods and other services that help
    with interacting with the nvcf API.

    Note, unlike clients, this service does not read variables from the
    environment automatically. You should not instantiate this service directly,
    and instead use the NewUserSecretManagementService method instead.

func NewUserSecretManagementService(opts ...option.RequestOption) (r *UserSecretManagementService)
    NewUserSecretManagementService generates a new service that applies the
    given options to each request. These options are applied after the parent
    client's options (if there is one), and before any request-specific options.

package internal // import "github.com/tmc/nvcf-go/internal"


CONSTANTS

const PackageVersion = "0.1.0-alpha.2" // x-release-please-version
package option // import "github.com/tmc/nvcf-go/option"


TYPES

type Middleware = func(*http.Request, MiddlewareNext) (*http.Response, error)
    Middleware is a function which intercepts HTTP requests, processing or
    modifying them, and then passing the request to the next middleware or
    handler in the chain by calling the provided MiddlewareNext function.

type MiddlewareNext = func(*http.Request) (*http.Response, error)
    MiddlewareNext is a function which is called by a middleware to pass an HTTP
    request to the next stage in the middleware chain.

type RequestOption = func(*requestconfig.RequestConfig) error
    RequestOption is an option for the requests made by the nvcf API Client
    which can be supplied to clients, services, and methods. You can read more
    about this functional options pattern in our README.

[README]: https://pkg.go.dev/github.com/tmc/nvcf-go#readme-requestoptions

func WithAuthToken(value string) RequestOption
    WithAuthToken returns a RequestOption that sets the client setting
    "auth_token".

func WithBaseURL(base string) RequestOption
    WithBaseURL returns a RequestOption that sets the BaseURL for the client.

func WithEnvironmentProduction() RequestOption
    WithEnvironmentProduction returns a RequestOption that sets the current
    environment to be the "production" environment. An environment specifies
    which base URL to use by default.

func WithHTTPClient(client *http.Client) RequestOption
    WithHTTPClient returns a RequestOption that changes the underlying
    http.Client used to make this request, which by default is
    http.DefaultClient.

func WithHeader(key, value string) RequestOption
    WithHeader returns a RequestOption that sets the header value to the
    associated key. It overwrites any value if there was one already present.

func WithHeaderAdd(key, value string) RequestOption
    WithHeaderAdd returns a RequestOption that adds the header value to the
    associated key. It appends onto any existing values.

func WithHeaderDel(key string) RequestOption
    WithHeaderDel returns a RequestOption that deletes the header value(s)
    associated with the given key.

func WithJSONDel(key string) RequestOption
    WithJSONDel returns a RequestOption that deletes the body's JSON value
    associated with the key. The key accepts a string as defined by the sjson
    format.

[sjson format]: https://github.com/tidwall/sjson

func WithJSONSet(key string, value interface{}) RequestOption
    WithJSONSet returns a RequestOption that sets the body's JSON value
    associated with the key. The key accepts a string as defined by the sjson
    format.

[sjson format]: https://github.com/tidwall/sjson

func WithMaxRetries(retries int) RequestOption
    WithMaxRetries returns a RequestOption that sets the maximum number of
    retries that the client attempts to make. When given 0, the client only
    makes one request. By default, the client retries two times.

    WithMaxRetries panics when retries is negative.

func WithMiddleware(middlewares ...Middleware) RequestOption
    WithMiddleware returns a RequestOption that applies the given middleware
    to the requests made. Each middleware will execute in the order they were
    given.

func WithQuery(key, value string) RequestOption
    WithQuery returns a RequestOption that sets the query value to the
    associated key. It overwrites any value if there was one already present.

func WithQueryAdd(key, value string) RequestOption
    WithQueryAdd returns a RequestOption that adds the query value to the
    associated key. It appends onto any existing values.

func WithQueryDel(key string) RequestOption
    WithQueryDel returns a RequestOption that deletes the query value(s)
    associated with the key.

func WithRequestBody(contentType string, body any) RequestOption
    WithRequestBody returns a RequestOption that provides a custom serialized
    body with the given content type.

    body accepts an io.Reader or raw []bytes.

func WithRequestTimeout(dur time.Duration) RequestOption
    WithRequestTimeout returns a RequestOption that sets the timeout for each
    request attempt. This should be smaller than the timeout defined in the
    context, which spans all retries.

func WithResponseBodyInto(dst any) RequestOption
    WithResponseBodyInto returns a RequestOption that overwrites the
    deserialization target with the given destination. If provided, we don't
    deserialize into the default struct.

func WithResponseInto(dst **http.Response) RequestOption
    WithResponseInto returns a RequestOption that copies the *http.Response into
    the given address.

package shared // import "github.com/tmc/nvcf-go/shared"


TYPES

type AuthorizedPartiesResponse struct {
	// Data Transfer Object(DTO) representing a function with authorized accounts
	Function AuthorizedPartiesResponseFunction `json:"function,required"`
	JSON     authorizedPartiesResponseJSON     `json:"-"`
}
    Parties authorized to invoke function

func (r *AuthorizedPartiesResponse) UnmarshalJSON(data []byte) (err error)

type AuthorizedPartiesResponseFunction struct {
	// Function id
	ID string `json:"id,required" format:"uuid"`
	// NVIDIA Cloud Account Id
	NcaID string `json:"ncaId,required"`
	// Authorized parties allowed to invoke the function
	AuthorizedParties []AuthorizedPartiesResponseFunctionAuthorizedParty `json:"authorizedParties"`
	// Function version id
	VersionID string                                `json:"versionId" format:"uuid"`
	JSON      authorizedPartiesResponseFunctionJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a function with authorized accounts

func (r *AuthorizedPartiesResponseFunction) UnmarshalJSON(data []byte) (err error)

type AuthorizedPartiesResponseFunctionAuthorizedParty struct {
	// NVIDIA Cloud Account authorized to invoke the function
	NcaID string `json:"ncaId,required"`
	// Client Id -- 'sub' claim in the JWT. This field should not be specified anymore.
	ClientID string                                               `json:"clientId"`
	JSON     authorizedPartiesResponseFunctionAuthorizedPartyJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an authorized party.

func (r *AuthorizedPartiesResponseFunctionAuthorizedParty) UnmarshalJSON(data []byte) (err error)

type FunctionResponse struct {
	// Data Transfer Object (DTO) representing a function
	Function FunctionResponseFunction `json:"function,required"`
	JSON     functionResponseJSON     `json:"-"`
}
    Response body with function details

func (r *FunctionResponse) UnmarshalJSON(data []byte) (err error)

type FunctionResponseFunction struct {
	// Unique function id
	ID string `json:"id,required" format:"uuid"`
	// Function creation timestamp
	CreatedAt time.Time `json:"createdAt,required" format:"date-time"`
	// Used to indicate a STREAMING function. Defaults to DEFAULT.
	FunctionType FunctionResponseFunctionFunctionType `json:"functionType,required"`
	// Health endpoint for the container or helmChart
	HealthUri string `json:"healthUri,required" format:"uri"`
	// Function name
	Name string `json:"name,required"`
	// NVIDIA Cloud Account Id
	NcaID string `json:"ncaId,required"`
	// Function status
	Status FunctionResponseFunctionStatus `json:"status,required"`
	// Unique function version id
	VersionID string `json:"versionId,required" format:"uuid"`
	// List of active instances for this function.
	ActiveInstances []FunctionResponseFunctionActiveInstance `json:"activeInstances"`
	// Invocation request body format
	APIBodyFormat FunctionResponseFunctionAPIBodyFormat `json:"apiBodyFormat"`
	// Args used to launch the container
	ContainerArgs string `json:"containerArgs"`
	// Environment settings used to launch the container
	ContainerEnvironment []FunctionResponseFunctionContainerEnvironment `json:"containerEnvironment"`
	// Optional custom container
	ContainerImage string `json:"containerImage" format:"uri"`
	// Function/version description
	Description string `json:"description"`
	// Data Transfer Object(DTO) representing a function ne
	Health FunctionResponseFunctionHealth `json:"health"`
	// Optional Helm Chart
	HelmChart string `json:"helmChart" format:"uri"`
	// Helm Chart Service Name specified only when helmChart property is specified
	HelmChartServiceName string `json:"helmChartServiceName"`
	// Optional port number where the inference listener is running - defaults to 8000
	// for Triton
	InferencePort int64 `json:"inferencePort"`
	// Entrypoint for invoking the container to process requests
	InferenceURL string `json:"inferenceUrl" format:"uri"`
	// Optional set of models
	Models []FunctionResponseFunctionModel `json:"models"`
	// Indicates whether the function is owned by another account. If the account that
	// is being used to lookup functions happens to be authorized to invoke/list this
	// function which is owned by a different account, then this field is set to true
	// and ncaId will contain the id of the account that owns the function. Otherwise,
	// this field is not set as it defaults to false.
	OwnedByDifferentAccount bool `json:"ownedByDifferentAccount"`
	// Optional set of resources.
	Resources []FunctionResponseFunctionResource `json:"resources"`
	// Optional secret names
	Secrets []string `json:"secrets"`
	// Optional set of tags. Maximum allowed number of tags per function is 64. Maximum
	// length of each tag is 128 chars.
	Tags []string                     `json:"tags"`
	JSON functionResponseFunctionJSON `json:"-"`
}
    Data Transfer Object (DTO) representing a function

func (r *FunctionResponseFunction) UnmarshalJSON(data []byte) (err error)

type FunctionResponseFunctionAPIBodyFormat string
    Invocation request body format

const (
	FunctionResponseFunctionAPIBodyFormatPredictV2 FunctionResponseFunctionAPIBodyFormat = "PREDICT_V2"
	FunctionResponseFunctionAPIBodyFormatCustom    FunctionResponseFunctionAPIBodyFormat = "CUSTOM"
)
func (r FunctionResponseFunctionAPIBodyFormat) IsKnown() bool

type FunctionResponseFunctionActiveInstance struct {
	// Backend where the instance is running
	Backend string `json:"backend"`
	// Function executing on the instance
	FunctionID string `json:"functionId" format:"uuid"`
	// Function version executing on the instance
	FunctionVersionID string `json:"functionVersionId" format:"uuid"`
	// GPU name powering the instance
	GPU string `json:"gpu"`
	// Instance creation timestamp
	InstanceCreatedAt time.Time `json:"instanceCreatedAt" format:"date-time"`
	// Unique id of the instance
	InstanceID string `json:"instanceId"`
	// Instance status
	InstanceStatus FunctionResponseFunctionActiveInstancesInstanceStatus `json:"instanceStatus"`
	// GPU instance-type powering the instance
	InstanceType string `json:"instanceType"`
	// Instance's last updated timestamp
	InstanceUpdatedAt time.Time `json:"instanceUpdatedAt" format:"date-time"`
	// Location such as zone name or region where the instance is running
	Location string `json:"location"`
	// NVIDIA Cloud Account Id that owns the function running on the instance
	NcaID string `json:"ncaId"`
	// SIS request-id used to launch this instance
	SisRequestID string                                     `json:"sisRequestId" format:"uuid"`
	JSON         functionResponseFunctionActiveInstanceJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a spot instance

func (r *FunctionResponseFunctionActiveInstance) UnmarshalJSON(data []byte) (err error)

type FunctionResponseFunctionActiveInstancesInstanceStatus string
    Instance status

const (
	FunctionResponseFunctionActiveInstancesInstanceStatusActive    FunctionResponseFunctionActiveInstancesInstanceStatus = "ACTIVE"
	FunctionResponseFunctionActiveInstancesInstanceStatusErrored   FunctionResponseFunctionActiveInstancesInstanceStatus = "ERRORED"
	FunctionResponseFunctionActiveInstancesInstanceStatusPreempted FunctionResponseFunctionActiveInstancesInstanceStatus = "PREEMPTED"
	FunctionResponseFunctionActiveInstancesInstanceStatusDeleted   FunctionResponseFunctionActiveInstancesInstanceStatus = "DELETED"
)
func (r FunctionResponseFunctionActiveInstancesInstanceStatus) IsKnown() bool

type FunctionResponseFunctionContainerEnvironment struct {
	// Container environment key
	Key string `json:"key,required"`
	// Container environment value
	Value string                                           `json:"value,required"`
	JSON  functionResponseFunctionContainerEnvironmentJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a container environment entry

func (r *FunctionResponseFunctionContainerEnvironment) UnmarshalJSON(data []byte) (err error)

type FunctionResponseFunctionFunctionType string
    Used to indicate a STREAMING function. Defaults to DEFAULT.

const (
	FunctionResponseFunctionFunctionTypeDefault   FunctionResponseFunctionFunctionType = "DEFAULT"
	FunctionResponseFunctionFunctionTypeStreaming FunctionResponseFunctionFunctionType = "STREAMING"
)
func (r FunctionResponseFunctionFunctionType) IsKnown() bool

type FunctionResponseFunctionHealth struct {
	// Expected return status code considered as successful.
	ExpectedStatusCode int64 `json:"expectedStatusCode,required"`
	// Port number where the health listener is running
	Port int64 `json:"port,required"`
	// HTTP/gPRC protocol type for health endpoint
	Protocol FunctionResponseFunctionHealthProtocol `json:"protocol,required"`
	// ISO 8601 duration string in PnDTnHnMn.nS format
	Timeout string `json:"timeout,required" format:"PnDTnHnMn.nS"`
	// Health endpoint for the container or the helmChart
	Uri  string                             `json:"uri,required" format:"uri"`
	JSON functionResponseFunctionHealthJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a function ne

func (r *FunctionResponseFunctionHealth) UnmarshalJSON(data []byte) (err error)

type FunctionResponseFunctionHealthProtocol string
    HTTP/gPRC protocol type for health endpoint

const (
	FunctionResponseFunctionHealthProtocolHTTP FunctionResponseFunctionHealthProtocol = "HTTP"
	FunctionResponseFunctionHealthProtocolGRpc FunctionResponseFunctionHealthProtocol = "gRPC"
)
func (r FunctionResponseFunctionHealthProtocol) IsKnown() bool

type FunctionResponseFunctionModel struct {
	// Artifact name
	Name string `json:"name,required"`
	// Artifact URI
	Uri string `json:"uri,required" format:"uri"`
	// Artifact version
	Version string                            `json:"version,required"`
	JSON    functionResponseFunctionModelJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an artifact

func (r *FunctionResponseFunctionModel) UnmarshalJSON(data []byte) (err error)

type FunctionResponseFunctionResource struct {
	// Artifact name
	Name string `json:"name,required"`
	// Artifact URI
	Uri string `json:"uri,required" format:"uri"`
	// Artifact version
	Version string                               `json:"version,required"`
	JSON    functionResponseFunctionResourceJSON `json:"-"`
}
    Data Transfer Object(DTO) representing an artifact

func (r *FunctionResponseFunctionResource) UnmarshalJSON(data []byte) (err error)

type FunctionResponseFunctionStatus string
    Function status

const (
	FunctionResponseFunctionStatusActive    FunctionResponseFunctionStatus = "ACTIVE"
	FunctionResponseFunctionStatusDeploying FunctionResponseFunctionStatus = "DEPLOYING"
	FunctionResponseFunctionStatusError     FunctionResponseFunctionStatus = "ERROR"
	FunctionResponseFunctionStatusInactive  FunctionResponseFunctionStatus = "INACTIVE"
	FunctionResponseFunctionStatusDeleted   FunctionResponseFunctionStatus = "DELETED"
)
func (r FunctionResponseFunctionStatus) IsKnown() bool

type GetQueuesResponse struct {
	// Function id
	FunctionID string `json:"functionId,required" format:"uuid"`
	// Details of all the queues associated with same named functions
	Queues []GetQueuesResponseQueue `json:"queues,required"`
	JSON   getQueuesResponseJSON    `json:"-"`
}
    Request queue details of all the functions with same id in an account

func (r *GetQueuesResponse) UnmarshalJSON(data []byte) (err error)

type GetQueuesResponseQueue struct {
	// Function name
	FunctionName string `json:"functionName,required"`
	// Function status
	FunctionStatus GetQueuesResponseQueuesFunctionStatus `json:"functionStatus,required"`
	// Function version id
	FunctionVersionID string `json:"functionVersionId,required" format:"uuid"`
	// Approximate number of messages in the request queue
	QueueDepth int64                      `json:"queueDepth"`
	JSON       getQueuesResponseQueueJSON `json:"-"`
}
    Data Transfer Object(DTO) representing a request queue for function version

func (r *GetQueuesResponseQueue) UnmarshalJSON(data []byte) (err error)

type GetQueuesResponseQueuesFunctionStatus string
    Function status

const (
	GetQueuesResponseQueuesFunctionStatusActive    GetQueuesResponseQueuesFunctionStatus = "ACTIVE"
	GetQueuesResponseQueuesFunctionStatusDeploying GetQueuesResponseQueuesFunctionStatus = "DEPLOYING"
	GetQueuesResponseQueuesFunctionStatusError     GetQueuesResponseQueuesFunctionStatus = "ERROR"
	GetQueuesResponseQueuesFunctionStatusInactive  GetQueuesResponseQueuesFunctionStatus = "INACTIVE"
	GetQueuesResponseQueuesFunctionStatusDeleted   GetQueuesResponseQueuesFunctionStatus = "DELETED"
)
func (r GetQueuesResponseQueuesFunctionStatus) IsKnown() bool

type InvokeFunctionResponse struct {
	// Error code from the container while executing cloud function.
	ErrorCode int64 `json:"errorCode"`
	// Progress indicator for the task/job executing cloud function.
	PercentComplete int64 `json:"percentComplete"`
	// Request id
	ReqID string `json:"reqId" format:"uuid"`
	// Response/result of size < 5MB size for the task/job executing cloud function.
	Response string `json:"response"`
	// For large results, responseReference will be a pre-signeddownload URL.
	ResponseReference string `json:"responseReference" format:"url"`
	// Status of the task/job executing cloud function.
	Status InvokeFunctionResponseStatus `json:"status"`
	JSON   invokeFunctionResponseJSON   `json:"-"`
}
    Response body with result from a request for executing a job/task as a cloud
    function using a GPU powered spot/on-demand instance.

func (r *InvokeFunctionResponse) UnmarshalJSON(data []byte) (err error)

type InvokeFunctionResponseStatus string
    Status of the task/job executing cloud function.

const (
	InvokeFunctionResponseStatusErrored           InvokeFunctionResponseStatus = "errored"
	InvokeFunctionResponseStatusInProgress        InvokeFunctionResponseStatus = "in-progress"
	InvokeFunctionResponseStatusFulfilled         InvokeFunctionResponseStatus = "fulfilled"
	InvokeFunctionResponseStatusPendingEvaluation InvokeFunctionResponseStatus = "pending-evaluation"
	InvokeFunctionResponseStatusRejected          InvokeFunctionResponseStatus = "rejected"
)
func (r InvokeFunctionResponseStatus) IsKnown() bool

