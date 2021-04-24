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
-- Module      : Network.AWS.DMS.DeleteEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified endpoint.
module Network.AWS.DMS.DeleteEndpoint
  ( -- * Creating a Request
    deleteEndpoint,
    DeleteEndpoint,

    -- * Request Lenses
    deEndpointARN,

    -- * Destructuring the Response
    deleteEndpointResponse,
    DeleteEndpointResponse,

    -- * Response Lenses
    derrsEndpoint,
    derrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'deleteEndpoint' smart constructor.
newtype DeleteEndpoint = DeleteEndpoint'
  { _deEndpointARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
deleteEndpoint ::
  -- | 'deEndpointARN'
  Text ->
  DeleteEndpoint
deleteEndpoint pEndpointARN_ =
  DeleteEndpoint' {_deEndpointARN = pEndpointARN_}

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
deEndpointARN :: Lens' DeleteEndpoint Text
deEndpointARN = lens _deEndpointARN (\s a -> s {_deEndpointARN = a})

instance AWSRequest DeleteEndpoint where
  type Rs DeleteEndpoint = DeleteEndpointResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DeleteEndpointResponse'
            <$> (x .?> "Endpoint") <*> (pure (fromEnum s))
      )

instance Hashable DeleteEndpoint

instance NFData DeleteEndpoint

instance ToHeaders DeleteEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDMSv20160101.DeleteEndpoint" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteEndpoint where
  toJSON DeleteEndpoint' {..} =
    object
      (catMaybes [Just ("EndpointArn" .= _deEndpointARN)])

instance ToPath DeleteEndpoint where
  toPath = const "/"

instance ToQuery DeleteEndpoint where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'deleteEndpointResponse' smart constructor.
data DeleteEndpointResponse = DeleteEndpointResponse'
  { _derrsEndpoint ::
      !(Maybe Endpoint),
    _derrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsEndpoint' - The endpoint that was deleted.
--
-- * 'derrsResponseStatus' - -- | The response status code.
deleteEndpointResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DeleteEndpointResponse
deleteEndpointResponse pResponseStatus_ =
  DeleteEndpointResponse'
    { _derrsEndpoint = Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | The endpoint that was deleted.
derrsEndpoint :: Lens' DeleteEndpointResponse (Maybe Endpoint)
derrsEndpoint = lens _derrsEndpoint (\s a -> s {_derrsEndpoint = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DeleteEndpointResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DeleteEndpointResponse
