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
-- Module      : Network.AWS.Rekognition.StartPersonTracking
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the asynchronous tracking of a person's path in a stored video.
--
--
-- Amazon Rekognition Video can track the path of people in a video stored in an Amazon S3 bucket. Use 'Video' to specify the bucket name and the filename of the video. @StartPersonTracking@ returns a job identifier (@JobId@ ) which you use to get the results of the operation. When label detection is finished, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic that you specify in @NotificationChannel@ .
--
-- To get the results of the person detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call 'GetPersonTracking' and pass the job identifier (@JobId@ ) from the initial call to @StartPersonTracking@ .
module Network.AWS.Rekognition.StartPersonTracking
  ( -- * Creating a Request
    startPersonTracking,
    StartPersonTracking,

    -- * Request Lenses
    sptNotificationChannel,
    sptClientRequestToken,
    sptJobTag,
    sptVideo,

    -- * Destructuring the Response
    startPersonTrackingResponse,
    StartPersonTrackingResponse,

    -- * Response Lenses
    sptrrsJobId,
    sptrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startPersonTracking' smart constructor.
data StartPersonTracking = StartPersonTracking'
  { _sptNotificationChannel ::
      !(Maybe NotificationChannel),
    _sptClientRequestToken ::
      !(Maybe Text),
    _sptJobTag :: !(Maybe Text),
    _sptVideo :: !Video
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartPersonTracking' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sptNotificationChannel' - The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection operation to.
--
-- * 'sptClientRequestToken' - Idempotent token used to identify the start request. If you use the same token with multiple @StartPersonTracking@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
--
-- * 'sptJobTag' - An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
--
-- * 'sptVideo' - The video in which you want to detect people. The video must be stored in an Amazon S3 bucket.
startPersonTracking ::
  -- | 'sptVideo'
  Video ->
  StartPersonTracking
startPersonTracking pVideo_ =
  StartPersonTracking'
    { _sptNotificationChannel =
        Nothing,
      _sptClientRequestToken = Nothing,
      _sptJobTag = Nothing,
      _sptVideo = pVideo_
    }

-- | The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection operation to.
sptNotificationChannel :: Lens' StartPersonTracking (Maybe NotificationChannel)
sptNotificationChannel = lens _sptNotificationChannel (\s a -> s {_sptNotificationChannel = a})

-- | Idempotent token used to identify the start request. If you use the same token with multiple @StartPersonTracking@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
sptClientRequestToken :: Lens' StartPersonTracking (Maybe Text)
sptClientRequestToken = lens _sptClientRequestToken (\s a -> s {_sptClientRequestToken = a})

-- | An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
sptJobTag :: Lens' StartPersonTracking (Maybe Text)
sptJobTag = lens _sptJobTag (\s a -> s {_sptJobTag = a})

-- | The video in which you want to detect people. The video must be stored in an Amazon S3 bucket.
sptVideo :: Lens' StartPersonTracking Video
sptVideo = lens _sptVideo (\s a -> s {_sptVideo = a})

instance AWSRequest StartPersonTracking where
  type
    Rs StartPersonTracking =
      StartPersonTrackingResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          StartPersonTrackingResponse'
            <$> (x .?> "JobId") <*> (pure (fromEnum s))
      )

instance Hashable StartPersonTracking

instance NFData StartPersonTracking

instance ToHeaders StartPersonTracking where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.StartPersonTracking" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartPersonTracking where
  toJSON StartPersonTracking' {..} =
    object
      ( catMaybes
          [ ("NotificationChannel" .=)
              <$> _sptNotificationChannel,
            ("ClientRequestToken" .=) <$> _sptClientRequestToken,
            ("JobTag" .=) <$> _sptJobTag,
            Just ("Video" .= _sptVideo)
          ]
      )

instance ToPath StartPersonTracking where
  toPath = const "/"

instance ToQuery StartPersonTracking where
  toQuery = const mempty

-- | /See:/ 'startPersonTrackingResponse' smart constructor.
data StartPersonTrackingResponse = StartPersonTrackingResponse'
  { _sptrrsJobId ::
      !(Maybe Text),
    _sptrrsResponseStatus ::
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

-- | Creates a value of 'StartPersonTrackingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sptrrsJobId' - The identifier for the person detection job. Use @JobId@ to identify the job in a subsequent call to @GetPersonTracking@ .
--
-- * 'sptrrsResponseStatus' - -- | The response status code.
startPersonTrackingResponse ::
  -- | 'sptrrsResponseStatus'
  Int ->
  StartPersonTrackingResponse
startPersonTrackingResponse pResponseStatus_ =
  StartPersonTrackingResponse'
    { _sptrrsJobId =
        Nothing,
      _sptrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for the person detection job. Use @JobId@ to identify the job in a subsequent call to @GetPersonTracking@ .
sptrrsJobId :: Lens' StartPersonTrackingResponse (Maybe Text)
sptrrsJobId = lens _sptrrsJobId (\s a -> s {_sptrrsJobId = a})

-- | -- | The response status code.
sptrrsResponseStatus :: Lens' StartPersonTrackingResponse Int
sptrrsResponseStatus = lens _sptrrsResponseStatus (\s a -> s {_sptrrsResponseStatus = a})

instance NFData StartPersonTrackingResponse
