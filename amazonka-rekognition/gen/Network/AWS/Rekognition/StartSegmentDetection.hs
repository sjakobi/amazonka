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
-- Module      : Network.AWS.Rekognition.StartSegmentDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous detection of segment detection in a stored video.
--
--
-- Amazon Rekognition Video can detect segments in a video stored in an Amazon S3 bucket. Use 'Video' to specify the bucket name and the filename of the video. @StartSegmentDetection@ returns a job identifier (@JobId@ ) which you use to get the results of the operation. When segment detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in @NotificationChannel@ .
--
-- You can use the @Filters@ ('StartSegmentDetectionFilters' ) input parameter to specify the minimum detection confidence returned in the response. Within @Filters@ , use @ShotFilter@ ('StartShotDetectionFilter' ) to filter detected shots. Use @TechnicalCueFilter@ ('StartTechnicalCueDetectionFilter' ) to filter technical cues.
--
-- To get the results of the segment detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . if so, call 'GetSegmentDetection' and pass the job identifier (@JobId@ ) from the initial call to @StartSegmentDetection@ .
--
-- For more information, see Detecting Video Segments in Stored Video in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.StartSegmentDetection
  ( -- * Creating a Request
    startSegmentDetection,
    StartSegmentDetection,

    -- * Request Lenses
    ssdNotificationChannel,
    ssdFilters,
    ssdClientRequestToken,
    ssdJobTag,
    ssdVideo,
    ssdSegmentTypes,

    -- * Destructuring the Response
    startSegmentDetectionResponse,
    StartSegmentDetectionResponse,

    -- * Response Lenses
    ssdrrsJobId,
    ssdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startSegmentDetection' smart constructor.
data StartSegmentDetection = StartSegmentDetection'
  { _ssdNotificationChannel ::
      !( Maybe
           NotificationChannel
       ),
    _ssdFilters ::
      !( Maybe
           StartSegmentDetectionFilters
       ),
    _ssdClientRequestToken ::
      !(Maybe Text),
    _ssdJobTag :: !(Maybe Text),
    _ssdVideo :: !Video,
    _ssdSegmentTypes ::
      !(List1 SegmentType)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartSegmentDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssdNotificationChannel' - The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the segment detection operation.
--
-- * 'ssdFilters' - Filters for technical cue or shot detection.
--
-- * 'ssdClientRequestToken' - Idempotent token used to identify the start request. If you use the same token with multiple @StartSegmentDetection@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
--
-- * 'ssdJobTag' - An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
--
-- * 'ssdVideo' - Undocumented member.
--
-- * 'ssdSegmentTypes' - An array of segment types to detect in the video. Valid values are TECHNICAL_CUE and SHOT.
startSegmentDetection ::
  -- | 'ssdVideo'
  Video ->
  -- | 'ssdSegmentTypes'
  NonEmpty SegmentType ->
  StartSegmentDetection
startSegmentDetection pVideo_ pSegmentTypes_ =
  StartSegmentDetection'
    { _ssdNotificationChannel =
        Nothing,
      _ssdFilters = Nothing,
      _ssdClientRequestToken = Nothing,
      _ssdJobTag = Nothing,
      _ssdVideo = pVideo_,
      _ssdSegmentTypes = _List1 # pSegmentTypes_
    }

-- | The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the segment detection operation.
ssdNotificationChannel :: Lens' StartSegmentDetection (Maybe NotificationChannel)
ssdNotificationChannel = lens _ssdNotificationChannel (\s a -> s {_ssdNotificationChannel = a})

-- | Filters for technical cue or shot detection.
ssdFilters :: Lens' StartSegmentDetection (Maybe StartSegmentDetectionFilters)
ssdFilters = lens _ssdFilters (\s a -> s {_ssdFilters = a})

-- | Idempotent token used to identify the start request. If you use the same token with multiple @StartSegmentDetection@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once.
ssdClientRequestToken :: Lens' StartSegmentDetection (Maybe Text)
ssdClientRequestToken = lens _ssdClientRequestToken (\s a -> s {_ssdClientRequestToken = a})

-- | An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
ssdJobTag :: Lens' StartSegmentDetection (Maybe Text)
ssdJobTag = lens _ssdJobTag (\s a -> s {_ssdJobTag = a})

-- | Undocumented member.
ssdVideo :: Lens' StartSegmentDetection Video
ssdVideo = lens _ssdVideo (\s a -> s {_ssdVideo = a})

-- | An array of segment types to detect in the video. Valid values are TECHNICAL_CUE and SHOT.
ssdSegmentTypes :: Lens' StartSegmentDetection (NonEmpty SegmentType)
ssdSegmentTypes = lens _ssdSegmentTypes (\s a -> s {_ssdSegmentTypes = a}) . _List1

instance AWSRequest StartSegmentDetection where
  type
    Rs StartSegmentDetection =
      StartSegmentDetectionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          StartSegmentDetectionResponse'
            <$> (x .?> "JobId") <*> (pure (fromEnum s))
      )

instance Hashable StartSegmentDetection

instance NFData StartSegmentDetection

instance ToHeaders StartSegmentDetection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.StartSegmentDetection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartSegmentDetection where
  toJSON StartSegmentDetection' {..} =
    object
      ( catMaybes
          [ ("NotificationChannel" .=)
              <$> _ssdNotificationChannel,
            ("Filters" .=) <$> _ssdFilters,
            ("ClientRequestToken" .=) <$> _ssdClientRequestToken,
            ("JobTag" .=) <$> _ssdJobTag,
            Just ("Video" .= _ssdVideo),
            Just ("SegmentTypes" .= _ssdSegmentTypes)
          ]
      )

instance ToPath StartSegmentDetection where
  toPath = const "/"

instance ToQuery StartSegmentDetection where
  toQuery = const mempty

-- | /See:/ 'startSegmentDetectionResponse' smart constructor.
data StartSegmentDetectionResponse = StartSegmentDetectionResponse'
  { _ssdrrsJobId ::
      !( Maybe
           Text
       ),
    _ssdrrsResponseStatus ::
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

-- | Creates a value of 'StartSegmentDetectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssdrrsJobId' - Unique identifier for the segment detection job. The @JobId@ is returned from @StartSegmentDetection@ .
--
-- * 'ssdrrsResponseStatus' - -- | The response status code.
startSegmentDetectionResponse ::
  -- | 'ssdrrsResponseStatus'
  Int ->
  StartSegmentDetectionResponse
startSegmentDetectionResponse pResponseStatus_ =
  StartSegmentDetectionResponse'
    { _ssdrrsJobId =
        Nothing,
      _ssdrrsResponseStatus = pResponseStatus_
    }

-- | Unique identifier for the segment detection job. The @JobId@ is returned from @StartSegmentDetection@ .
ssdrrsJobId :: Lens' StartSegmentDetectionResponse (Maybe Text)
ssdrrsJobId = lens _ssdrrsJobId (\s a -> s {_ssdrrsJobId = a})

-- | -- | The response status code.
ssdrrsResponseStatus :: Lens' StartSegmentDetectionResponse Int
ssdrrsResponseStatus = lens _ssdrrsResponseStatus (\s a -> s {_ssdrrsResponseStatus = a})

instance NFData StartSegmentDetectionResponse
