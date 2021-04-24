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
-- Module      : Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a snapshot of a gateway from a volume recovery point. This operation is only supported in the cached volume gateway type.
--
--
-- A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To get a list of volume recovery point for cached volume gateway, use 'ListVolumeRecoveryPoints' .
--
-- In the @CreateSnapshotFromVolumeRecoveryPoint@ request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide a description for the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and its description appear in the AWS Storage Gateway console. In response, the gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.
module Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint
  ( -- * Creating a Request
    createSnapshotFromVolumeRecoveryPoint,
    CreateSnapshotFromVolumeRecoveryPoint,

    -- * Request Lenses
    csfvrpTags,
    csfvrpVolumeARN,
    csfvrpSnapshotDescription,

    -- * Destructuring the Response
    createSnapshotFromVolumeRecoveryPointResponse,
    CreateSnapshotFromVolumeRecoveryPointResponse,

    -- * Response Lenses
    csfvrprrsVolumeARN,
    csfvrprrsSnapshotId,
    csfvrprrsVolumeRecoveryPointTime,
    csfvrprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'createSnapshotFromVolumeRecoveryPoint' smart constructor.
data CreateSnapshotFromVolumeRecoveryPoint = CreateSnapshotFromVolumeRecoveryPoint'
  { _csfvrpTags ::
      !( Maybe
           [Tag]
       ),
    _csfvrpVolumeARN ::
      !Text,
    _csfvrpSnapshotDescription ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSnapshotFromVolumeRecoveryPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csfvrpTags' - A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value pair.
--
-- * 'csfvrpVolumeARN' - The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
--
-- * 'csfvrpSnapshotDescription' - Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the __Description__ field, and in the AWS Storage Gateway snapshot __Details__ pane, __Description__ field.
createSnapshotFromVolumeRecoveryPoint ::
  -- | 'csfvrpVolumeARN'
  Text ->
  -- | 'csfvrpSnapshotDescription'
  Text ->
  CreateSnapshotFromVolumeRecoveryPoint
createSnapshotFromVolumeRecoveryPoint
  pVolumeARN_
  pSnapshotDescription_ =
    CreateSnapshotFromVolumeRecoveryPoint'
      { _csfvrpTags =
          Nothing,
        _csfvrpVolumeARN = pVolumeARN_,
        _csfvrpSnapshotDescription =
          pSnapshotDescription_
      }

-- | A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value pair.
csfvrpTags :: Lens' CreateSnapshotFromVolumeRecoveryPoint [Tag]
csfvrpTags = lens _csfvrpTags (\s a -> s {_csfvrpTags = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
csfvrpVolumeARN :: Lens' CreateSnapshotFromVolumeRecoveryPoint Text
csfvrpVolumeARN = lens _csfvrpVolumeARN (\s a -> s {_csfvrpVolumeARN = a})

-- | Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the __Description__ field, and in the AWS Storage Gateway snapshot __Details__ pane, __Description__ field.
csfvrpSnapshotDescription :: Lens' CreateSnapshotFromVolumeRecoveryPoint Text
csfvrpSnapshotDescription = lens _csfvrpSnapshotDescription (\s a -> s {_csfvrpSnapshotDescription = a})

instance
  AWSRequest
    CreateSnapshotFromVolumeRecoveryPoint
  where
  type
    Rs CreateSnapshotFromVolumeRecoveryPoint =
      CreateSnapshotFromVolumeRecoveryPointResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          CreateSnapshotFromVolumeRecoveryPointResponse'
            <$> (x .?> "VolumeARN")
            <*> (x .?> "SnapshotId")
            <*> (x .?> "VolumeRecoveryPointTime")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    CreateSnapshotFromVolumeRecoveryPoint

instance NFData CreateSnapshotFromVolumeRecoveryPoint

instance
  ToHeaders
    CreateSnapshotFromVolumeRecoveryPoint
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.CreateSnapshotFromVolumeRecoveryPoint" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSnapshotFromVolumeRecoveryPoint where
  toJSON CreateSnapshotFromVolumeRecoveryPoint' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _csfvrpTags,
            Just ("VolumeARN" .= _csfvrpVolumeARN),
            Just
              ( "SnapshotDescription"
                  .= _csfvrpSnapshotDescription
              )
          ]
      )

instance ToPath CreateSnapshotFromVolumeRecoveryPoint where
  toPath = const "/"

instance
  ToQuery
    CreateSnapshotFromVolumeRecoveryPoint
  where
  toQuery = const mempty

-- | /See:/ 'createSnapshotFromVolumeRecoveryPointResponse' smart constructor.
data CreateSnapshotFromVolumeRecoveryPointResponse = CreateSnapshotFromVolumeRecoveryPointResponse'
  { _csfvrprrsVolumeARN ::
      !( Maybe
           Text
       ),
    _csfvrprrsSnapshotId ::
      !( Maybe
           Text
       ),
    _csfvrprrsVolumeRecoveryPointTime ::
      !( Maybe
           Text
       ),
    _csfvrprrsResponseStatus ::
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

-- | Creates a value of 'CreateSnapshotFromVolumeRecoveryPointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csfvrprrsVolumeARN' - The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
--
-- * 'csfvrprrsSnapshotId' - The ID of the snapshot.
--
-- * 'csfvrprrsVolumeRecoveryPointTime' - The time the volume was created from the recovery point.
--
-- * 'csfvrprrsResponseStatus' - -- | The response status code.
createSnapshotFromVolumeRecoveryPointResponse ::
  -- | 'csfvrprrsResponseStatus'
  Int ->
  CreateSnapshotFromVolumeRecoveryPointResponse
createSnapshotFromVolumeRecoveryPointResponse
  pResponseStatus_ =
    CreateSnapshotFromVolumeRecoveryPointResponse'
      { _csfvrprrsVolumeARN =
          Nothing,
        _csfvrprrsSnapshotId =
          Nothing,
        _csfvrprrsVolumeRecoveryPointTime =
          Nothing,
        _csfvrprrsResponseStatus =
          pResponseStatus_
      }

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
csfvrprrsVolumeARN :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprrsVolumeARN = lens _csfvrprrsVolumeARN (\s a -> s {_csfvrprrsVolumeARN = a})

-- | The ID of the snapshot.
csfvrprrsSnapshotId :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprrsSnapshotId = lens _csfvrprrsSnapshotId (\s a -> s {_csfvrprrsSnapshotId = a})

-- | The time the volume was created from the recovery point.
csfvrprrsVolumeRecoveryPointTime :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprrsVolumeRecoveryPointTime = lens _csfvrprrsVolumeRecoveryPointTime (\s a -> s {_csfvrprrsVolumeRecoveryPointTime = a})

-- | -- | The response status code.
csfvrprrsResponseStatus :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse Int
csfvrprrsResponseStatus = lens _csfvrprrsResponseStatus (\s a -> s {_csfvrprrsResponseStatus = a})

instance
  NFData
    CreateSnapshotFromVolumeRecoveryPointResponse
