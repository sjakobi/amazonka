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
-- Module      : Network.AWS.IoT.DeleteOTAUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an OTA update.
module Network.AWS.IoT.DeleteOTAUpdate
  ( -- * Creating a Request
    deleteOTAUpdate,
    DeleteOTAUpdate,

    -- * Request Lenses
    dotauForceDeleteAWSJob,
    dotauDeleteStream,
    dotauOtaUpdateId,

    -- * Destructuring the Response
    deleteOTAUpdateResponse,
    DeleteOTAUpdateResponse,

    -- * Response Lenses
    dotaurrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteOTAUpdate' smart constructor.
data DeleteOTAUpdate = DeleteOTAUpdate'
  { _dotauForceDeleteAWSJob ::
      !(Maybe Bool),
    _dotauDeleteStream :: !(Maybe Bool),
    _dotauOtaUpdateId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteOTAUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dotauForceDeleteAWSJob' - When true, deletes the AWS job created by the OTAUpdate process even if it is "IN_PROGRESS". Otherwise, if the job is not in a terminal state ("COMPLETED" or "CANCELED") an exception will occur. The default is false.
--
-- * 'dotauDeleteStream' - When true, the stream created by the OTAUpdate process is deleted when the OTA update is deleted. Ignored if the stream specified in the OTAUpdate is supplied by the user.
--
-- * 'dotauOtaUpdateId' - The ID of the OTA update to delete.
deleteOTAUpdate ::
  -- | 'dotauOtaUpdateId'
  Text ->
  DeleteOTAUpdate
deleteOTAUpdate pOtaUpdateId_ =
  DeleteOTAUpdate'
    { _dotauForceDeleteAWSJob = Nothing,
      _dotauDeleteStream = Nothing,
      _dotauOtaUpdateId = pOtaUpdateId_
    }

-- | When true, deletes the AWS job created by the OTAUpdate process even if it is "IN_PROGRESS". Otherwise, if the job is not in a terminal state ("COMPLETED" or "CANCELED") an exception will occur. The default is false.
dotauForceDeleteAWSJob :: Lens' DeleteOTAUpdate (Maybe Bool)
dotauForceDeleteAWSJob = lens _dotauForceDeleteAWSJob (\s a -> s {_dotauForceDeleteAWSJob = a})

-- | When true, the stream created by the OTAUpdate process is deleted when the OTA update is deleted. Ignored if the stream specified in the OTAUpdate is supplied by the user.
dotauDeleteStream :: Lens' DeleteOTAUpdate (Maybe Bool)
dotauDeleteStream = lens _dotauDeleteStream (\s a -> s {_dotauDeleteStream = a})

-- | The ID of the OTA update to delete.
dotauOtaUpdateId :: Lens' DeleteOTAUpdate Text
dotauOtaUpdateId = lens _dotauOtaUpdateId (\s a -> s {_dotauOtaUpdateId = a})

instance AWSRequest DeleteOTAUpdate where
  type Rs DeleteOTAUpdate = DeleteOTAUpdateResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteOTAUpdateResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteOTAUpdate

instance NFData DeleteOTAUpdate

instance ToHeaders DeleteOTAUpdate where
  toHeaders = const mempty

instance ToPath DeleteOTAUpdate where
  toPath DeleteOTAUpdate' {..} =
    mconcat ["/otaUpdates/", toBS _dotauOtaUpdateId]

instance ToQuery DeleteOTAUpdate where
  toQuery DeleteOTAUpdate' {..} =
    mconcat
      [ "forceDeleteAWSJob" =: _dotauForceDeleteAWSJob,
        "deleteStream" =: _dotauDeleteStream
      ]

-- | /See:/ 'deleteOTAUpdateResponse' smart constructor.
newtype DeleteOTAUpdateResponse = DeleteOTAUpdateResponse'
  { _dotaurrsResponseStatus ::
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

-- | Creates a value of 'DeleteOTAUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dotaurrsResponseStatus' - -- | The response status code.
deleteOTAUpdateResponse ::
  -- | 'dotaurrsResponseStatus'
  Int ->
  DeleteOTAUpdateResponse
deleteOTAUpdateResponse pResponseStatus_ =
  DeleteOTAUpdateResponse'
    { _dotaurrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dotaurrsResponseStatus :: Lens' DeleteOTAUpdateResponse Int
dotaurrsResponseStatus = lens _dotaurrsResponseStatus (\s a -> s {_dotaurrsResponseStatus = a})

instance NFData DeleteOTAUpdateResponse
