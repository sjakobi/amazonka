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
-- Module      : Network.AWS.Rekognition.GetTextDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the text detection results of a Amazon Rekognition Video analysis started by 'StartTextDetection' .
--
--
-- Text detection with Amazon Rekognition Video is an asynchronous operation. You start text detection by calling 'StartTextDetection' which returns a job identifier (@JobId@ ) When the text detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to @StartTextDetection@ . To get the results of the text detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . if so, call @GetTextDetection@ and pass the job identifier (@JobId@ ) from the initial call of @StartLabelDetection@ .
--
-- @GetTextDetection@ returns an array of detected text (@TextDetections@ ) sorted by the time the text was detected, up to 50 words per frame of video.
--
-- Each element of the array includes the detected text, the precentage confidence in the acuracy of the detected text, the time the text was detected, bounding box information for where the text was located, and unique identifiers for words and their lines.
--
-- Use MaxResults parameter to limit the number of text detections returned. If there are more results than specified in @MaxResults@ , the value of @NextToken@ in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call @GetTextDetection@ and populate the @NextToken@ request parameter with the token value returned from the previous call to @GetTextDetection@ .
module Network.AWS.Rekognition.GetTextDetection
  ( -- * Creating a Request
    getTextDetection,
    GetTextDetection,

    -- * Request Lenses
    gtdNextToken,
    gtdMaxResults,
    gtdJobId,

    -- * Destructuring the Response
    getTextDetectionResponse,
    GetTextDetectionResponse,

    -- * Response Lenses
    gtdrrsStatusMessage,
    gtdrrsVideoMetadata,
    gtdrrsNextToken,
    gtdrrsTextDetections,
    gtdrrsJobStatus,
    gtdrrsTextModelVersion,
    gtdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTextDetection' smart constructor.
data GetTextDetection = GetTextDetection'
  { _gtdNextToken ::
      !(Maybe Text),
    _gtdMaxResults :: !(Maybe Nat),
    _gtdJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTextDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtdNextToken' - If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of text.
--
-- * 'gtdMaxResults' - Maximum number of results to return per paginated call. The largest value you can specify is 1000.
--
-- * 'gtdJobId' - Job identifier for the text detection operation for which you want results returned. You get the job identifer from an initial call to @StartTextDetection@ .
getTextDetection ::
  -- | 'gtdJobId'
  Text ->
  GetTextDetection
getTextDetection pJobId_ =
  GetTextDetection'
    { _gtdNextToken = Nothing,
      _gtdMaxResults = Nothing,
      _gtdJobId = pJobId_
    }

-- | If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of text.
gtdNextToken :: Lens' GetTextDetection (Maybe Text)
gtdNextToken = lens _gtdNextToken (\s a -> s {_gtdNextToken = a})

-- | Maximum number of results to return per paginated call. The largest value you can specify is 1000.
gtdMaxResults :: Lens' GetTextDetection (Maybe Natural)
gtdMaxResults = lens _gtdMaxResults (\s a -> s {_gtdMaxResults = a}) . mapping _Nat

-- | Job identifier for the text detection operation for which you want results returned. You get the job identifer from an initial call to @StartTextDetection@ .
gtdJobId :: Lens' GetTextDetection Text
gtdJobId = lens _gtdJobId (\s a -> s {_gtdJobId = a})

instance AWSRequest GetTextDetection where
  type Rs GetTextDetection = GetTextDetectionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          GetTextDetectionResponse'
            <$> (x .?> "StatusMessage")
            <*> (x .?> "VideoMetadata")
            <*> (x .?> "NextToken")
            <*> (x .?> "TextDetections" .!@ mempty)
            <*> (x .?> "JobStatus")
            <*> (x .?> "TextModelVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable GetTextDetection

instance NFData GetTextDetection

instance ToHeaders GetTextDetection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.GetTextDetection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTextDetection where
  toJSON GetTextDetection' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gtdNextToken,
            ("MaxResults" .=) <$> _gtdMaxResults,
            Just ("JobId" .= _gtdJobId)
          ]
      )

instance ToPath GetTextDetection where
  toPath = const "/"

instance ToQuery GetTextDetection where
  toQuery = const mempty

-- | /See:/ 'getTextDetectionResponse' smart constructor.
data GetTextDetectionResponse = GetTextDetectionResponse'
  { _gtdrrsStatusMessage ::
      !(Maybe Text),
    _gtdrrsVideoMetadata ::
      !( Maybe
           VideoMetadata
       ),
    _gtdrrsNextToken ::
      !(Maybe Text),
    _gtdrrsTextDetections ::
      !( Maybe
           [TextDetectionResult]
       ),
    _gtdrrsJobStatus ::
      !( Maybe
           VideoJobStatus
       ),
    _gtdrrsTextModelVersion ::
      !(Maybe Text),
    _gtdrrsResponseStatus ::
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

-- | Creates a value of 'GetTextDetectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtdrrsStatusMessage' - If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- * 'gtdrrsVideoMetadata' - Undocumented member.
--
-- * 'gtdrrsNextToken' - If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of text.
--
-- * 'gtdrrsTextDetections' - An array of text detected in the video. Each element contains the detected text, the time in milliseconds from the start of the video that the text was detected, and where it was detected on the screen.
--
-- * 'gtdrrsJobStatus' - Current status of the text detection job.
--
-- * 'gtdrrsTextModelVersion' - Version number of the text detection model that was used to detect text.
--
-- * 'gtdrrsResponseStatus' - -- | The response status code.
getTextDetectionResponse ::
  -- | 'gtdrrsResponseStatus'
  Int ->
  GetTextDetectionResponse
getTextDetectionResponse pResponseStatus_ =
  GetTextDetectionResponse'
    { _gtdrrsStatusMessage =
        Nothing,
      _gtdrrsVideoMetadata = Nothing,
      _gtdrrsNextToken = Nothing,
      _gtdrrsTextDetections = Nothing,
      _gtdrrsJobStatus = Nothing,
      _gtdrrsTextModelVersion = Nothing,
      _gtdrrsResponseStatus = pResponseStatus_
    }

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
gtdrrsStatusMessage :: Lens' GetTextDetectionResponse (Maybe Text)
gtdrrsStatusMessage = lens _gtdrrsStatusMessage (\s a -> s {_gtdrrsStatusMessage = a})

-- | Undocumented member.
gtdrrsVideoMetadata :: Lens' GetTextDetectionResponse (Maybe VideoMetadata)
gtdrrsVideoMetadata = lens _gtdrrsVideoMetadata (\s a -> s {_gtdrrsVideoMetadata = a})

-- | If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of text.
gtdrrsNextToken :: Lens' GetTextDetectionResponse (Maybe Text)
gtdrrsNextToken = lens _gtdrrsNextToken (\s a -> s {_gtdrrsNextToken = a})

-- | An array of text detected in the video. Each element contains the detected text, the time in milliseconds from the start of the video that the text was detected, and where it was detected on the screen.
gtdrrsTextDetections :: Lens' GetTextDetectionResponse [TextDetectionResult]
gtdrrsTextDetections = lens _gtdrrsTextDetections (\s a -> s {_gtdrrsTextDetections = a}) . _Default . _Coerce

-- | Current status of the text detection job.
gtdrrsJobStatus :: Lens' GetTextDetectionResponse (Maybe VideoJobStatus)
gtdrrsJobStatus = lens _gtdrrsJobStatus (\s a -> s {_gtdrrsJobStatus = a})

-- | Version number of the text detection model that was used to detect text.
gtdrrsTextModelVersion :: Lens' GetTextDetectionResponse (Maybe Text)
gtdrrsTextModelVersion = lens _gtdrrsTextModelVersion (\s a -> s {_gtdrrsTextModelVersion = a})

-- | -- | The response status code.
gtdrrsResponseStatus :: Lens' GetTextDetectionResponse Int
gtdrrsResponseStatus = lens _gtdrrsResponseStatus (\s a -> s {_gtdrrsResponseStatus = a})

instance NFData GetTextDetectionResponse
