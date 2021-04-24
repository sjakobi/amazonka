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
-- Module      : Network.AWS.APIGateway.GetIntegrationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents a get integration response.
module Network.AWS.APIGateway.GetIntegrationResponse
  ( -- * Creating a Request
    getIntegrationResponse,
    GetIntegrationResponse,

    -- * Request Lenses
    girRestAPIId,
    girResourceId,
    girHttpMethod,
    girStatusCode,

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

-- | Represents a get integration response request.
--
--
--
-- /See:/ 'getIntegrationResponse' smart constructor.
data GetIntegrationResponse = GetIntegrationResponse'
  { _girRestAPIId ::
      !Text,
    _girResourceId :: !Text,
    _girHttpMethod :: !Text,
    _girStatusCode :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetIntegrationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'girResourceId' - [Required] Specifies a get integration response request's resource identifier.
--
-- * 'girHttpMethod' - [Required] Specifies a get integration response request's HTTP method.
--
-- * 'girStatusCode' - [Required] Specifies a get integration response request's status code.
getIntegrationResponse ::
  -- | 'girRestAPIId'
  Text ->
  -- | 'girResourceId'
  Text ->
  -- | 'girHttpMethod'
  Text ->
  -- | 'girStatusCode'
  Text ->
  GetIntegrationResponse
getIntegrationResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    GetIntegrationResponse'
      { _girRestAPIId =
          pRestAPIId_,
        _girResourceId = pResourceId_,
        _girHttpMethod = pHttpMethod_,
        _girStatusCode = pStatusCode_
      }

-- | [Required] The string identifier of the associated 'RestApi' .
girRestAPIId :: Lens' GetIntegrationResponse Text
girRestAPIId = lens _girRestAPIId (\s a -> s {_girRestAPIId = a})

-- | [Required] Specifies a get integration response request's resource identifier.
girResourceId :: Lens' GetIntegrationResponse Text
girResourceId = lens _girResourceId (\s a -> s {_girResourceId = a})

-- | [Required] Specifies a get integration response request's HTTP method.
girHttpMethod :: Lens' GetIntegrationResponse Text
girHttpMethod = lens _girHttpMethod (\s a -> s {_girHttpMethod = a})

-- | [Required] Specifies a get integration response request's status code.
girStatusCode :: Lens' GetIntegrationResponse Text
girStatusCode = lens _girStatusCode (\s a -> s {_girStatusCode = a})

instance AWSRequest GetIntegrationResponse where
  type Rs GetIntegrationResponse = IntegrationResponse
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetIntegrationResponse

instance NFData GetIntegrationResponse

instance ToHeaders GetIntegrationResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetIntegrationResponse where
  toPath GetIntegrationResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _girRestAPIId,
        "/resources/",
        toBS _girResourceId,
        "/methods/",
        toBS _girHttpMethod,
        "/integration/responses/",
        toBS _girStatusCode
      ]

instance ToQuery GetIntegrationResponse where
  toQuery = const mempty
