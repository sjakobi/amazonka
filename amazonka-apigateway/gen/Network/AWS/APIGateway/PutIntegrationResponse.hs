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
-- Module      : Network.AWS.APIGateway.PutIntegrationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents a put integration.
module Network.AWS.APIGateway.PutIntegrationResponse
  ( -- * Creating a Request
    putIntegrationResponse,
    PutIntegrationResponse,

    -- * Request Lenses
    pirContentHandling,
    pirResponseTemplates,
    pirResponseParameters,
    pirSelectionPattern,
    pirRestAPIId,
    pirResourceId,
    pirHttpMethod,
    pirStatusCode,

    -- * Destructuring the Response
    integrationResponse,
    IntegrationResponse,

    -- * Response Lenses
    irContentHandling,
    irResponseTemplates,
    irStatusCode,
    irResponseParameters,
    irSelectionPattern,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a put integration response request.
--
--
--
-- /See:/ 'putIntegrationResponse' smart constructor.
data PutIntegrationResponse = PutIntegrationResponse'
  { _pirContentHandling ::
      !( Maybe
           ContentHandlingStrategy
       ),
    _pirResponseTemplates ::
      !(Maybe (Map Text Text)),
    _pirResponseParameters ::
      !(Maybe (Map Text Text)),
    _pirSelectionPattern ::
      !(Maybe Text),
    _pirRestAPIId :: !Text,
    _pirResourceId :: !Text,
    _pirHttpMethod :: !Text,
    _pirStatusCode :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutIntegrationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirContentHandling' - Specifies how to handle response payload content type conversions. Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@ , with the following behaviors:     * @CONVERT_TO_BINARY@ : Converts a response payload from a Base64-encoded string to the corresponding binary blob.     * @CONVERT_TO_TEXT@ : Converts a response payload from a binary blob to a Base64-encoded string. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
--
-- * 'pirResponseTemplates' - Specifies a put integration response's templates.
--
-- * 'pirResponseParameters' - A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of @method.response.header.{name}@ , where @name@ is a valid and unique header name. The mapped non-static value must match the pattern of @integration.response.header.{name}@ or @integration.response.body.{JSON-expression}@ , where @name@ must be a valid and unique response header name and @JSON-expression@ a valid JSON expression without the @> @ prefix.
--
-- * 'pirSelectionPattern' - Specifies the selection pattern of a put integration response.
--
-- * 'pirRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'pirResourceId' - [Required] Specifies a put integration response request's resource identifier.
--
-- * 'pirHttpMethod' - [Required] Specifies a put integration response request's HTTP method.
--
-- * 'pirStatusCode' - [Required] Specifies the status code that is used to map the integration response to an existing 'MethodResponse' .
putIntegrationResponse ::
  -- | 'pirRestAPIId'
  Text ->
  -- | 'pirResourceId'
  Text ->
  -- | 'pirHttpMethod'
  Text ->
  -- | 'pirStatusCode'
  Text ->
  PutIntegrationResponse
putIntegrationResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    PutIntegrationResponse'
      { _pirContentHandling =
          Nothing,
        _pirResponseTemplates = Nothing,
        _pirResponseParameters = Nothing,
        _pirSelectionPattern = Nothing,
        _pirRestAPIId = pRestAPIId_,
        _pirResourceId = pResourceId_,
        _pirHttpMethod = pHttpMethod_,
        _pirStatusCode = pStatusCode_
      }

-- | Specifies how to handle response payload content type conversions. Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@ , with the following behaviors:     * @CONVERT_TO_BINARY@ : Converts a response payload from a Base64-encoded string to the corresponding binary blob.     * @CONVERT_TO_TEXT@ : Converts a response payload from a binary blob to a Base64-encoded string. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
pirContentHandling :: Lens' PutIntegrationResponse (Maybe ContentHandlingStrategy)
pirContentHandling = lens _pirContentHandling (\s a -> s {_pirContentHandling = a})

-- | Specifies a put integration response's templates.
pirResponseTemplates :: Lens' PutIntegrationResponse (HashMap Text Text)
pirResponseTemplates = lens _pirResponseTemplates (\s a -> s {_pirResponseTemplates = a}) . _Default . _Map

-- | A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of @method.response.header.{name}@ , where @name@ is a valid and unique header name. The mapped non-static value must match the pattern of @integration.response.header.{name}@ or @integration.response.body.{JSON-expression}@ , where @name@ must be a valid and unique response header name and @JSON-expression@ a valid JSON expression without the @> @ prefix.
pirResponseParameters :: Lens' PutIntegrationResponse (HashMap Text Text)
pirResponseParameters = lens _pirResponseParameters (\s a -> s {_pirResponseParameters = a}) . _Default . _Map

-- | Specifies the selection pattern of a put integration response.
pirSelectionPattern :: Lens' PutIntegrationResponse (Maybe Text)
pirSelectionPattern = lens _pirSelectionPattern (\s a -> s {_pirSelectionPattern = a})

-- | [Required] The string identifier of the associated 'RestApi' .
pirRestAPIId :: Lens' PutIntegrationResponse Text
pirRestAPIId = lens _pirRestAPIId (\s a -> s {_pirRestAPIId = a})

-- | [Required] Specifies a put integration response request's resource identifier.
pirResourceId :: Lens' PutIntegrationResponse Text
pirResourceId = lens _pirResourceId (\s a -> s {_pirResourceId = a})

-- | [Required] Specifies a put integration response request's HTTP method.
pirHttpMethod :: Lens' PutIntegrationResponse Text
pirHttpMethod = lens _pirHttpMethod (\s a -> s {_pirHttpMethod = a})

-- | [Required] Specifies the status code that is used to map the integration response to an existing 'MethodResponse' .
pirStatusCode :: Lens' PutIntegrationResponse Text
pirStatusCode = lens _pirStatusCode (\s a -> s {_pirStatusCode = a})

instance AWSRequest PutIntegrationResponse where
  type Rs PutIntegrationResponse = IntegrationResponse
  request = putJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable PutIntegrationResponse

instance NFData PutIntegrationResponse

instance ToHeaders PutIntegrationResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON PutIntegrationResponse where
  toJSON PutIntegrationResponse' {..} =
    object
      ( catMaybes
          [ ("contentHandling" .=) <$> _pirContentHandling,
            ("responseTemplates" .=) <$> _pirResponseTemplates,
            ("responseParameters" .=) <$> _pirResponseParameters,
            ("selectionPattern" .=) <$> _pirSelectionPattern
          ]
      )

instance ToPath PutIntegrationResponse where
  toPath PutIntegrationResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _pirRestAPIId,
        "/resources/",
        toBS _pirResourceId,
        "/methods/",
        toBS _pirHttpMethod,
        "/integration/responses/",
        toBS _pirStatusCode
      ]

instance ToQuery PutIntegrationResponse where
  toQuery = const mempty
