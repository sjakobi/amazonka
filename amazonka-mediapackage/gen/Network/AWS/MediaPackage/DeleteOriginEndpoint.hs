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
-- Module      : Network.AWS.MediaPackage.DeleteOriginEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing OriginEndpoint.
module Network.AWS.MediaPackage.DeleteOriginEndpoint
  ( -- * Creating a Request
    deleteOriginEndpoint,
    DeleteOriginEndpoint,

    -- * Request Lenses
    doeId,

    -- * Destructuring the Response
    deleteOriginEndpointResponse,
    DeleteOriginEndpointResponse,

    -- * Response Lenses
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteOriginEndpoint' smart constructor.
newtype DeleteOriginEndpoint = DeleteOriginEndpoint'
  { _doeId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteOriginEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doeId' - The ID of the OriginEndpoint to delete.
deleteOriginEndpoint ::
  -- | 'doeId'
  Text ->
  DeleteOriginEndpoint
deleteOriginEndpoint pId_ =
  DeleteOriginEndpoint' {_doeId = pId_}

-- | The ID of the OriginEndpoint to delete.
doeId :: Lens' DeleteOriginEndpoint Text
doeId = lens _doeId (\s a -> s {_doeId = a})

instance AWSRequest DeleteOriginEndpoint where
  type
    Rs DeleteOriginEndpoint =
      DeleteOriginEndpointResponse
  request = delete mediaPackage
  response =
    receiveEmpty
      ( \s h x ->
          DeleteOriginEndpointResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteOriginEndpoint

instance NFData DeleteOriginEndpoint

instance ToHeaders DeleteOriginEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteOriginEndpoint where
  toPath DeleteOriginEndpoint' {..} =
    mconcat ["/origin_endpoints/", toBS _doeId]

instance ToQuery DeleteOriginEndpoint where
  toQuery = const mempty

-- | /See:/ 'deleteOriginEndpointResponse' smart constructor.
newtype DeleteOriginEndpointResponse = DeleteOriginEndpointResponse'
  { _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteOriginEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteOriginEndpointResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteOriginEndpointResponse
deleteOriginEndpointResponse pResponseStatus_ =
  DeleteOriginEndpointResponse'
    { _delrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteOriginEndpointResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteOriginEndpointResponse
