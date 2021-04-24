{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.PutIntegration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets up a method's integration.
module Network.AWS.APIGateway.PutIntegration
  ( -- * Creating a Request
    putIntegration,
    PutIntegration,

    -- * Request Lenses
    piIntegrationHTTPMethod,
    piPassthroughBehavior,
    piContentHandling,
    piUri,
    piConnectionType,
    piConnectionId,
    piRequestTemplates,
    piTimeoutInMillis,
    piCacheNamespace,
    piCacheKeyParameters,
    piTlsConfig,
    piRequestParameters,
    piCredentials,
    piRestAPIId,
    piResourceId,
    piHttpMethod,
    piType,

    -- * Destructuring the Response
    integration,
    Integration,

    -- * Response Lenses
    iHttpMethod,
    iPassthroughBehavior,
    iContentHandling,
    iUri,
    iConnectionType,
    iConnectionId,
    iRequestTemplates,
    iTimeoutInMillis,
    iCacheNamespace,
    iCacheKeyParameters,
    iTlsConfig,
    iIntegrationResponses,
    iRequestParameters,
    iType,
    iCredentials,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Sets up a method's integration.
--
--
--
-- /See:/ 'putIntegration' smart constructor.
data PutIntegration = PutIntegration'
  { _piIntegrationHTTPMethod ::
      !(Maybe Text),
    _piPassthroughBehavior :: !(Maybe Text),
    _piContentHandling ::
      !(Maybe ContentHandlingStrategy),
    _piUri :: !(Maybe Text),
    _piConnectionType ::
      !(Maybe ConnectionType),
    _piConnectionId :: !(Maybe Text),
    _piRequestTemplates ::
      !(Maybe (Map Text Text)),
    _piTimeoutInMillis :: !(Maybe Int),
    _piCacheNamespace :: !(Maybe Text),
    _piCacheKeyParameters :: !(Maybe [Text]),
    _piTlsConfig :: !(Maybe TLSConfig),
    _piRequestParameters ::
      !(Maybe (Map Text Text)),
    _piCredentials :: !(Maybe Text),
    _piRestAPIId :: !Text,
    _piResourceId :: !Text,
    _piHttpMethod :: !Text,
    _piType :: !IntegrationType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutIntegration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piIntegrationHTTPMethod' - Specifies a put integration HTTP method. When the integration type is HTTP or AWS, this field is required.
--
-- * 'piPassthroughBehavior' - Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the @requestTemplates@ property on the Integration resource. There are three valid values: @WHEN_NO_MATCH@ , @WHEN_NO_TEMPLATES@ , and @NEVER@ .      * @WHEN_NO_MATCH@ passes the request body for unmapped content types through to the integration back end without transformation.     * @NEVER@ rejects unmapped content types with an HTTP 415 'Unsupported Media Type' response.     * @WHEN_NO_TEMPLATES@ allows pass-through when the integration has NO content types mapped to templates. However if there is at least one content type defined, unmapped content types will be rejected with the same 415 response.
--
-- * 'piContentHandling' - Specifies how to handle request payload content type conversions. Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@ , with the following behaviors:     * @CONVERT_TO_BINARY@ : Converts a request payload from a Base64-encoded string to the corresponding binary blob.     * @CONVERT_TO_TEXT@ : Converts a request payload from a binary blob to a Base64-encoded string. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the @passthroughBehavior@ is configured to support payload pass-through.
--
-- * 'piUri' - Specifies Uniform Resource Identifier (URI) of the integration endpoint.     * For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier RFC-3986 specification> , for either standard integration, where @connectionType@ is not @VPC_LINK@ , or private integration, where @connectionType@ is @VPC_LINK@ . For a private HTTP integration, the URI is not used for routing.      * For @AWS@ or @AWS_PROXY@ integrations, the URI is of the form @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}@ . Here, @{Region}@ is the API Gateway region (e.g., @us-east-1@ ); @{service}@ is the name of the integrated AWS service (e.g., @s3@ ); and @{subdomain}@ is a designated subdomain supported by certain AWS service for fast host-name lookup. @action@ can be used for an AWS service action-based API, using an @Action={name}&{p1}={v1}&p2={v2}...@ query string. The ensuing @{service_api}@ refers to a supported action @{name}@ plus any required input parameters. Alternatively, @path@ can be used for an AWS service path-based API. The ensuing @service_api@ refers to the path to an AWS service resource, including the region of the integrated AWS service, if applicable. For example, for integration with the S3 API of @<https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectGET.html GetObject> @ , the @uri@ can be either @arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}@ or @arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}@
--
-- * 'piConnectionType' - The type of the network connection to the integration endpoint. The valid value is @INTERNET@ for connections through the public routable internet or @VPC_LINK@ for private connections between API Gateway and a network load balancer in a VPC. The default value is @INTERNET@ .
--
-- * 'piConnectionId' - The (<https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id @id@ > ) of the 'VpcLink' used for the integration when @connectionType=VPC_LINK@ and undefined, otherwise.
--
-- * 'piRequestTemplates' - Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.
--
-- * 'piTimeoutInMillis' - Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.
--
-- * 'piCacheNamespace' - Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the @cacheNamespace@ . You can specify the same @cacheNamespace@ across resources to return the same cached data for requests to different resources.
--
-- * 'piCacheKeyParameters' - A list of request parameters whose values API Gateway caches. To be valid values for @cacheKeyParameters@ , these parameters must also be specified for 'Method' @requestParameters@ .
--
-- * 'piTlsConfig' - Undocumented member.
--
-- * 'piRequestParameters' - A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of @method.request.{location}.{name}@ , where @location@ is @querystring@ , @path@ , or @header@ and @name@ must be a valid and unique method request parameter name.
--
-- * 'piCredentials' - Specifies whether credentials are required for a put integration.
--
-- * 'piRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'piResourceId' - [Required] Specifies a put integration request's resource ID.
--
-- * 'piHttpMethod' - [Required] Specifies a put integration request's HTTP method.
--
-- * 'piType' - [Required] Specifies a put integration input's type.
putIntegration ::
  -- | 'piRestAPIId'
  Text ->
  -- | 'piResourceId'
  Text ->
  -- | 'piHttpMethod'
  Text ->
  -- | 'piType'
  IntegrationType ->
  PutIntegration
