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
-- Module      : Network.AWS.Pinpoint.DeleteEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an endpoint from an application.
module Network.AWS.Pinpoint.DeleteEndpoint
  ( -- * Creating a Request
    deleteEndpoint,
    DeleteEndpoint,

    -- * Request Lenses
    deApplicationId,
    deEndpointId,

    -- * Destructuring the Response
    deleteEndpointResponse,
    DeleteEndpointResponse,

    -- * Response Lenses
    derrsResponseStatus,
    derrsEndpointResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteEndpoint' smart constructor.
data DeleteEndpoint = DeleteEndpoint'
  { _deApplicationId ::
      !Text,
    _deEndpointId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'deEndpointId' - The unique identifier for the endpoint.
deleteEndpoint ::
  -- | 'deApplicationId'
  Text ->
  -- | 'deEndpointId'
  Text ->
  DeleteEndpoint
deleteEndpoint pApplicationId_ pEndpointId_ =
  DeleteEndpoint'
    { _deApplicationId = pApplicationId_,
      _deEndpointId = pEndpointId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deApplicationId :: Lens' DeleteEndpoint Text
deApplicationId = lens _deApplicationId (\s a -> s {_deApplicationId = a})

-- | The unique identifier for the endpoint.
deEndpointId :: Lens' DeleteEndpoint Text
deEndpointId = lens _deEndpointId (\s a -> s {_deEndpointId = a})

instance AWSRequest DeleteEndpoint where
  type Rs DeleteEndpoint = DeleteEndpointResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteEndpointResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteEndpoint

instance NFData DeleteEndpoint

instance ToHeaders DeleteEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteEndpoint where
  toPath DeleteEndpoint' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _deApplicationId,
        "/endpoints/",
        toBS _deEndpointId
      ]

instance ToQuery DeleteEndpoint where
  toQuery = const mempty

-- | /See:/ 'deleteEndpointResponse' smart constructor.
data DeleteEndpointResponse = DeleteEndpointResponse'
  { _derrsResponseStatus ::
      !Int,
    _derrsEndpointResponse ::
      !EndpointResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsResponseStatus' - -- | The response status code.
--
-- * 'derrsEndpointResponse' - Undocumented member.
deleteEndpointResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  -- | 'derrsEndpointResponse'
  EndpointResponse ->
  DeleteEndpointResponse
deleteEndpointResponse
  pResponseStatus_
  pEndpointResponse_ =
    DeleteEndpointResponse'
      { _derrsResponseStatus =
          pResponseStatus_,
        _derrsEndpointResponse = pEndpointResponse_
      }

-- | -- | The response status code.
derrsResponseStatus :: Lens' DeleteEndpointResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

-- | Undocumented member.
derrsEndpointResponse :: Lens' DeleteEndpointResponse EndpointResponse
derrsEndpointResponse = lens _derrsEndpointResponse (\s a -> s {_derrsEndpointResponse = a})

instance NFData DeleteEndpointResponse
