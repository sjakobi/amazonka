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
-- Module      : Network.AWS.Rekognition.GetSegmentDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the segment detection results of a Amazon Rekognition Video analysis started by 'StartSegmentDetection' .
--
--
-- Segment detection with Amazon Rekognition Video is an asynchronous operation. You start segment detection by calling 'StartSegmentDetection' which returns a job identifier (@JobId@ ). When the segment detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to @StartSegmentDetection@ . To get the results of the segment detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . if so, call @GetSegmentDetection@ and pass the job identifier (@JobId@ ) from the initial call of @StartSegmentDetection@ .
--
-- @GetSegmentDetection@ returns detected segments in an array (@Segments@ ) of 'SegmentDetection' objects. @Segments@ is sorted by the segment types specified in the @SegmentTypes@ input parameter of @StartSegmentDetection@ . Each element of the array includes the detected segment, the precentage confidence in the acuracy of the detected segment, the type of the segment, and the frame in which the segment was detected.
--
-- Use @SelectedSegmentTypes@ to find out the type of segment detection requested in the call to @StartSegmentDetection@ .
--
-- Use the @MaxResults@ parameter to limit the number of segment detections returned. If there are more results than specified in @MaxResults@ , the value of @NextToken@ in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call @GetSegmentDetection@ and populate the @NextToken@ request parameter with the token value returned from the previous call to @GetSegmentDetection@ .
--
-- For more information, see Detecting Video Segments in Stored Video in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.GetSegmentDetection
  ( -- * Creating a Request
    getSegmentDetection,
    GetSegmentDetection,

    -- * Request Lenses
    gsdNextToken,
    gsdMaxResults,
    gsdJobId,

    -- * Destructuring the Response
    getSegmentDetectionResponse,
    GetSegmentDetectionResponse,

    -- * Response Lenses
    gsdrrsStatusMessage,
    gsdrrsVideoMetadata,
    gsdrrsNextToken,
    gsdrrsSelectedSegmentTypes,
    gsdrrsAudioMetadata,
    gsdrrsJobStatus,
    gsdrrsSegments,
    gsdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSegmentDetection' smart constructor.
data GetSegmentDetection = GetSegmentDetection'
  { _gsdNextToken ::
      !(Maybe Text),
    _gsdMaxResults :: !(Maybe Nat),
    _gsdJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSegmentDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdNextToken' - If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of text.
--
-- * 'gsdMaxResults' - Maximum number of results to return per paginated call. The largest value you can specify is 1000.
--
-- * 'gsdJobId' - Job identifier for the text detection operation for which you want results returned. You get the job identifer from an initial call to @StartSegmentDetection@ .
getSegmentDetection ::
  -- | 'gsdJobId'
  Text ->
  GetSegmentDetection
getSegmentDetection pJobId_ =
  GetSegmentDetection'
    { _gsdNextToken = Nothing,
      _gsdMaxResults = Nothing,
      _gsdJobId = pJobId_
    }

-- | If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of text.
gsdNextToken :: Lens' GetSegmentDetection (Maybe Text)
gsdNextToken = lens _gsdNextToken (\s a -> s {_gsdNextToken = a})

-- | Maximum number of results to return per paginated call. The largest value you can specify is 1000.
gsdMaxResults :: Lens' GetSegmentDetection (Maybe Natural)
gsdMaxResults = lens _gsdMaxResults (\s a -> s {_gsdMaxResults = a}) . mapping _Nat

-- | Job identifier for the text detection operation for which you want results returned. You get the job identifer from an initial call to @StartSegmentDetection@ .
gsdJobId :: Lens' GetSegmentDetection Text
gsdJobId = lens _gsdJobId (\s a -> s {_gsdJobId = a})

instance AWSRequest GetSegmentDetection where
  type
    Rs GetSegmentDetection =
      GetSegmentDetectionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          GetSegmentDetectionResponse'
            <$> (x .?> "StatusMessage")
            <*> (x .?> "VideoMetadata" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "SelectedSegmentTypes" .!@ mempty)
            <*> (x .?> "AudioMetadata" .!@ mempty)
            <*> (x .?> "JobStatus")
            <*> (x .?> "Segments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetSegmentDetection

instance NFData GetSegmentDetection

instance ToHeaders GetSegmentDetection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.GetSegmentDetection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSegmentDetection where
  toJSON GetSegmentDetection' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gsdNextToken,
            ("MaxResults" .=) <$> _gsdMaxResults,
            Just ("JobId" .= _gsdJobId)
          ]
      )

instance ToPath GetSegmentDetection where
  toPath = const "/"

instance ToQuery GetSegmentDetection where
  toQuery = const mempty

-- | /See:/ 'getSegmentDetectionResponse' smart constructor.
data GetSegmentDetectionResponse = GetSegmentDetectionResponse'
  { _gsdrrsStatusMessage ::
      !(Maybe Text),
    _gsdrrsVideoMetadata ::
      !( Maybe
           [VideoMetadata]
       ),
    _gsdrrsNextToken ::
      !(Maybe Text),
    _gsdrrsSelectedSegmentTypes ::
      !( Maybe
           [SegmentTypeInfo]
       ),
    _gsdrrsAudioMetadata ::
      !( Maybe
           [AudioMetadata]
       ),
    _gsdrrsJobStatus ::
      !( Maybe
           VideoJobStatus
       ),
    _gsdrrsSegments ::
      !( Maybe
           [SegmentDetection]
       ),
    _gsdrrsResponseStatus ::
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

-- | Creates a value of 'GetSegmentDetectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdrrsStatusMessage' - If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- * 'gsdrrsVideoMetadata' - Currently, Amazon Rekognition Video returns a single object in the @VideoMetadata@ array. The object contains information about the video stream in the input file that Amazon Rekognition Video chose to analyze. The @VideoMetadata@ object includes the video codec, video format and other information. Video metadata is returned in each page of information returned by @GetSegmentDetection@ .
--
-- * 'gsdrrsNextToken' - If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of text.
--
-- * 'gsdrrsSelectedSegmentTypes' - An array containing the segment types requested in the call to @StartSegmentDetection@ .
--
-- * 'gsdrrsAudioMetadata' - An array of objects. There can be multiple audio streams. Each @AudioMetadata@ object contains metadata for a single audio stream. Audio information in an @AudioMetadata@ objects includes the audio codec, the number of audio channels, the duration of the audio stream, and the sample rate. Audio metadata is returned in each page of information returned by @GetSegmentDetection@ .
--
-- * 'gsdrrsJobStatus' - Current status of the segment detection job.
--
-- * 'gsdrrsSegments' - An array of segments detected in a video. The array is sorted by the segment types (TECHNICAL_CUE or SHOT) specified in the @SegmentTypes@ input parameter of @StartSegmentDetection@ . Within each segment type the array is sorted by timestamp values.
--
-- * 'gsdrrsResponseStatus' - -- | The response status code.
getSegmentDetectionResponse ::
  -- | 'gsdrrsResponseStatus'
  Int ->
  GetSegmentDetectionResponse
getSegmentDetectionResponse pResponseStatus_ =
  GetSegmentDetectionResponse'
    { _gsdrrsStatusMessage =
        Nothing,
      _gsdrrsVideoMetadata = Nothing,
      _gsdrrsNextToken = Nothing,
      _gsdrrsSelectedSegmentTypes = Nothing,
      _gsdrrsAudioMetadata = Nothing,
      _gsdrrsJobStatus = Nothing,
      _gsdrrsSegments = Nothing,
      _gsdrrsResponseStatus = pResponseStatus_
    }

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
gsdrrsStatusMessage :: Lens' GetSegmentDetectionResponse (Maybe Text)
gsdrrsStatusMessage = lens _gsdrrsStatusMessage (\s a -> s {_gsdrrsStatusMessage = a})

-- | Currently, Amazon Rekognition Video returns a single object in the @VideoMetadata@ array. The object contains information about the video stream in the input file that Amazon Rekognition Video chose to analyze. The @VideoMetadata@ object includes the video codec, video format and other information. Video metadata is returned in each page of information returned by @GetSegmentDetection@ .
gsdrrsVideoMetadata :: Lens' GetSegmentDetectionResponse [VideoMetadata]
gsdrrsVideoMetadata = lens _gsdrrsVideoMetadata (\s a -> s {_gsdrrsVideoMetadata = a}) . _Default . _Coerce

-- | If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of text.
gsdrrsNextToken :: Lens' GetSegmentDetectionResponse (Maybe Text)
gsdrrsNextToken = lens _gsdrrsNextToken (\s a -> s {_gsdrrsNextToken = a})

-- | An array containing the segment types requested in the call to @StartSegmentDetection@ .
gsdrrsSelectedSegmentTypes :: Lens' GetSegmentDetectionResponse [SegmentTypeInfo]
gsdrrsSelectedSegmentTypes = lens _gsdrrsSelectedSegmentTypes (\s a -> s {_gsdrrsSelectedSegmentTypes = a}) . _Default . _Coerce

-- | An array of objects. There can be multiple audio streams. Each @AudioMetadata@ object contains metadata for a single audio stream. Audio information in an @AudioMetadata@ objects includes the audio codec, the number of audio channels, the duration of the audio stream, and the sample rate. Audio metadata is returned in each page of information returned by @GetSegmentDetection@ .
gsdrrsAudioMetadata :: Lens' GetSegmentDetectionResponse [AudioMetadata]
gsdrrsAudioMetadata = lens _gsdrrsAudioMetadata (\s a -> s {_gsdrrsAudioMetadata = a}) . _Default . _Coerce

-- | Current status of the segment detection job.
gsdrrsJobStatus :: Lens' GetSegmentDetectionResponse (Maybe VideoJobStatus)
gsdrrsJobStatus = lens _gsdrrsJobStatus (\s a -> s {_gsdrrsJobStatus = a})

-- | An array of segments detected in a video. The array is sorted by the segment types (TECHNICAL_CUE or SHOT) specified in the @SegmentTypes@ input parameter of @StartSegmentDetection@ . Within each segment type the array is sorted by timestamp values.
gsdrrsSegments :: Lens' GetSegmentDetectionResponse [SegmentDetection]
gsdrrsSegments = lens _gsdrrsSegments (\s a -> s {_gsdrrsSegments = a}) . _Default . _Coerce

-- | -- | The response status code.
gsdrrsResponseStatus :: Lens' GetSegmentDetectionResponse Int
gsdrrsResponseStatus = lens _gsdrrsResponseStatus (\s a -> s {_gsdrrsResponseStatus = a})

instance NFData GetSegmentDetectionResponse
