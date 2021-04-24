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
-- Module      : Network.AWS.Lightsail.DeleteInstanceSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific snapshot of a virtual private server (or /instance/ ).
--
--
-- The @delete instance snapshot@ operation supports tag-based access control via resource tags applied to the resource identified by @instance snapshot name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.DeleteInstanceSnapshot
  ( -- * Creating a Request
    deleteInstanceSnapshot,
    DeleteInstanceSnapshot,

    -- * Request Lenses
    disInstanceSnapshotName,

    -- * Destructuring the Response
    deleteInstanceSnapshotResponse,
    DeleteInstanceSnapshotResponse,

    -- * Response Lenses
    disrrsOperations,
    disrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteInstanceSnapshot' smart constructor.
newtype DeleteInstanceSnapshot = DeleteInstanceSnapshot'
  { _disInstanceSnapshotName ::
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

-- | Creates a value of 'DeleteInstanceSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disInstanceSnapshotName' - The name of the snapshot to delete.
deleteInstanceSnapshot ::
  -- | 'disInstanceSnapshotName'
  Text ->
  DeleteInstanceSnapshot
deleteInstanceSnapshot pInstanceSnapshotName_ =
  DeleteInstanceSnapshot'
    { _disInstanceSnapshotName =
        pInstanceSnapshotName_
    }

-- | The name of the snapshot to delete.
disInstanceSnapshotName :: Lens' DeleteInstanceSnapshot Text
disInstanceSnapshotName = lens _disInstanceSnapshotName (\s a -> s {_disInstanceSnapshotName = a})

instance AWSRequest DeleteInstanceSnapshot where
  type
    Rs DeleteInstanceSnapshot =
      DeleteInstanceSnapshotResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteInstanceSnapshotResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteInstanceSnapshot

instance NFData DeleteInstanceSnapshot

instance ToHeaders DeleteInstanceSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.DeleteInstanceSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteInstanceSnapshot where
  toJSON DeleteInstanceSnapshot' {..} =
    object
      ( catMaybes
          [ Just
              ( "instanceSnapshotName"
                  .= _disInstanceSnapshotName
              )
          ]
      )

instance ToPath DeleteInstanceSnapshot where
  toPath = const "/"

instance ToQuery DeleteInstanceSnapshot where
  toQuery = const mempty

-- | /See:/ 'deleteInstanceSnapshotResponse' smart constructor.
data DeleteInstanceSnapshotResponse = DeleteInstanceSnapshotResponse'
  { _disrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _disrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteInstanceSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'disrrsResponseStatus' - -- | The response status code.
deleteInstanceSnapshotResponse ::
  -- | 'disrrsResponseStatus'
  Int ->
  DeleteInstanceSnapshotResponse
deleteInstanceSnapshotResponse pResponseStatus_ =
  DeleteInstanceSnapshotResponse'
    { _disrrsOperations =
        Nothing,
      _disrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
disrrsOperations :: Lens' DeleteInstanceSnapshotResponse [Operation]
disrrsOperations = lens _disrrsOperations (\s a -> s {_disrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
disrrsResponseStatus :: Lens' DeleteInstanceSnapshotResponse Int
disrrsResponseStatus = lens _disrrsResponseStatus (\s a -> s {_disrrsResponseStatus = a})

instance NFData DeleteInstanceSnapshotResponse
