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
-- Module      : Network.AWS.Pinpoint.UpdateEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
module Network.AWS.Pinpoint.UpdateEndpoint
  ( -- * Creating a Request
    updateEndpoint,
    UpdateEndpoint,

    -- * Request Lenses
    ueApplicationId,
    ueEndpointId,
    ueEndpointRequest,

    -- * Destructuring the Response
    updateEndpointResponse,
    UpdateEndpointResponse,

    -- * Response Lenses
    uerrsResponseStatus,
    uerrsMessageBody,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateEndpoint' smart constructor.
data UpdateEndpoint = UpdateEndpoint'
  { _ueApplicationId ::
      !Text,
    _ueEndpointId :: !Text,
    _ueEndpointRequest :: !EndpointRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'ueEndpointId' - The unique identifier for the endpoint.
--
-- * 'ueEndpointRequest' - Undocumented member.
updateEndpoint ::
  -- | 'ueApplicationId'
  Text ->
  -- | 'ueEndpointId'
  Text ->
  -- | 'ueEndpointRequest'
  EndpointRequest ->
  UpdateEndpoint
updateEndpoint
  pApplicationId_
  pEndpointId_
  pEndpointRequest_ =
    UpdateEndpoint'
      { _ueApplicationId = pApplicationId_,
        _ueEndpointId = pEndpointId_,
        _ueEndpointRequest = pEndpointRequest_
      }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
ueApplicationId :: Lens' UpdateEndpoint Text
ueApplicationId = lens _ueApplicationId (\s a -> s {_ueApplicationId = a})

-- | The unique identifier for the endpoint.
ueEndpointId :: Lens' UpdateEndpoint Text
ueEndpointId = lens _ueEndpointId (\s a -> s {_ueEndpointId = a})

-- | Undocumented member.
ueEndpointRequest :: Lens' UpdateEndpoint EndpointRequest
ueEndpointRequest = lens _ueEndpointRequest (\s a -> s {_ueEndpointRequest = a})

instance AWSRequest UpdateEndpoint where
  type Rs UpdateEndpoint = UpdateEndpointResponse
  request = putJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          UpdateEndpointResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable UpdateEndpoint

instance NFData UpdateEndpoint

instance ToHeaders UpdateEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateEndpoint where
  toJSON UpdateEndpoint' {..} =
    object
      ( catMaybes
          [Just ("EndpointRequest" .= _ueEndpointRequest)]
      )

instance ToPath UpdateEndpoint where
  toPath UpdateEndpoint' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _ueApplicationId,
        "/endpoints/",
        toBS _ueEndpointId
      ]

instance ToQuery UpdateEndpoint where
  toQuery = const mempty

-- | /See:/ 'updateEndpointResponse' smart constructor.
data UpdateEndpointResponse = UpdateEndpointResponse'
  { _uerrsResponseStatus ::
      !Int,
    _uerrsMessageBody ::
      !MessageBody
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uerrsResponseStatus' - -- | The response status code.
--
-- * 'uerrsMessageBody' - Undocumented member.
updateEndpointResponse ::
  -- | 'uerrsResponseStatus'
  Int ->
  -- | 'uerrsMessageBody'
  MessageBody ->
  UpdateEndpointResponse
updateEndpointResponse pResponseStatus_ pMessageBody_ =
  UpdateEndpointResponse'
    { _uerrsResponseStatus =
        pResponseStatus_,
      _uerrsMessageBody = pMessageBody_
    }

-- | -- | The response status code.
uerrsResponseStatus :: Lens' UpdateEndpointResponse Int
uerrsResponseStatus = lens _uerrsResponseStatus (\s a -> s {_uerrsResponseStatus = a})

-- | Undocumented member.
uerrsMessageBody :: Lens' UpdateEndpointResponse MessageBody
uerrsMessageBody = lens _uerrsMessageBody (\s a -> s {_uerrsMessageBody = a})

instance NFData UpdateEndpointResponse
