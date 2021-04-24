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
-- Module      : Network.AWS.APIGateway.CreateRestAPI
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new 'RestApi' resource.
module Network.AWS.APIGateway.CreateRestAPI
  ( -- * Creating a Request
    createRestAPI,
    CreateRestAPI,

    -- * Request Lenses
    craEndpointConfiguration,
    craBinaryMediaTypes,
    craVersion,
    craTags,
    craDescription,
    craDisableExecuteAPIEndpoint,
    craPolicy,
    craCloneFrom,
    craMinimumCompressionSize,
    craApiKeySource,
    craName,

    -- * Destructuring the Response
    restAPI,
    RestAPI,

    -- * Response Lenses
    raCreatedDate,
    raWarnings,
    raEndpointConfiguration,
    raBinaryMediaTypes,
    raId,
    raVersion,
    raName,
    raTags,
    raDescription,
    raDisableExecuteAPIEndpoint,
    raPolicy,
    raMinimumCompressionSize,
    raApiKeySource,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The POST Request to add a new 'RestApi' resource to your collection.
--
--
--
-- /See:/ 'createRestAPI' smart constructor.
data CreateRestAPI = CreateRestAPI'
  { _craEndpointConfiguration ::
      !(Maybe EndpointConfiguration),
    _craBinaryMediaTypes :: !(Maybe [Text]),
    _craVersion :: !(Maybe Text),
    _craTags :: !(Maybe (Map Text Text)),
    _craDescription :: !(Maybe Text),
    _craDisableExecuteAPIEndpoint ::
      !(Maybe Bool),
    _craPolicy :: !(Maybe Text),
    _craCloneFrom :: !(Maybe Text),
    _craMinimumCompressionSize :: !(Maybe Int),
    _craApiKeySource ::
      !(Maybe APIKeySourceType),
    _craName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRestAPI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'craEndpointConfiguration' - The endpoint configuration of this 'RestApi' showing the endpoint types of the API.
--
-- * 'craBinaryMediaTypes' - The list of binary media types supported by the 'RestApi' . By default, the 'RestApi' supports only UTF-8-encoded text payloads.
--
-- * 'craVersion' - A version identifier for the API.
--
-- * 'craTags' - The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
--
-- * 'craDescription' - The description of the 'RestApi' .
--
-- * 'craDisableExecuteAPIEndpoint' - Specifies whether clients can invoke your API by using the default @execute-api@ endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.
--
-- * 'craPolicy' - 'Method'
--
-- * 'craCloneFrom' - The ID of the 'RestApi' that you want to clone from.
--
-- * 'craMinimumCompressionSize' - A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
--
-- * 'craApiKeySource' - The source of the API key for metering requests according to a usage plan. Valid values are:     * @HEADER@ to read the API key from the @X-API-Key@ header of a request.     * @AUTHORIZER@ to read the API key from the @UsageIdentifierKey@ from a custom authorizer.
--
-- * 'craName' - [Required] The name of the 'RestApi' .
createRestAPI ::
  -- | 'craName'
  Text ->
  CreateRestAPI
createRestAPI pName_ =
  CreateRestAPI'
    { _craEndpointConfiguration = Nothing,
      _craBinaryMediaTypes = Nothing,
      _craVersion = Nothing,
      _craTags = Nothing,
      _craDescription = Nothing,
      _craDisableExecuteAPIEndpoint = Nothing,
      _craPolicy = Nothing,
      _craCloneFrom = Nothing,
      _craMinimumCompressionSize = Nothing,
      _craApiKeySource = Nothing,
      _craName = pName_
    }

-- | The endpoint configuration of this 'RestApi' showing the endpoint types of the API.
craEndpointConfiguration :: Lens' CreateRestAPI (Maybe EndpointConfiguration)
craEndpointConfiguration = lens _craEndpointConfiguration (\s a -> s {_craEndpointConfiguration = a})

-- | The list of binary media types supported by the 'RestApi' . By default, the 'RestApi' supports only UTF-8-encoded text payloads.
craBinaryMediaTypes :: Lens' CreateRestAPI [Text]
craBinaryMediaTypes = lens _craBinaryMediaTypes (\s a -> s {_craBinaryMediaTypes = a}) . _Default . _Coerce

-- | A version identifier for the API.
craVersion :: Lens' CreateRestAPI (Maybe Text)
craVersion = lens _craVersion (\s a -> s {_craVersion = a})

-- | The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
craTags :: Lens' CreateRestAPI (HashMap Text Text)
craTags = lens _craTags (\s a -> s {_craTags = a}) . _Default . _Map

-- | The description of the 'RestApi' .
craDescription :: Lens' CreateRestAPI (Maybe Text)
craDescription = lens _craDescription (\s a -> s {_craDescription = a})

-- | Specifies whether clients can invoke your API by using the default @execute-api@ endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.
craDisableExecuteAPIEndpoint :: Lens' CreateRestAPI (Maybe Bool)
craDisableExecuteAPIEndpoint = lens _craDisableExecuteAPIEndpoint (\s a -> s {_craDisableExecuteAPIEndpoint = a})

-- | 'Method'
craPolicy :: Lens' CreateRestAPI (Maybe Text)
craPolicy = lens _craPolicy (\s a -> s {_craPolicy = a})

-- | The ID of the 'RestApi' that you want to clone from.
craCloneFrom :: Lens' CreateRestAPI (Maybe Text)
craCloneFrom = lens _craCloneFrom (\s a -> s {_craCloneFrom = a})

-- | A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
craMinimumCompressionSize :: Lens' CreateRestAPI (Maybe Int)
craMinimumCompressionSize = lens _craMinimumCompressionSize (\s a -> s {_craMinimumCompressionSize = a})

-- | The source of the API key for metering requests according to a usage plan. Valid values are:     * @HEADER@ to read the API key from the @X-API-Key@ header of a request.     * @AUTHORIZER@ to read the API key from the @UsageIdentifierKey@ from a custom authorizer.
craApiKeySource :: Lens' CreateRestAPI (Maybe APIKeySourceType)
craApiKeySource = lens _craApiKeySource (\s a -> s {_craApiKeySource = a})

-- | [Required] The name of the 'RestApi' .
craName :: Lens' CreateRestAPI Text
craName = lens _craName (\s a -> s {_craName = a})

instance AWSRequest CreateRestAPI where
  type Rs CreateRestAPI = RestAPI
  request = postJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable CreateRestAPI

instance NFData CreateRestAPI

instance ToHeaders CreateRestAPI where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON CreateRestAPI where
  toJSON CreateRestAPI' {..} =
    object
      ( catMaybes
          [ ("endpointConfiguration" .=)
              <$> _craEndpointConfiguration,
            ("binaryMediaTypes" .=) <$> _craBinaryMediaTypes,
            ("version" .=) <$> _craVersion,
            ("tags" .=) <$> _craTags,
            ("description" .=) <$> _craDescription,
            ("disableExecuteApiEndpoint" .=)
              <$> _craDisableExecuteAPIEndpoint,
            ("policy" .=) <$> _craPolicy,
            ("cloneFrom" .=) <$> _craCloneFrom,
            ("minimumCompressionSize" .=)
              <$> _craMinimumCompressionSize,
            ("apiKeySource" .=) <$> _craApiKeySource,
            Just ("name" .= _craName)
          ]
      )

instance ToPath CreateRestAPI where
  toPath = const "/restapis"

instance ToQuery CreateRestAPI where
  toQuery = const mempty
