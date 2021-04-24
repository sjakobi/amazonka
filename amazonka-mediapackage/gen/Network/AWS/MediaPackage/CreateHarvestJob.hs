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
-- Module      : Network.AWS.MediaPackage.CreateHarvestJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new HarvestJob record.
module Network.AWS.MediaPackage.CreateHarvestJob
  ( -- * Creating a Request
    createHarvestJob,
    CreateHarvestJob,

    -- * Request Lenses
    chjS3Destination,
    chjEndTime,
    chjOriginEndpointId,
    chjStartTime,
    chjId,

    -- * Destructuring the Response
    createHarvestJobResponse,
    CreateHarvestJobResponse,

    -- * Response Lenses
    chjrrsStatus,
    chjrrsS3Destination,
    chjrrsChannelId,
    chjrrsStartTime,
    chjrrsARN,
    chjrrsId,
    chjrrsCreatedAt,
    chjrrsOriginEndpointId,
    chjrrsEndTime,
    chjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Configuration parameters used to create a new HarvestJob.
--
-- /See:/ 'createHarvestJob' smart constructor.
data CreateHarvestJob = CreateHarvestJob'
  { _chjS3Destination ::
      !S3Destination,
    _chjEndTime :: !Text,
    _chjOriginEndpointId :: !Text,
    _chjStartTime :: !Text,
    _chjId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateHarvestJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chjS3Destination' - Undocumented member.
--
-- * 'chjEndTime' - The end of the time-window which will be harvested
--
-- * 'chjOriginEndpointId' - The ID of the OriginEndpoint that the HarvestJob will harvest from. This cannot be changed after the HarvestJob is submitted.
--
-- * 'chjStartTime' - The start of the time-window which will be harvested
--
-- * 'chjId' - The ID of the HarvestJob. The ID must be unique within the region and it cannot be changed after the HarvestJob is submitted
createHarvestJob ::
  -- | 'chjS3Destination'
  S3Destination ->
  -- | 'chjEndTime'
  Text ->
  -- | 'chjOriginEndpointId'
  Text ->
  -- | 'chjStartTime'
  Text ->
  -- | 'chjId'
  Text ->
  CreateHarvestJob
createHarvestJob
  pS3Destination_
  pEndTime_
  pOriginEndpointId_
  pStartTime_
  pId_ =
    CreateHarvestJob'
      { _chjS3Destination =
          pS3Destination_,
        _chjEndTime = pEndTime_,
        _chjOriginEndpointId = pOriginEndpointId_,
        _chjStartTime = pStartTime_,
        _chjId = pId_
      }

-- | Undocumented member.
chjS3Destination :: Lens' CreateHarvestJob S3Destination
chjS3Destination = lens _chjS3Destination (\s a -> s {_chjS3Destination = a})

-- | The end of the time-window which will be harvested
chjEndTime :: Lens' CreateHarvestJob Text
chjEndTime = lens _chjEndTime (\s a -> s {_chjEndTime = a})

-- | The ID of the OriginEndpoint that the HarvestJob will harvest from. This cannot be changed after the HarvestJob is submitted.
chjOriginEndpointId :: Lens' CreateHarvestJob Text
chjOriginEndpointId = lens _chjOriginEndpointId (\s a -> s {_chjOriginEndpointId = a})

-- | The start of the time-window which will be harvested
chjStartTime :: Lens' CreateHarvestJob Text
chjStartTime = lens _chjStartTime (\s a -> s {_chjStartTime = a})

-- | The ID of the HarvestJob. The ID must be unique within the region and it cannot be changed after the HarvestJob is submitted
chjId :: Lens' CreateHarvestJob Text
chjId = lens _chjId (\s a -> s {_chjId = a})

instance AWSRequest CreateHarvestJob where
  type Rs CreateHarvestJob = CreateHarvestJobResponse
  request = postJSON mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          CreateHarvestJobResponse'
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

instance Hashable CreateHarvestJob

instance NFData CreateHarvestJob

instance ToHeaders CreateHarvestJob where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateHarvestJob where
  toJSON CreateHarvestJob' {..} =
    object
      ( catMaybes
          [ Just ("s3Destination" .= _chjS3Destination),
            Just ("endTime" .= _chjEndTime),
            Just ("originEndpointId" .= _chjOriginEndpointId),
            Just ("startTime" .= _chjStartTime),
            Just ("id" .= _chjId)
          ]
      )

instance ToPath CreateHarvestJob where
  toPath = const "/harvest_jobs"

instance ToQuery CreateHarvestJob where
  toQuery = const mempty

-- | /See:/ 'createHarvestJobResponse' smart constructor.
data CreateHarvestJobResponse = CreateHarvestJobResponse'
  { _chjrrsStatus ::
      !(Maybe Status),
    _chjrrsS3Destination ::
      !( Maybe
           S3Destination
       ),
    _chjrrsChannelId ::
      !(Maybe Text),
    _chjrrsStartTime ::
      !(Maybe Text),
    _chjrrsARN ::
      !(Maybe Text),
    _chjrrsId ::
      !(Maybe Text),
    _chjrrsCreatedAt ::
      !(Maybe Text),
    _chjrrsOriginEndpointId ::
      !(Maybe Text),
    _chjrrsEndTime ::
      !(Maybe Text),
    _chjrrsResponseStatus ::
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

-- | Creates a value of 'CreateHarvestJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chjrrsStatus' - The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will include an explanation of why the HarvestJob failed.
--
-- * 'chjrrsS3Destination' - Undocumented member.
--
-- * 'chjrrsChannelId' - The ID of the Channel that the HarvestJob will harvest from.
--
-- * 'chjrrsStartTime' - The start of the time-window which will be harvested.
--
-- * 'chjrrsARN' - The Amazon Resource Name (ARN) assigned to the HarvestJob.
--
-- * 'chjrrsId' - The ID of the HarvestJob. The ID must be unique within the region and it cannot be changed after the HarvestJob is submitted.
--
-- * 'chjrrsCreatedAt' - The time the HarvestJob was submitted
--
-- * 'chjrrsOriginEndpointId' - The ID of the OriginEndpoint that the HarvestJob will harvest from. This cannot be changed after the HarvestJob is submitted.
--
-- * 'chjrrsEndTime' - The end of the time-window which will be harvested.
--
-- * 'chjrrsResponseStatus' - -- | The response status code.
createHarvestJobResponse ::
  -- | 'chjrrsResponseStatus'
  Int ->
  CreateHarvestJobResponse
createHarvestJobResponse pResponseStatus_ =
  CreateHarvestJobResponse'
    { _chjrrsStatus = Nothing,
      _chjrrsS3Destination = Nothing,
      _chjrrsChannelId = Nothing,
      _chjrrsStartTime = Nothing,
      _chjrrsARN = Nothing,
      _chjrrsId = Nothing,
      _chjrrsCreatedAt = Nothing,
      _chjrrsOriginEndpointId = Nothing,
      _chjrrsEndTime = Nothing,
      _chjrrsResponseStatus = pResponseStatus_
    }

-- | The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will include an explanation of why the HarvestJob failed.
chjrrsStatus :: Lens' CreateHarvestJobResponse (Maybe Status)
chjrrsStatus = lens _chjrrsStatus (\s a -> s {_chjrrsStatus = a})

-- | Undocumented member.
chjrrsS3Destination :: Lens' CreateHarvestJobResponse (Maybe S3Destination)
chjrrsS3Destination = lens _chjrrsS3Destination (\s a -> s {_chjrrsS3Destination = a})

-- | The ID of the Channel that the HarvestJob will harvest from.
chjrrsChannelId :: Lens' CreateHarvestJobResponse (Maybe Text)
chjrrsChannelId = lens _chjrrsChannelId (\s a -> s {_chjrrsChannelId = a})

-- | The start of the time-window which will be harvested.
chjrrsStartTime :: Lens' CreateHarvestJobResponse (Maybe Text)
chjrrsStartTime = lens _chjrrsStartTime (\s a -> s {_chjrrsStartTime = a})

-- | The Amazon Resource Name (ARN) assigned to the HarvestJob.
chjrrsARN :: Lens' CreateHarvestJobResponse (Maybe Text)
chjrrsARN = lens _chjrrsARN (\s a -> s {_chjrrsARN = a})

-- | The ID of the HarvestJob. The ID must be unique within the region and it cannot be changed after the HarvestJob is submitted.
chjrrsId :: Lens' CreateHarvestJobResponse (Maybe Text)
chjrrsId = lens _chjrrsId (\s a -> s {_chjrrsId = a})

-- | The time the HarvestJob was submitted
chjrrsCreatedAt :: Lens' CreateHarvestJobResponse (Maybe Text)
chjrrsCreatedAt = lens _chjrrsCreatedAt (\s a -> s {_chjrrsCreatedAt = a})

-- | The ID of the OriginEndpoint that the HarvestJob will harvest from. This cannot be changed after the HarvestJob is submitted.
chjrrsOriginEndpointId :: Lens' CreateHarvestJobResponse (Maybe Text)
chjrrsOriginEndpointId = lens _chjrrsOriginEndpointId (\s a -> s {_chjrrsOriginEndpointId = a})

-- | The end of the time-window which will be harvested.
chjrrsEndTime :: Lens' CreateHarvestJobResponse (Maybe Text)
chjrrsEndTime = lens _chjrrsEndTime (\s a -> s {_chjrrsEndTime = a})

-- | -- | The response status code.
chjrrsResponseStatus :: Lens' CreateHarvestJobResponse Int
chjrrsResponseStatus = lens _chjrrsResponseStatus (\s a -> s {_chjrrsResponseStatus = a})

instance NFData CreateHarvestJobResponse
