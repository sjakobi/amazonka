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
-- Module      : Network.AWS.MediaPackage.DescribeHarvestJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about an existing HarvestJob.
module Network.AWS.MediaPackage.DescribeHarvestJob
  ( -- * Creating a Request
    describeHarvestJob,
    DescribeHarvestJob,

    -- * Request Lenses
    dhjId,

    -- * Destructuring the Response
    describeHarvestJobResponse,
    DescribeHarvestJobResponse,

    -- * Response Lenses
    dhjrrsStatus,
    dhjrrsS3Destination,
    dhjrrsChannelId,
    dhjrrsStartTime,
    dhjrrsARN,
    dhjrrsId,
    dhjrrsCreatedAt,
    dhjrrsOriginEndpointId,
    dhjrrsEndTime,
    dhjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeHarvestJob' smart constructor.
newtype DescribeHarvestJob = DescribeHarvestJob'
  { _dhjId ::
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

-- | Creates a value of 'DescribeHarvestJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhjId' - The ID of the HarvestJob.
describeHarvestJob ::
  -- | 'dhjId'
  Text ->
  DescribeHarvestJob
describeHarvestJob pId_ =
  DescribeHarvestJob' {_dhjId = pId_}

-- | The ID of the HarvestJob.
dhjId :: Lens' DescribeHarvestJob Text
dhjId = lens _dhjId (\s a -> s {_dhjId = a})

instance AWSRequest DescribeHarvestJob where
  type
    Rs DescribeHarvestJob =
      DescribeHarvestJobResponse
  request = get mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          DescribeHarvestJobResponse'
            <$> (x .?> "status")
            <*> (x .?> "s3Destination")
            <*> (x .?> "channelId")
            <*> (x .?> "startTime")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "createdAt")
            <*> (x .?> "originEndpointId")
            <*> (x .?> "endTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHarvestJob

instance NFData DescribeHarvestJob

instance ToHeaders DescribeHarvestJob where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeHarvestJob where
  toPath DescribeHarvestJob' {..} =
    mconcat ["/harvest_jobs/", toBS _dhjId]

instance ToQuery DescribeHarvestJob where
  toQuery = const mempty

-- | /See:/ 'describeHarvestJobResponse' smart constructor.
data DescribeHarvestJobResponse = DescribeHarvestJobResponse'
  { _dhjrrsStatus ::
      !(Maybe Status),
    _dhjrrsS3Destination ::
      !( Maybe
           S3Destination
       ),
    _dhjrrsChannelId ::
      !(Maybe Text),
    _dhjrrsStartTime ::
      !(Maybe Text),
    _dhjrrsARN ::
      !(Maybe Text),
    _dhjrrsId ::
      !(Maybe Text),
    _dhjrrsCreatedAt ::
      !(Maybe Text),
    _dhjrrsOriginEndpointId ::
      !(Maybe Text),
    _dhjrrsEndTime ::
      !(Maybe Text),
    _dhjrrsResponseStatus ::
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

-- | Creates a value of 'DescribeHarvestJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhjrrsStatus' - The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will include an explanation of why the HarvestJob failed.
--
-- * 'dhjrrsS3Destination' - Undocumented member.
--
-- * 'dhjrrsChannelId' - The ID of the Channel that the HarvestJob will harvest from.
--
-- * 'dhjrrsStartTime' - The start of the time-window which will be harvested.
--
-- * 'dhjrrsARN' - The Amazon Resource Name (ARN) assigned to the HarvestJob.
--
-- * 'dhjrrsId' - The ID of the HarvestJob. The ID must be unique within the region and it cannot be changed after the HarvestJob is submitted.
--
-- * 'dhjrrsCreatedAt' - The time the HarvestJob was submitted
--
-- * 'dhjrrsOriginEndpointId' - The ID of the OriginEndpoint that the HarvestJob will harvest from. This cannot be changed after the HarvestJob is submitted.
--
-- * 'dhjrrsEndTime' - The end of the time-window which will be harvested.
--
-- * 'dhjrrsResponseStatus' - -- | The response status code.
describeHarvestJobResponse ::
  -- | 'dhjrrsResponseStatus'
  Int ->
  DescribeHarvestJobResponse
describeHarvestJobResponse pResponseStatus_ =
  DescribeHarvestJobResponse'
    { _dhjrrsStatus =
        Nothing,
      _dhjrrsS3Destination = Nothing,
      _dhjrrsChannelId = Nothing,
      _dhjrrsStartTime = Nothing,
      _dhjrrsARN = Nothing,
      _dhjrrsId = Nothing,
      _dhjrrsCreatedAt = Nothing,
      _dhjrrsOriginEndpointId = Nothing,
      _dhjrrsEndTime = Nothing,
      _dhjrrsResponseStatus = pResponseStatus_
    }

-- | The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will include an explanation of why the HarvestJob failed.
dhjrrsStatus :: Lens' DescribeHarvestJobResponse (Maybe Status)
dhjrrsStatus = lens _dhjrrsStatus (\s a -> s {_dhjrrsStatus = a})

-- | Undocumented member.
dhjrrsS3Destination :: Lens' DescribeHarvestJobResponse (Maybe S3Destination)
dhjrrsS3Destination = lens _dhjrrsS3Destination (\s a -> s {_dhjrrsS3Destination = a})

-- | The ID of the Channel that the HarvestJob will harvest from.
dhjrrsChannelId :: Lens' DescribeHarvestJobResponse (Maybe Text)
dhjrrsChannelId = lens _dhjrrsChannelId (\s a -> s {_dhjrrsChannelId = a})

-- | The start of the time-window which will be harvested.
dhjrrsStartTime :: Lens' DescribeHarvestJobResponse (Maybe Text)
dhjrrsStartTime = lens _dhjrrsStartTime (\s a -> s {_dhjrrsStartTime = a})

-- | The Amazon Resource Name (ARN) assigned to the HarvestJob.
dhjrrsARN :: Lens' DescribeHarvestJobResponse (Maybe Text)
dhjrrsARN = lens _dhjrrsARN (\s a -> s {_dhjrrsARN = a})

-- | The ID of the HarvestJob. The ID must be unique within the region and it cannot be changed after the HarvestJob is submitted.
dhjrrsId :: Lens' DescribeHarvestJobResponse (Maybe Text)
dhjrrsId = lens _dhjrrsId (\s a -> s {_dhjrrsId = a})

-- | The time the HarvestJob was submitted
dhjrrsCreatedAt :: Lens' DescribeHarvestJobResponse (Maybe Text)
dhjrrsCreatedAt = lens _dhjrrsCreatedAt (\s a -> s {_dhjrrsCreatedAt = a})

-- | The ID of the OriginEndpoint that the HarvestJob will harvest from. This cannot be changed after the HarvestJob is submitted.
dhjrrsOriginEndpointId :: Lens' DescribeHarvestJobResponse (Maybe Text)
dhjrrsOriginEndpointId = lens _dhjrrsOriginEndpointId (\s a -> s {_dhjrrsOriginEndpointId = a})

-- | The end of the time-window which will be harvested.
dhjrrsEndTime :: Lens' DescribeHarvestJobResponse (Maybe Text)
dhjrrsEndTime = lens _dhjrrsEndTime (\s a -> s {_dhjrrsEndTime = a})

-- | -- | The response status code.
dhjrrsResponseStatus :: Lens' DescribeHarvestJobResponse Int
dhjrrsResponseStatus = lens _dhjrrsResponseStatus (\s a -> s {_dhjrrsResponseStatus = a})

instance NFData DescribeHarvestJobResponse
