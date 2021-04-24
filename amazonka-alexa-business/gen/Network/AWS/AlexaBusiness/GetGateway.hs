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
-- Module      : Network.AWS.AlexaBusiness.GetGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a gateway.
module Network.AWS.AlexaBusiness.GetGateway
  ( -- * Creating a Request
    getGateway,
    GetGateway,

    -- * Request Lenses
    ggGatewayARN,

    -- * Destructuring the Response
    getGatewayResponse,
    GetGatewayResponse,

    -- * Response Lenses
    ggrrsGateway,
    ggrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGateway' smart constructor.
newtype GetGateway = GetGateway'
  { _ggGatewayARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggGatewayARN' - The ARN of the gateway to get.
getGateway ::
  -- | 'ggGatewayARN'
  Text ->
  GetGateway
getGateway pGatewayARN_ =
  GetGateway' {_ggGatewayARN = pGatewayARN_}

-- | The ARN of the gateway to get.
ggGatewayARN :: Lens' GetGateway Text
ggGatewayARN = lens _ggGatewayARN (\s a -> s {_ggGatewayARN = a})

instance AWSRequest GetGateway where
  type Rs GetGateway = GetGatewayResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          GetGatewayResponse'
            <$> (x .?> "Gateway") <*> (pure (fromEnum s))
      )

instance Hashable GetGateway

instance NFData GetGateway

instance ToHeaders GetGateway where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.GetGateway" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetGateway where
  toJSON GetGateway' {..} =
    object
      (catMaybes [Just ("GatewayArn" .= _ggGatewayARN)])

instance ToPath GetGateway where
  toPath = const "/"

instance ToQuery GetGateway where
  toQuery = const mempty

-- | /See:/ 'getGatewayResponse' smart constructor.
data GetGatewayResponse = GetGatewayResponse'
  { _ggrrsGateway ::
      !(Maybe Gateway),
    _ggrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrrsGateway' - The details of the gateway.
--
-- * 'ggrrsResponseStatus' - -- | The response status code.
getGatewayResponse ::
  -- | 'ggrrsResponseStatus'
  Int ->
  GetGatewayResponse
getGatewayResponse pResponseStatus_ =
  GetGatewayResponse'
    { _ggrrsGateway = Nothing,
      _ggrrsResponseStatus = pResponseStatus_
    }

-- | The details of the gateway.
ggrrsGateway :: Lens' GetGatewayResponse (Maybe Gateway)
ggrrsGateway = lens _ggrrsGateway (\s a -> s {_ggrrsGateway = a})

-- | -- | The response status code.
ggrrsResponseStatus :: Lens' GetGatewayResponse Int
ggrrsResponseStatus = lens _ggrrsResponseStatus (\s a -> s {_ggrrsResponseStatus = a})

instance NFData GetGatewayResponse
