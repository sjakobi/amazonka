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
-- Module      : Network.AWS.Rekognition.GetFaceDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets face detection results for a Amazon Rekognition Video analysis started by 'StartFaceDetection' .
--
--
-- Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling 'StartFaceDetection' which returns a job identifier (@JobId@ ). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to @StartFaceDetection@ . To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call 'GetFaceDetection' and pass the job identifier (@JobId@ ) from the initial call to @StartFaceDetection@ .
--
-- @GetFaceDetection@ returns an array of detected faces (@Faces@ ) sorted by the time the faces were detected.
--
-- Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in @MaxResults@ , the value of @NextToken@ in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call @GetFaceDetection@ and populate the @NextToken@ request parameter with the token value returned from the previous call to @GetFaceDetection@ .
module Network.AWS.Rekognition.GetFaceDetection
  ( -- * Creating a Request
    getFaceDetection,
    GetFaceDetection,

    -- * Request Lenses
    gfdNextToken,
    gfdMaxResults,
    gfdJobId,

    -- * Destructuring the Response
    getFaceDetectionResponse,
    GetFaceDetectionResponse,

    -- * Response Lenses
    gfdrrsStatusMessage,
    gfdrrsVideoMetadata,
    gfdrrsNextToken,
    gfdrrsJobStatus,
    gfdrrsFaces,
    gfdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFaceDetection' smart constructor.
data GetFaceDetection = GetFaceDetection'
  { _gfdNextToken ::
      !(Maybe Text),
    _gfdMaxResults :: !(Maybe Nat),
    _gfdJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFaceDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfdNextToken' - If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.
--
-- * 'gfdMaxResults' - Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
--
-- * 'gfdJobId' - Unique identifier for the face detection job. The @JobId@ is returned from @StartFaceDetection@ .
getFaceDetection ::
  -- | 'gfdJobId'
  Text ->
  GetFaceDetection
getFaceDetection pJobId_ =
  GetFaceDetection'
    { _gfdNextToken = Nothing,
      _gfdMaxResults = Nothing,
      _gfdJobId = pJobId_
    }

-- | If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.
gfdNextToken :: Lens' GetFaceDetection (Maybe Text)
gfdNextToken = lens _gfdNextToken (\s a -> s {_gfdNextToken = a})

-- | Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
gfdMaxResults :: Lens' GetFaceDetection (Maybe Natural)
gfdMaxResults = lens _gfdMaxResults (\s a -> s {_gfdMaxResults = a}) . mapping _Nat

-- | Unique identifier for the face detection job. The @JobId@ is returned from @StartFaceDetection@ .
gfdJobId :: Lens' GetFaceDetection Text
gfdJobId = lens _gfdJobId (\s a -> s {_gfdJobId = a})

instance AWSRequest GetFaceDetection where
  type Rs GetFaceDetection = GetFaceDetectionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          GetFaceDetectionResponse'
            <$> (x .?> "StatusMessage")
            <*> (x .?> "VideoMetadata")
            <*> (x .?> "NextToken")
            <*> (x .?> "JobStatus")
            <*> (x .?> "Faces" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetFaceDetection

instance NFData GetFaceDetection

instance ToHeaders GetFaceDetection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.GetFaceDetection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetFaceDetection where
  toJSON GetFaceDetection' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gfdNextToken,
            ("MaxResults" .=) <$> _gfdMaxResults,
            Just ("JobId" .= _gfdJobId)
          ]
      )

instance ToPath GetFaceDetection where
  toPath = const "/"

instance ToQuery GetFaceDetection where
  toQuery = const mempty

-- | /See:/ 'getFaceDetectionResponse' smart constructor.
data GetFaceDetectionResponse = GetFaceDetectionResponse'
  { _gfdrrsStatusMessage ::
      !(Maybe Text),
    _gfdrrsVideoMetadata ::
      !( Maybe
           VideoMetadata
       ),
    _gfdrrsNextToken ::
      !(Maybe Text),
    _gfdrrsJobStatus ::
      !( Maybe
           VideoJobStatus
       ),
    _gfdrrsFaces ::
      !( Maybe
           [FaceDetection]
       ),
    _gfdrrsResponseStatus ::
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

-- | Creates a value of 'GetFaceDetectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfdrrsStatusMessage' - If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- * 'gfdrrsVideoMetadata' - Information about a video that Amazon Rekognition Video analyzed. @Videometadata@ is returned in every page of paginated responses from a Amazon Rekognition video operation.
--
-- * 'gfdrrsNextToken' - If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces.
--
-- * 'gfdrrsJobStatus' - The current status of the face detection job.
--
-- * 'gfdrrsFaces' - An array of faces detected in the video. Each element contains a detected face's details and the time, in milliseconds from the start of the video, the face was detected.
--
-- * 'gfdrrsResponseStatus' - -- | The response status code.
getFaceDetectionResponse ::
  -- | 'gfdrrsResponseStatus'
  Int ->
  GetFaceDetectionResponse
getFaceDetectionResponse pResponseStatus_ =
  GetFaceDetectionResponse'
    { _gfdrrsStatusMessage =
        Nothing,
      _gfdrrsVideoMetadata = Nothing,
      _gfdrrsNextToken = Nothing,
      _gfdrrsJobStatus = Nothing,
      _gfdrrsFaces = Nothing,
      _gfdrrsResponseStatus = pResponseStatus_
    }

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
gfdrrsStatusMessage :: Lens' GetFaceDetectionResponse (Maybe Text)
gfdrrsStatusMessage = lens _gfdrrsStatusMessage (\s a -> s {_gfdrrsStatusMessage = a})

-- | Information about a video that Amazon Rekognition Video analyzed. @Videometadata@ is returned in every page of paginated responses from a Amazon Rekognition video operation.
gfdrrsVideoMetadata :: Lens' GetFaceDetectionResponse (Maybe VideoMetadata)
gfdrrsVideoMetadata = lens _gfdrrsVideoMetadata (\s a -> s {_gfdrrsVideoMetadata = a})

-- | If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces.
gfdrrsNextToken :: Lens' GetFaceDetectionResponse (Maybe Text)
gfdrrsNextToken = lens _gfdrrsNextToken (\s a -> s {_gfdrrsNextToken = a})

-- | The current status of the face detection job.
gfdrrsJobStatus :: Lens' GetFaceDetectionResponse (Maybe VideoJobStatus)
gfdrrsJobStatus = lens _gfdrrsJobStatus (\s a -> s {_gfdrrsJobStatus = a})

-- | An array of faces detected in the video. Each element contains a detected face's details and the time, in milliseconds from the start of the video, the face was detected.
gfdrrsFaces :: Lens' GetFaceDetectionResponse [FaceDetection]
gfdrrsFaces = lens _gfdrrsFaces (\s a -> s {_gfdrrsFaces = a}) . _Default . _Coerce

-- | -- | The response status code.
gfdrrsResponseStatus :: Lens' GetFaceDetectionResponse Int
gfdrrsResponseStatus = lens _gfdrrsResponseStatus (\s a -> s {_gfdrrsResponseStatus = a})

instance NFData GetFaceDetectionResponse
