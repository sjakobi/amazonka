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
-- Module      : Network.AWS.StorageGateway.DeleteSnapshotSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a snapshot of a volume.
--
--
-- You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API action enables you to delete a snapshot schedule for a volume. For more information, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/backing-up-volumes.html Backing up your volumes> . In the @DeleteSnapshotSchedule@ request, you identify the volume by providing its Amazon Resource Name (ARN). This operation is only supported in stored and cached volume gateway types.
module Network.AWS.StorageGateway.DeleteSnapshotSchedule
  ( -- * Creating a Request
    deleteSnapshotSchedule,
    DeleteSnapshotSchedule,

    -- * Request Lenses
    delVolumeARN,

    -- * Destructuring the Response
    deleteSnapshotScheduleResponse,
    DeleteSnapshotScheduleResponse,

    -- * Response Lenses
    delrsVolumeARN,
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'deleteSnapshotSchedule' smart constructor.
newtype DeleteSnapshotSchedule = DeleteSnapshotSchedule'
  { _delVolumeARN ::
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

-- | Creates a value of 'DeleteSnapshotSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delVolumeARN' - The volume which snapshot schedule to delete.
deleteSnapshotSchedule ::
  -- | 'delVolumeARN'
  Text ->
  DeleteSnapshotSchedule
deleteSnapshotSchedule pVolumeARN_ =
  DeleteSnapshotSchedule'
    { _delVolumeARN =
        pVolumeARN_
    }

-- | The volume which snapshot schedule to delete.
delVolumeARN :: Lens' DeleteSnapshotSchedule Text
delVolumeARN = lens _delVolumeARN (\s a -> s {_delVolumeARN = a})

instance AWSRequest DeleteSnapshotSchedule where
  type
    Rs DeleteSnapshotSchedule =
      DeleteSnapshotScheduleResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DeleteSnapshotScheduleResponse'
            <$> (x .?> "VolumeARN") <*> (pure (fromEnum s))
      )

instance Hashable DeleteSnapshotSchedule

instance NFData DeleteSnapshotSchedule

instance ToHeaders DeleteSnapshotSchedule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DeleteSnapshotSchedule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteSnapshotSchedule where
  toJSON DeleteSnapshotSchedule' {..} =
    object
      (catMaybes [Just ("VolumeARN" .= _delVolumeARN)])

instance ToPath DeleteSnapshotSchedule where
  toPath = const "/"

instance ToQuery DeleteSnapshotSchedule where
  toQuery = const mempty

-- | /See:/ 'deleteSnapshotScheduleResponse' smart constructor.
data DeleteSnapshotScheduleResponse = DeleteSnapshotScheduleResponse'
  { _delrsVolumeARN ::
      !( Maybe
           Text
       ),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteSnapshotScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsVolumeARN' - The volume which snapshot schedule was deleted.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteSnapshotScheduleResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteSnapshotScheduleResponse
deleteSnapshotScheduleResponse pResponseStatus_ =
  DeleteSnapshotScheduleResponse'
    { _delrsVolumeARN =
        Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | The volume which snapshot schedule was deleted.
delrsVolumeARN :: Lens' DeleteSnapshotScheduleResponse (Maybe Text)
delrsVolumeARN = lens _delrsVolumeARN (\s a -> s {_delrsVolumeARN = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteSnapshotScheduleResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteSnapshotScheduleResponse
