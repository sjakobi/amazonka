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
-- Module      : Network.AWS.APIGateway.GetMethodResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a 'MethodResponse' resource.
module Network.AWS.APIGateway.GetMethodResponse
  ( -- * Creating a Request
    getMethodResponse,
    GetMethodResponse,

    -- * Request Lenses
    gmrRestAPIId,
    gmrResourceId,
    gmrHttpMethod,
    gmrStatusCode,

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

-- | Request to describe a 'MethodResponse' resource.
--
--
--
-- /See:/ 'getMethodResponse' smart constructor.
data GetMethodResponse = GetMethodResponse'
  { _gmrRestAPIId ::
      !Text,
    _gmrResourceId :: !Text,
    _gmrHttpMethod :: !Text,
    _gmrStatusCode :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'gmrResourceId' - [Required] The 'Resource' identifier for the 'MethodResponse' resource.
--
-- * 'gmrHttpMethod' - [Required] The HTTP verb of the 'Method' resource.
--
-- * 'gmrStatusCode' - [Required] The status code for the 'MethodResponse' resource.
getMethodResponse ::
  -- | 'gmrRestAPIId'
  Text ->
  -- | 'gmrResourceId'
  Text ->
  -- | 'gmrHttpMethod'
  Text ->
  -- | 'gmrStatusCode'
  Text ->
  GetMethodResponse
getMethodResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    GetMethodResponse'
      { _gmrRestAPIId = pRestAPIId_,
        _gmrResourceId = pResourceId_,
        _gmrHttpMethod = pHttpMethod_,
        _gmrStatusCode = pStatusCode_
      }

-- | [Required] The string identifier of the associated 'RestApi' .
gmrRestAPIId :: Lens' GetMethodResponse Text
gmrRestAPIId = lens _gmrRestAPIId (\s a -> s {_gmrRestAPIId = a})

-- | [Required] The 'Resource' identifier for the 'MethodResponse' resource.
gmrResourceId :: Lens' GetMethodResponse Text
gmrResourceId = lens _gmrResourceId (\s a -> s {_gmrResourceId = a})

-- | [Required] The HTTP verb of the 'Method' resource.
gmrHttpMethod :: Lens' GetMethodResponse Text
gmrHttpMethod = lens _gmrHttpMethod (\s a -> s {_gmrHttpMethod = a})

-- | [Required] The status code for the 'MethodResponse' resource.
gmrStatusCode :: Lens' GetMethodResponse Text
gmrStatusCode = lens _gmrStatusCode (\s a -> s {_gmrStatusCode = a})

instance AWSRequest GetMethodResponse where
  type Rs GetMethodResponse = MethodResponse
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetMethodResponse

instance NFData GetMethodResponse

instance ToHeaders GetMethodResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetMethodResponse where
  toPath GetMethodResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _gmrRestAPIId,
        "/resources/",
        toBS _gmrResourceId,
        "/methods/",
        toBS _gmrHttpMethod,
        "/responses/",
        toBS _gmrStatusCode
      ]

instance ToQuery GetMethodResponse where
  toQuery = const mempty
