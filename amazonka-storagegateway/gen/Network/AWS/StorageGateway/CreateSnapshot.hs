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
-- Module      : Network.AWS.StorageGateway.CreateSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a snapshot of a volume.
--
--
-- AWS Storage Gateway provides the ability to back up point-in-time snapshots of your data to Amazon Simple Storage (Amazon S3) for durable off-site recovery, as well as import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad hoc basis. This API enables you to take an ad hoc snapshot. For more information, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot Editing a snapshot schedule> .
--
-- In the @CreateSnapshot@ request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide description for the snapshot. When AWS Storage Gateway takes the snapshot of specified volume, the snapshot and description appears in the AWS Storage Gateway console. In response, AWS Storage Gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot. This operation is only supported in stored and cached volume gateway type.
--
-- /Important:/ Volume and snapshot IDs are changing to a longer length ID format. For more information, see the important note on the <https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html Welcome> page.
module Network.AWS.StorageGateway.CreateSnapshot
  ( -- * Creating a Request
    createSnapshot,
    CreateSnapshot,

    -- * Request Lenses
    csTags,
    csVolumeARN,
    csSnapshotDescription,

    -- * Destructuring the Response
    createSnapshotResponse,
    CreateSnapshotResponse,

    -- * Response Lenses
    csrrsVolumeARN,
    csrrsSnapshotId,
    csrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing one or more of the following fields:
--
--
--     * 'CreateSnapshotInput$SnapshotDescription'
--
--     * 'CreateSnapshotInput$VolumeARN'
--
--
--
--
-- /See:/ 'createSnapshot' smart constructor.
data CreateSnapshot = CreateSnapshot'
  { _csTags ::
      !(Maybe [Tag]),
    _csVolumeARN :: !Text,
    _csSnapshotDescription :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csTags' - A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value pair.
--
-- * 'csVolumeARN' - The Amazon Resource Name (ARN) of the volume. Use the 'ListVolumes' operation to return a list of gateway volumes.
--
-- * 'csSnapshotDescription' - Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the __Description__ field, and in the AWS Storage Gateway snapshot __Details__ pane, __Description__ field.
createSnapshot ::
  -- | 'csVolumeARN'
  Text ->
  -- | 'csSnapshotDescription'
  Text ->
  CreateSnapshot
createSnapshot pVolumeARN_ pSnapshotDescription_ =
  CreateSnapshot'
    { _csTags = Nothing,
      _csVolumeARN = pVolumeARN_,
      _csSnapshotDescription = pSnapshotDescription_
    }

-- | A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value pair.
csTags :: Lens' CreateSnapshot [Tag]
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the volume. Use the 'ListVolumes' operation to return a list of gateway volumes.
csVolumeARN :: Lens' CreateSnapshot Text
csVolumeARN = lens _csVolumeARN (\s a -> s {_csVolumeARN = a})

-- | Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the __Description__ field, and in the AWS Storage Gateway snapshot __Details__ pane, __Description__ field.
csSnapshotDescription :: Lens' CreateSnapshot Text
csSnapshotDescription = lens _csSnapshotDescription (\s a -> s {_csSnapshotDescription = a})

instance AWSRequest CreateSnapshot where
  type Rs CreateSnapshot = CreateSnapshotResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          CreateSnapshotResponse'
            <$> (x .?> "VolumeARN")
            <*> (x .?> "SnapshotId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSnapshot

instance NFData CreateSnapshot

instance ToHeaders CreateSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.CreateSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSnapshot where
  toJSON CreateSnapshot' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _csTags,
            Just ("VolumeARN" .= _csVolumeARN),
            Just
              ("SnapshotDescription" .= _csSnapshotDescription)
          ]
      )

instance ToPath CreateSnapshot where
  toPath = const "/"

instance ToQuery CreateSnapshot where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'createSnapshotResponse' smart constructor.
data CreateSnapshotResponse = CreateSnapshotResponse'
  { _csrrsVolumeARN ::
      !(Maybe Text),
    _csrrsSnapshotId ::
      !(Maybe Text),
    _csrrsResponseStatus ::
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

-- | Creates a value of 'CreateSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsVolumeARN' - The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.
--
-- * 'csrrsSnapshotId' - The snapshot ID that is used to refer to the snapshot in future operations such as describing snapshots (Amazon Elastic Compute Cloud API @DescribeSnapshots@ ) or creating a volume from a snapshot ('CreateStorediSCSIVolume' ).
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createSnapshotResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateSnapshotResponse
createSnapshotResponse pResponseStatus_ =
  CreateSnapshotResponse'
    { _csrrsVolumeARN = Nothing,
      _csrrsSnapshotId = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.
csrrsVolumeARN :: Lens' CreateSnapshotResponse (Maybe Text)
csrrsVolumeARN = lens _csrrsVolumeARN (\s a -> s {_csrrsVolumeARN = a})

-- | The snapshot ID that is used to refer to the snapshot in future operations such as describing snapshots (Amazon Elastic Compute Cloud API @DescribeSnapshots@ ) or creating a volume from a snapshot ('CreateStorediSCSIVolume' ).
csrrsSnapshotId :: Lens' CreateSnapshotResponse (Maybe Text)
csrrsSnapshotId = lens _csrrsSnapshotId (\s a -> s {_csrrsSnapshotId = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateSnapshotResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateSnapshotResponse
