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
-- Module      : Network.AWS.Comprehend.DeleteEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a model-specific endpoint for a previously-trained custom model. All endpoints must be deleted in order for the model to be deleted.
module Network.AWS.Comprehend.DeleteEndpoint
  ( -- * Creating a Request
    deleteEndpoint,
    DeleteEndpoint,

    -- * Request Lenses
    dEndpointARN,

    -- * Destructuring the Response
    deleteEndpointResponse,
    DeleteEndpointResponse,

    -- * Response Lenses
    derrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteEndpoint' smart constructor.
newtype DeleteEndpoint = DeleteEndpoint'
  { _dEndpointARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dEndpointARN' - The Amazon Resource Number (ARN) of the endpoint being deleted.
deleteEndpoint ::
  -- | 'dEndpointARN'
  Text ->
  DeleteEndpoint
deleteEndpoint pEndpointARN_ =
  DeleteEndpoint' {_dEndpointARN = pEndpointARN_}

-- | The Amazon Resource Number (ARN) of the endpoint being deleted.
dEndpointARN :: Lens' DeleteEndpoint Text
dEndpointARN = lens _dEndpointARN (\s a -> s {_dEndpointARN = a})

instance AWSRequest DeleteEndpoint where
  type Rs DeleteEndpoint = DeleteEndpointResponse
  request = postJSON comprehend
  response =
    receiveEmpty
      ( \s h x ->
          DeleteEndpointResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteEndpoint

instance NFData DeleteEndpoint

instance ToHeaders DeleteEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Comprehend_20171127.DeleteEndpoint" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteEndpoint where
  toJSON DeleteEndpoint' {..} =
    object
      (catMaybes [Just ("EndpointArn" .= _dEndpointARN)])

instance ToPath DeleteEndpoint where
  toPath = const "/"

instance ToQuery DeleteEndpoint where
  toQuery = const mempty

-- | /See:/ 'deleteEndpointResponse' smart constructor.
newtype DeleteEndpointResponse = DeleteEndpointResponse'
  { _derrsResponseStatus ::
      Int
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
deleteEndpointResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DeleteEndpointResponse
deleteEndpointResponse pResponseStatus_ =
  DeleteEndpointResponse'
    { _derrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
derrsResponseStatus :: Lens' DeleteEndpointResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DeleteEndpointResponse