putIntegration
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pType_ =
    PutIntegration'
      { _piIntegrationHTTPMethod = Nothing,
        _piPassthroughBehavior = Nothing,
        _piContentHandling = Nothing,
        _piUri = Nothing,
        _piConnectionType = Nothing,
        _piConnectionId = Nothing,
        _piRequestTemplates = Nothing,
        _piTimeoutInMillis = Nothing,
        _piCacheNamespace = Nothing,
        _piCacheKeyParameters = Nothing,
        _piTlsConfig = Nothing,
        _piRequestParameters = Nothing,
        _piCredentials = Nothing,
        _piRestAPIId = pRestAPIId_,
        _piResourceId = pResourceId_,
        _piHttpMethod = pHttpMethod_,
        _piType = pType_
      }

-- | Specifies a put integration HTTP method. When the integration type is HTTP or AWS, this field is required.
piIntegrationHTTPMethod :: Lens' PutIntegration (Maybe Text)
piIntegrationHTTPMethod = lens _piIntegrationHTTPMethod (\s a -> s {_piIntegrationHTTPMethod = a})

-- | Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the @requestTemplates@ property on the Integration resource. There are three valid values: @WHEN_NO_MATCH@ , @WHEN_NO_TEMPLATES@ , and @NEVER@ .      * @WHEN_NO_MATCH@ passes the request body for unmapped content types through to the integration back end without transformation.     * @NEVER@ rejects unmapped content types with an HTTP 415 'Unsupported Media Type' response.     * @WHEN_NO_TEMPLATES@ allows pass-through when the integration has NO content types mapped to templates. However if there is at least one content type defined, unmapped content types will be rejected with the same 415 response.
piPassthroughBehavior :: Lens' PutIntegration (Maybe Text)
piPassthroughBehavior = lens _piPassthroughBehavior (\s a -> s {_piPassthroughBehavior = a})

-- | Specifies how to handle request payload content type conversions. Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@ , with the following behaviors:     * @CONVERT_TO_BINARY@ : Converts a request payload from a Base64-encoded string to the corresponding binary blob.     * @CONVERT_TO_TEXT@ : Converts a request payload from a binary blob to a Base64-encoded string. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the @passthroughBehavior@ is configured to support payload pass-through.
piContentHandling :: Lens' PutIntegration (Maybe ContentHandlingStrategy)
piContentHandling = lens _piContentHandling (\s a -> s {_piContentHandling = a})

-- | Specifies Uniform Resource Identifier (URI) of the integration endpoint.     * For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier RFC-3986 specification> , for either standard integration, where @connectionType@ is not @VPC_LINK@ , or private integration, where @connectionType@ is @VPC_LINK@ . For a private HTTP integration, the URI is not used for routing.      * For @AWS@ or @AWS_PROXY@ integrations, the URI is of the form @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}@ . Here, @{Region}@ is the API Gateway region (e.g., @us-east-1@ ); @{service}@ is the name of the integrated AWS service (e.g., @s3@ ); and @{subdomain}@ is a designated subdomain supported by certain AWS service for fast host-name lookup. @action@ can be used for an AWS service action-based API, using an @Action={name}&{p1}={v1}&p2={v2}...@ query string. The ensuing @{service_api}@ refers to a supported action @{name}@ plus any required input parameters. Alternatively, @path@ can be used for an AWS service path-based API. The ensuing @service_api@ refers to the path to an AWS service resource, including the region of the integrated AWS service, if applicable. For example, for integration with the S3 API of @<https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectGET.html GetObject> @ , the @uri@ can be either @arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}@ or @arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}@
piUri :: Lens' PutIntegration (Maybe Text)
piUri = lens _piUri (\s a -> s {_piUri = a})

