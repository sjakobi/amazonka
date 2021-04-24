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
-- Module      : Network.AWS.APIGateway.PutMethodResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a 'MethodResponse' to an existing 'Method' resource.
module Network.AWS.APIGateway.PutMethodResponse
  ( -- * Creating a Request
    putMethodResponse,
    PutMethodResponse,

    -- * Request Lenses
    pmrResponseModels,
    pmrResponseParameters,
    pmrRestAPIId,
    pmrResourceId,
    pmrHttpMethod,
    pmrStatusCode,

    -- * Destructuring the Response
    methodResponse,
    MethodResponse,

    -- * Response Lenses
    mrResponseModels,
    mrStatusCode,
    mrResponseParameters,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to add a 'MethodResponse' to an existing 'Method' resource.
--
--
--
-- /See:/ 'putMethodResponse' smart constructor.
data PutMethodResponse = PutMethodResponse'
  { _pmrResponseModels ::
      !(Maybe (Map Text Text)),
    _pmrResponseParameters ::
      !(Maybe (Map Text Bool)),
    _pmrRestAPIId :: !Text,
    _pmrResourceId :: !Text,
    _pmrHttpMethod :: !Text,
    _pmrStatusCode :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmrResponseModels' - Specifies the 'Model' resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a 'Model' name as the value.
--
-- * 'pmrResponseParameters' - A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of @method.response.header.{name}@ , where @name@ is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in @integration.response.header.{name}@ , a static value enclosed within a pair of single quotes (e.g., @'application/json'@ ), or a JSON expression from the back-end response payload in the form of @integration.response.body.{JSON-expression}@ , where @JSON-expression@ is a valid JSON expression without the @> @ prefix.)
--
-- * 'pmrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'pmrResourceId' - [Required] The 'Resource' identifier for the 'Method' resource.
--
-- * 'pmrHttpMethod' - [Required] The HTTP verb of the 'Method' resource.
--
-- * 'pmrStatusCode' - [Required] The method response's status code.
putMethodResponse ::
  -- | 'pmrRestAPIId'
  Text ->
  -- | 'pmrResourceId'
  Text ->
  -- | 'pmrHttpMethod'
  Text ->
  -- | 'pmrStatusCode'
  Text ->
  PutMethodResponse
putMethodResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    PutMethodResponse'
      { _pmrResponseModels = Nothing,
        _pmrResponseParameters = Nothing,
        _pmrRestAPIId = pRestAPIId_,
        _pmrResourceId = pResourceId_,
        _pmrHttpMethod = pHttpMethod_,
        _pmrStatusCode = pStatusCode_
      }

-- | Specifies the 'Model' resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a 'Model' name as the value.
pmrResponseModels :: Lens' PutMethodResponse (HashMap Text Text)
pmrResponseModels = lens _pmrResponseModels (\s a -> s {_pmrResponseModels = a}) . _Default . _Map

-- | A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of @method.response.header.{name}@ , where @name@ is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in @integration.response.header.{name}@ , a static value enclosed within a pair of single quotes (e.g., @'application/json'@ ), or a JSON expression from the back-end response payload in the form of @integration.response.body.{JSON-expression}@ , where @JSON-expression@ is a valid JSON expression without the @> @ prefix.)
pmrResponseParameters :: Lens' PutMethodResponse (HashMap Text Bool)
pmrResponseParameters = lens _pmrResponseParameters (\s a -> s {_pmrResponseParameters = a}) . _Default . _Map

-- | [Required] The string identifier of the associated 'RestApi' .
pmrRestAPIId :: Lens' PutMethodResponse Text
pmrRestAPIId = lens _pmrRestAPIId (\s a -> s {_pmrRestAPIId = a})

-- | [Required] The 'Resource' identifier for the 'Method' resource.
pmrResourceId :: Lens' PutMethodResponse Text
pmrResourceId = lens _pmrResourceId (\s a -> s {_pmrResourceId = a})

-- | [Required] The HTTP verb of the 'Method' resource.
pmrHttpMethod :: Lens' PutMethodResponse Text
pmrHttpMethod = lens _pmrHttpMethod (\s a -> s {_pmrHttpMethod = a})

-- | [Required] The method response's status code.
pmrStatusCode :: Lens' PutMethodResponse Text
pmrStatusCode = lens _pmrStatusCode (\s a -> s {_pmrStatusCode = a})

instance AWSRequest PutMethodResponse where
  type Rs PutMethodResponse = MethodResponse
  request = putJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable PutMethodResponse

instance NFData PutMethodResponse

instance ToHeaders PutMethodResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON PutMethodResponse where
  toJSON PutMethodResponse' {..} =
    object
      ( catMaybes
          [ ("responseModels" .=) <$> _pmrResponseModels,
            ("responseParameters" .=)
              <$> _pmrResponseParameters
          ]
      )

instance ToPath PutMethodResponse where
  toPath PutMethodResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _pmrRestAPIId,
        "/resources/",
        toBS _pmrResourceId,
        "/methods/",
        toBS _pmrHttpMethod,
        "/responses/",
        toBS _pmrStatusCode
      ]

instance ToQuery PutMethodResponse where
  toQuery = const mempty
