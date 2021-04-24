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
-- Module      : Network.AWS.StorageGateway.DescribeSnapshotSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the snapshot schedule for the specified gateway volume. The snapshot schedule information includes intervals at which snapshots are automatically initiated on the volume. This operation is only supported in the cached volume and stored volume types.
module Network.AWS.StorageGateway.DescribeSnapshotSchedule
  ( -- * Creating a Request
    describeSnapshotSchedule,
    DescribeSnapshotSchedule,

    -- * Request Lenses
    dssVolumeARN,

    -- * Destructuring the Response
    describeSnapshotScheduleResponse,
    DescribeSnapshotScheduleResponse,

    -- * Response Lenses
    dssrrsRecurrenceInHours,
    dssrrsVolumeARN,
    dssrrsStartAt,
    dssrrsTags,
    dssrrsDescription,
    dssrrsTimezone,
    dssrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the 'DescribeSnapshotScheduleInput$VolumeARN' of the volume.
--
--
--
-- /See:/ 'describeSnapshotSchedule' smart constructor.
newtype DescribeSnapshotSchedule = DescribeSnapshotSchedule'
  { _dssVolumeARN ::
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

-- | Creates a value of 'DescribeSnapshotSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssVolumeARN' - The Amazon Resource Name (ARN) of the volume. Use the 'ListVolumes' operation to return a list of gateway volumes.
describeSnapshotSchedule ::
  -- | 'dssVolumeARN'
  Text ->
  DescribeSnapshotSchedule
describeSnapshotSchedule pVolumeARN_ =
  DescribeSnapshotSchedule'
    { _dssVolumeARN =
        pVolumeARN_
    }

-- | The Amazon Resource Name (ARN) of the volume. Use the 'ListVolumes' operation to return a list of gateway volumes.
dssVolumeARN :: Lens' DescribeSnapshotSchedule Text
dssVolumeARN = lens _dssVolumeARN (\s a -> s {_dssVolumeARN = a})

instance AWSRequest DescribeSnapshotSchedule where
  type
    Rs DescribeSnapshotSchedule =
      DescribeSnapshotScheduleResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeSnapshotScheduleResponse'
            <$> (x .?> "RecurrenceInHours")
            <*> (x .?> "VolumeARN")
            <*> (x .?> "StartAt")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "Description")
            <*> (x .?> "Timezone")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSnapshotSchedule

instance NFData DescribeSnapshotSchedule

instance ToHeaders DescribeSnapshotSchedule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeSnapshotSchedule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSnapshotSchedule where
  toJSON DescribeSnapshotSchedule' {..} =
    object
      (catMaybes [Just ("VolumeARN" .= _dssVolumeARN)])

instance ToPath DescribeSnapshotSchedule where
  toPath = const "/"

instance ToQuery DescribeSnapshotSchedule where
  toQuery = const mempty

-- | /See:/ 'describeSnapshotScheduleResponse' smart constructor.
data DescribeSnapshotScheduleResponse = DescribeSnapshotScheduleResponse'
  { _dssrrsRecurrenceInHours ::
      !( Maybe
           Nat
       ),
    _dssrrsVolumeARN ::
      !( Maybe
           Text
       ),
    _dssrrsStartAt ::
      !( Maybe
           Nat
       ),
    _dssrrsTags ::
      !( Maybe
           [Tag]
       ),
    _dssrrsDescription ::
      !( Maybe
           Text
       ),
    _dssrrsTimezone ::
      !( Maybe
           Text
       ),
    _dssrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSnapshotScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssrrsRecurrenceInHours' - The number of hours between snapshots.
--
-- * 'dssrrsVolumeARN' - The Amazon Resource Name (ARN) of the volume that was specified in the request.
--
-- * 'dssrrsStartAt' - The hour of the day at which the snapshot schedule begins represented as /hh/ , where /hh/ is the hour (0 to 23). The hour of the day is in the time zone of the gateway.
--
-- * 'dssrrsTags' - A list of up to 50 tags assigned to the snapshot schedule, sorted alphabetically by key name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can view all tags using the @ListTagsForResource@ API operation.
--
-- * 'dssrrsDescription' - The snapshot description.
--
-- * 'dssrrsTimezone' - A value that indicates the time zone of the gateway.
--
-- * 'dssrrsResponseStatus' - -- | The response status code.
describeSnapshotScheduleResponse ::
  -- | 'dssrrsResponseStatus'
  Int ->
  DescribeSnapshotScheduleResponse
describeSnapshotScheduleResponse pResponseStatus_ =
  DescribeSnapshotScheduleResponse'
    { _dssrrsRecurrenceInHours =
        Nothing,
      _dssrrsVolumeARN = Nothing,
      _dssrrsStartAt = Nothing,
      _dssrrsTags = Nothing,
      _dssrrsDescription = Nothing,
      _dssrrsTimezone = Nothing,
      _dssrrsResponseStatus = pResponseStatus_
    }

-- | The number of hours between snapshots.
dssrrsRecurrenceInHours :: Lens' DescribeSnapshotScheduleResponse (Maybe Natural)
dssrrsRecurrenceInHours = lens _dssrrsRecurrenceInHours (\s a -> s {_dssrrsRecurrenceInHours = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the volume that was specified in the request.
dssrrsVolumeARN :: Lens' DescribeSnapshotScheduleResponse (Maybe Text)
dssrrsVolumeARN = lens _dssrrsVolumeARN (\s a -> s {_dssrrsVolumeARN = a})

-- | The hour of the day at which the snapshot schedule begins represented as /hh/ , where /hh/ is the hour (0 to 23). The hour of the day is in the time zone of the gateway.
dssrrsStartAt :: Lens' DescribeSnapshotScheduleResponse (Maybe Natural)
dssrrsStartAt = lens _dssrrsStartAt (\s a -> s {_dssrrsStartAt = a}) . mapping _Nat

-- | A list of up to 50 tags assigned to the snapshot schedule, sorted alphabetically by key name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can view all tags using the @ListTagsForResource@ API operation.
dssrrsTags :: Lens' DescribeSnapshotScheduleResponse [Tag]
dssrrsTags = lens _dssrrsTags (\s a -> s {_dssrrsTags = a}) . _Default . _Coerce

-- | The snapshot description.
dssrrsDescription :: Lens' DescribeSnapshotScheduleResponse (Maybe Text)
dssrrsDescription = lens _dssrrsDescription (\s a -> s {_dssrrsDescription = a})

-- | A value that indicates the time zone of the gateway.
dssrrsTimezone :: Lens' DescribeSnapshotScheduleResponse (Maybe Text)
dssrrsTimezone = lens _dssrrsTimezone (\s a -> s {_dssrrsTimezone = a})

-- | -- | The response status code.
dssrrsResponseStatus :: Lens' DescribeSnapshotScheduleResponse Int
dssrrsResponseStatus = lens _dssrrsResponseStatus (\s a -> s {_dssrrsResponseStatus = a})

instance NFData DescribeSnapshotScheduleResponse
