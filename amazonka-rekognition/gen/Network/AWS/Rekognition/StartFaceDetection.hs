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
-- Module      : Network.AWS.Rekognition.StartFaceDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous detection of faces in a stored video.
--
--
-- Amazon Rekognition Video can detect faces in a video stored in an Amazon S3 bucket. Use 'Video' to specify the bucket name and the filename of the video. @StartFaceDetection@ returns a job identifier (@JobId@ ) that you use to get the results of the operation. When face detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in @NotificationChannel@ . To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call 'GetFaceDetection' and pass the job identifier (@JobId@ ) from the initial call to @StartFaceDetection@ .
--
-- For more information, see Detecting Faces in a Stored Video in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.StartFaceDetection
  ( -- * Creating a Request
    startFaceDetection,
    StartFaceDetection,

    -- * Request Lenses
    sfdNotificationChannel,
    sfdFaceAttributes,
    sfdClientRequestToken,
    sfdJobTag,
    sfdVideo,

    -- * Destructuring the Response
    startFaceDetectionResponse,
    StartFaceDetectionResponse,

    -- * Response Lenses
    sfdrrsJobId,
    sfdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startFaceDetection' smart constructor.
data StartFaceDetection = StartFaceDetection'
  { _sfdNotificationChannel ::
      !(Maybe NotificationChannel),
    _sfdFaceAttributes ::
      !(Maybe FaceAttributes),
    _sfdClientRequestToken ::
      !(Maybe Text),
    _sfdJobTag :: !(Maybe Text),
    _sfdVideo :: !Video
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartFaceDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfdNotificationChannel' - The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the face detection operation.
--
-- * 'sfdFaceAttributes' - The face attributes you want returned. @DEFAULT@ - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks.  @ALL@ - All facial attributes are returned.
--
-- * 'sfdClientRequestToken' - Idempotent token used to identify the start request. If you use the same token with multiple @StartFaceDetection@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
--
-- * 'sfdJobTag' - An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
--
-- * 'sfdVideo' - The video in which you want to detect faces. The video must be stored in an Amazon S3 bucket.
startFaceDetection ::
  -- | 'sfdVideo'
  Video ->
  StartFaceDetection
startFaceDetection pVideo_ =
  StartFaceDetection'
    { _sfdNotificationChannel =
        Nothing,
      _sfdFaceAttributes = Nothing,
      _sfdClientRequestToken = Nothing,
      _sfdJobTag = Nothing,
      _sfdVideo = pVideo_
    }

-- | The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the face detection operation.
sfdNotificationChannel :: Lens' StartFaceDetection (Maybe NotificationChannel)
sfdNotificationChannel = lens _sfdNotificationChannel (\s a -> s {_sfdNotificationChannel = a})

-- | The face attributes you want returned. @DEFAULT@ - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks.  @ALL@ - All facial attributes are returned.
sfdFaceAttributes :: Lens' StartFaceDetection (Maybe FaceAttributes)
sfdFaceAttributes = lens _sfdFaceAttributes (\s a -> s {_sfdFaceAttributes = a})

-- | Idempotent token used to identify the start request. If you use the same token with multiple @StartFaceDetection@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
sfdClientRequestToken :: Lens' StartFaceDetection (Maybe Text)
sfdClientRequestToken = lens _sfdClientRequestToken (\s a -> s {_sfdClientRequestToken = a})

-- | An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
sfdJobTag :: Lens' StartFaceDetection (Maybe Text)
sfdJobTag = lens _sfdJobTag (\s a -> s {_sfdJobTag = a})

-- | The video in which you want to detect faces. The video must be stored in an Amazon S3 bucket.
sfdVideo :: Lens' StartFaceDetection Video
sfdVideo = lens _sfdVideo (\s a -> s {_sfdVideo = a})

instance AWSRequest StartFaceDetection where
  type
    Rs StartFaceDetection =
      StartFaceDetectionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          StartFaceDetectionResponse'
            <$> (x .?> "JobId") <*> (pure (fromEnum s))
      )

instance Hashable StartFaceDetection

instance NFData StartFaceDetection

instance ToHeaders StartFaceDetection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.StartFaceDetection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartFaceDetection where
  toJSON StartFaceDetection' {..} =
    object
      ( catMaybes
          [ ("NotificationChannel" .=)
              <$> _sfdNotificationChannel,
            ("FaceAttributes" .=) <$> _sfdFaceAttributes,
            ("ClientRequestToken" .=) <$> _sfdClientRequestToken,
            ("JobTag" .=) <$> _sfdJobTag,
            Just ("Video" .= _sfdVideo)
          ]
      )

instance ToPath StartFaceDetection where
  toPath = const "/"

instance ToQuery StartFaceDetection where
  toQuery = const mempty

-- | /See:/ 'startFaceDetectionResponse' smart constructor.
data StartFaceDetectionResponse = StartFaceDetectionResponse'
  { _sfdrrsJobId ::
      !(Maybe Text),
    _sfdrrsResponseStatus ::
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

-- | Creates a value of 'StartFaceDetectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfdrrsJobId' - The identifier for the face detection job. Use @JobId@ to identify the job in a subsequent call to @GetFaceDetection@ .
--
-- * 'sfdrrsResponseStatus' - -- | The response status code.
startFaceDetectionResponse ::
  -- | 'sfdrrsResponseStatus'
  Int ->
  StartFaceDetectionResponse
startFaceDetectionResponse pResponseStatus_ =
  StartFaceDetectionResponse'
    { _sfdrrsJobId = Nothing,
      _sfdrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for the face detection job. Use @JobId@ to identify the job in a subsequent call to @GetFaceDetection@ .
sfdrrsJobId :: Lens' StartFaceDetectionResponse (Maybe Text)
sfdrrsJobId = lens _sfdrrsJobId (\s a -> s {_sfdrrsJobId = a})

-- | -- | The response status code.
sfdrrsResponseStatus :: Lens' StartFaceDetectionResponse Int
sfdrrsResponseStatus = lens _sfdrrsResponseStatus (\s a -> s {_sfdrrsResponseStatus = a})

instance NFData StartFaceDetectionResponse
