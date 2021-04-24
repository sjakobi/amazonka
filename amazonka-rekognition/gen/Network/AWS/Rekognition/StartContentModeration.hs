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
-- Module      : Network.AWS.Rekognition.StartContentModeration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous detection of unsafe content in a stored video.
--
--
-- Amazon Rekognition Video can moderate content in a video stored in an Amazon S3 bucket. Use 'Video' to specify the bucket name and the filename of the video. @StartContentModeration@ returns a job identifier (@JobId@ ) which you use to get the results of the analysis. When unsafe content analysis is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in @NotificationChannel@ .
--
-- To get the results of the unsafe content analysis, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call 'GetContentModeration' and pass the job identifier (@JobId@ ) from the initial call to @StartContentModeration@ .
--
-- For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.StartContentModeration
  ( -- * Creating a Request
    startContentModeration,
    StartContentModeration,

    -- * Request Lenses
    scmNotificationChannel,
    scmMinConfidence,
    scmClientRequestToken,
    scmJobTag,
    scmVideo,

    -- * Destructuring the Response
    startContentModerationResponse,
    StartContentModerationResponse,

    -- * Response Lenses
    scmrrsJobId,
    scmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startContentModeration' smart constructor.
data StartContentModeration = StartContentModeration'
  { _scmNotificationChannel ::
      !( Maybe
           NotificationChannel
       ),
    _scmMinConfidence ::
      !(Maybe Double),
    _scmClientRequestToken ::
      !(Maybe Text),
    _scmJobTag ::
      !(Maybe Text),
    _scmVideo :: !Video
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartContentModeration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scmNotificationChannel' - The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the unsafe content analysis to.
--
-- * 'scmMinConfidence' - Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence. 100 is the highest confidence. Amazon Rekognition doesn't return any moderated content labels with a confidence level lower than this specified value. If you don't specify @MinConfidence@ , @GetContentModeration@ returns labels with confidence values greater than or equal to 50 percent.
--
-- * 'scmClientRequestToken' - Idempotent token used to identify the start request. If you use the same token with multiple @StartContentModeration@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
--
-- * 'scmJobTag' - An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
--
-- * 'scmVideo' - The video in which you want to detect unsafe content. The video must be stored in an Amazon S3 bucket.
startContentModeration ::
  -- | 'scmVideo'
  Video ->
  StartContentModeration
startContentModeration pVideo_ =
  StartContentModeration'
    { _scmNotificationChannel =
        Nothing,
      _scmMinConfidence = Nothing,
      _scmClientRequestToken = Nothing,
      _scmJobTag = Nothing,
      _scmVideo = pVideo_
    }

-- | The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the unsafe content analysis to.
scmNotificationChannel :: Lens' StartContentModeration (Maybe NotificationChannel)
scmNotificationChannel = lens _scmNotificationChannel (\s a -> s {_scmNotificationChannel = a})

-- | Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence. 100 is the highest confidence. Amazon Rekognition doesn't return any moderated content labels with a confidence level lower than this specified value. If you don't specify @MinConfidence@ , @GetContentModeration@ returns labels with confidence values greater than or equal to 50 percent.
scmMinConfidence :: Lens' StartContentModeration (Maybe Double)
scmMinConfidence = lens _scmMinConfidence (\s a -> s {_scmMinConfidence = a})

-- | Idempotent token used to identify the start request. If you use the same token with multiple @StartContentModeration@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
scmClientRequestToken :: Lens' StartContentModeration (Maybe Text)
scmClientRequestToken = lens _scmClientRequestToken (\s a -> s {_scmClientRequestToken = a})

-- | An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
scmJobTag :: Lens' StartContentModeration (Maybe Text)
scmJobTag = lens _scmJobTag (\s a -> s {_scmJobTag = a})

-- | The video in which you want to detect unsafe content. The video must be stored in an Amazon S3 bucket.
scmVideo :: Lens' StartContentModeration Video
scmVideo = lens _scmVideo (\s a -> s {_scmVideo = a})

instance AWSRequest StartContentModeration where
  type
    Rs StartContentModeration =
      StartContentModerationResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          StartContentModerationResponse'
            <$> (x .?> "JobId") <*> (pure (fromEnum s))
      )

instance Hashable StartContentModeration

instance NFData StartContentModeration

instance ToHeaders StartContentModeration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.StartContentModeration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartContentModeration where
  toJSON StartContentModeration' {..} =
    object
      ( catMaybes
          [ ("NotificationChannel" .=)
              <$> _scmNotificationChannel,
            ("MinConfidence" .=) <$> _scmMinConfidence,
            ("ClientRequestToken" .=) <$> _scmClientRequestToken,
            ("JobTag" .=) <$> _scmJobTag,
            Just ("Video" .= _scmVideo)
          ]
      )

instance ToPath StartContentModeration where
  toPath = const "/"

instance ToQuery StartContentModeration where
  toQuery = const mempty

-- | /See:/ 'startContentModerationResponse' smart constructor.
data StartContentModerationResponse = StartContentModerationResponse'
  { _scmrrsJobId ::
      !( Maybe
           Text
       ),
    _scmrrsResponseStatus ::
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

-- | Creates a value of 'StartContentModerationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scmrrsJobId' - The identifier for the unsafe content analysis job. Use @JobId@ to identify the job in a subsequent call to @GetContentModeration@ .
--
-- * 'scmrrsResponseStatus' - -- | The response status code.
startContentModerationResponse ::
  -- | 'scmrrsResponseStatus'
  Int ->
  StartContentModerationResponse
startContentModerationResponse pResponseStatus_ =
  StartContentModerationResponse'
    { _scmrrsJobId =
        Nothing,
      _scmrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for the unsafe content analysis job. Use @JobId@ to identify the job in a subsequent call to @GetContentModeration@ .
scmrrsJobId :: Lens' StartContentModerationResponse (Maybe Text)
scmrrsJobId = lens _scmrrsJobId (\s a -> s {_scmrrsJobId = a})

-- | -- | The response status code.
scmrrsResponseStatus :: Lens' StartContentModerationResponse Int
scmrrsResponseStatus = lens _scmrrsResponseStatus (\s a -> s {_scmrrsResponseStatus = a})

instance NFData StartContentModerationResponse