-- | The type of the network connection to the integration endpoint. The valid value is @INTERNET@ for connections through the public routable internet or @VPC_LINK@ for private connections between API Gateway and a network load balancer in a VPC. The default value is @INTERNET@ .
piConnectionType :: Lens' PutIntegration (Maybe ConnectionType)
piConnectionType = lens _piConnectionType (\s a -> s {_piConnectionType = a})

-- | The (<https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id @id@ > ) of the 'VpcLink' used for the integration when @connectionType=VPC_LINK@ and undefined, otherwise.
piConnectionId :: Lens' PutIntegration (Maybe Text)
piConnectionId = lens _piConnectionId (\s a -> s {_piConnectionId = a})

-- | Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.
piRequestTemplates :: Lens' PutIntegration (HashMap Text Text)
piRequestTemplates = lens _piRequestTemplates (\s a -> s {_piRequestTemplates = a}) . _Default . _Map

-- | Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.
piTimeoutInMillis :: Lens' PutIntegration (Maybe Int)
piTimeoutInMillis = lens _piTimeoutInMillis (\s a -> s {_piTimeoutInMillis = a})

-- | Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the @cacheNamespace@ . You can specify the same @cacheNamespace@ across resources to return the same cached data for requests to different resources.
piCacheNamespace :: Lens' PutIntegration (Maybe Text)
piCacheNamespace = lens _piCacheNamespace (\s a -> s {_piCacheNamespace = a})

-- | A list of request parameters whose values API Gateway caches. To be valid values for @cacheKeyParameters@ , these parameters must also be specified for 'Method' @requestParameters@ .
piCacheKeyParameters :: Lens' PutIntegration [Text]
piCacheKeyParameters = lens _piCacheKeyParameters (\s a -> s {_piCacheKeyParameters = a}) . _Default . _Coerce

-- | Undocumented member.
piTlsConfig :: Lens' PutIntegration (Maybe TLSConfig)
piTlsConfig = lens _piTlsConfig (\s a -> s {_piTlsConfig = a})

-- | A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of @method.request.{location}.{name}@ , where @location@ is @querystring@ , @path@ , or @header@ and @name@ must be a valid and unique method request parameter name.
piRequestParameters :: Lens' PutIntegration (HashMap Text Text)
piRequestParameters = lens _piRequestParameters (\s a -> s {_piRequestParameters = a}) . _Default . _Map

-- | Specifies whether credentials are required for a put integration.
piCredentials :: Lens' PutIntegration (Maybe Text)
piCredentials = lens _piCredentials (\s a -> s {_piCredentials = a})

-- | [Required] The string identifier of the associated 'RestApi' .
piRestAPIId :: Lens' PutIntegration Text
piRestAPIId = lens _piRestAPIId (\s a -> s {_piRestAPIId = a})

-- | [Required] Specifies a put integration request's resource ID.
piResourceId :: Lens' PutIntegration Text
piResourceId = lens _piResourceId (\s a -> s {_piResourceId = a})

-- | [Required] Specifies a put integration request's HTTP method.
piHttpMethod :: Lens' PutIntegration Text
piHttpMethod = lens _piHttpMethod (\s a -> s {_piHttpMethod = a})

-- | [Required] Specifies a put integration input's type.
piType :: Lens' PutIntegration IntegrationType
piType = lens _piType (\s a -> s {_piType = a})

instance AWSRequest PutIntegration where
  type Rs PutIntegration = Integration
  request = putJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable PutIntegration

instance NFData PutIntegration

instance ToHeaders PutIntegration where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON PutIntegration where
  toJSON PutIntegration' {..} =
    object
      ( catMaybes
          [ ("httpMethod" .=) <$> _piIntegrationHTTPMethod,
            ("passthroughBehavior" .=)
              <$> _piPassthroughBehavior,
            ("contentHandling" .=) <$> _piContentHandling,
            ("uri" .=) <$> _piUri,
            ("connectionType" .=) <$> _piConnectionType,
            ("connectionId" .=) <$> _piConnectionId,
            ("requestTemplates" .=) <$> _piRequestTemplates,
            ("timeoutInMillis" .=) <$> _piTimeoutInMillis,
            ("cacheNamespace" .=) <$> _piCacheNamespace,
            ("cacheKeyParameters" .=) <$> _piCacheKeyParameters,
            ("tlsConfig" .=) <$> _piTlsConfig,
            ("requestParameters" .=) <$> _piRequestParameters,
            ("credentials" .=) <$> _piCredentials,
            Just ("type" .= _piType)
          ]
      )

instance ToPath PutIntegration where
  toPath PutIntegration' {..} =
    mconcat
      [ "/restapis/",
        toBS _piRestAPIId,
        "/resources/",
        toBS _piResourceId,
        "/methods/",
        toBS _piHttpMethod,
        "/integration"
      ]

instance ToQuery PutIntegration where
  toQuery = const mempty
