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
-- Module      : Network.AWS.Rekognition.GetCelebrityRecognition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by 'StartCelebrityRecognition' .
--
--
-- Celebrity recognition in a video is an asynchronous operation. Analysis is started by a call to 'StartCelebrityRecognition' which returns a job identifier (@JobId@ ). When the celebrity recognition operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to @StartCelebrityRecognition@ . To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call @GetCelebrityDetection@ and pass the job identifier (@JobId@ ) from the initial call to @StartCelebrityDetection@ .
--
-- For more information, see Working With Stored Videos in the Amazon Rekognition Developer Guide.
--
-- @GetCelebrityRecognition@ returns detected celebrities and the time(s) they are detected in an array (@Celebrities@ ) of 'CelebrityRecognition' objects. Each @CelebrityRecognition@ contains information about the celebrity in a 'CelebrityDetail' object and the time, @Timestamp@ , the celebrity was detected.
--
-- By default, the @Celebrities@ array is sorted by time (milliseconds from the start of the video). You can also sort the array by celebrity by specifying the value @ID@ in the @SortBy@ input parameter.
--
-- The @CelebrityDetail@ object includes the celebrity identifer and additional information urls. If you don't store the additional information urls, you can get them later by calling 'GetCelebrityInfo' with the celebrity identifer.
--
-- No information is returned for faces not recognized as celebrities.
--
-- Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in @MaxResults@ , the value of @NextToken@ in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call @GetCelebrityDetection@ and populate the @NextToken@ request parameter with the token value returned from the previous call to @GetCelebrityRecognition@ .
module Network.AWS.Rekognition.GetCelebrityRecognition
  ( -- * Creating a Request
    getCelebrityRecognition,
    GetCelebrityRecognition,

    -- * Request Lenses
    gcrNextToken,
    gcrMaxResults,
    gcrSortBy,
    gcrJobId,

    -- * Destructuring the Response
    getCelebrityRecognitionResponse,
    GetCelebrityRecognitionResponse,

    -- * Response Lenses
    gcrrrsStatusMessage,
    gcrrrsVideoMetadata,
    gcrrrsNextToken,
    gcrrrsJobStatus,
    gcrrrsCelebrities,
    gcrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCelebrityRecognition' smart constructor.
data GetCelebrityRecognition = GetCelebrityRecognition'
  { _gcrNextToken ::
      !(Maybe Text),
    _gcrMaxResults ::
      !(Maybe Nat),
    _gcrSortBy ::
      !( Maybe
           CelebrityRecognitionSortBy
       ),
    _gcrJobId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCelebrityRecognition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrNextToken' - If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of celebrities.
--
-- * 'gcrMaxResults' - Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
--
-- * 'gcrSortBy' - Sort to use for celebrities returned in @Celebrities@ field. Specify @ID@ to sort by the celebrity identifier, specify @TIMESTAMP@ to sort by the time the celebrity was recognized.
--
-- * 'gcrJobId' - Job identifier for the required celebrity recognition analysis. You can get the job identifer from a call to @StartCelebrityRecognition@ .
getCelebrityRecognition ::
  -- | 'gcrJobId'
  Text ->
  GetCelebrityRecognition
getCelebrityRecognition pJobId_ =
  GetCelebrityRecognition'
    { _gcrNextToken = Nothing,
      _gcrMaxResults = Nothing,
      _gcrSortBy = Nothing,
      _gcrJobId = pJobId_
    }

-- | If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of celebrities.
gcrNextToken :: Lens' GetCelebrityRecognition (Maybe Text)
gcrNextToken = lens _gcrNextToken (\s a -> s {_gcrNextToken = a})

-- | Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
gcrMaxResults :: Lens' GetCelebrityRecognition (Maybe Natural)
gcrMaxResults = lens _gcrMaxResults (\s a -> s {_gcrMaxResults = a}) . mapping _Nat

-- | Sort to use for celebrities returned in @Celebrities@ field. Specify @ID@ to sort by the celebrity identifier, specify @TIMESTAMP@ to sort by the time the celebrity was recognized.
gcrSortBy :: Lens' GetCelebrityRecognition (Maybe CelebrityRecognitionSortBy)
gcrSortBy = lens _gcrSortBy (\s a -> s {_gcrSortBy = a})

-- | Job identifier for the required celebrity recognition analysis. You can get the job identifer from a call to @StartCelebrityRecognition@ .
gcrJobId :: Lens' GetCelebrityRecognition Text
gcrJobId = lens _gcrJobId (\s a -> s {_gcrJobId = a})

instance AWSRequest GetCelebrityRecognition where
  type
    Rs GetCelebrityRecognition =
      GetCelebrityRecognitionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          GetCelebrityRecognitionResponse'
            <$> (x .?> "StatusMessage")
            <*> (x .?> "VideoMetadata")
            <*> (x .?> "NextToken")
            <*> (x .?> "JobStatus")
            <*> (x .?> "Celebrities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCelebrityRecognition

instance NFData GetCelebrityRecognition

instance ToHeaders GetCelebrityRecognition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.GetCelebrityRecognition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCelebrityRecognition where
  toJSON GetCelebrityRecognition' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gcrNextToken,
            ("MaxResults" .=) <$> _gcrMaxResults,
            ("SortBy" .=) <$> _gcrSortBy,
            Just ("JobId" .= _gcrJobId)
          ]
      )

instance ToPath GetCelebrityRecognition where
  toPath = const "/"

instance ToQuery GetCelebrityRecognition where
  toQuery = const mempty

-- | /See:/ 'getCelebrityRecognitionResponse' smart constructor.
data GetCelebrityRecognitionResponse = GetCelebrityRecognitionResponse'
  { _gcrrrsStatusMessage ::
      !( Maybe
           Text
       ),
    _gcrrrsVideoMetadata ::
      !( Maybe
           VideoMetadata
       ),
    _gcrrrsNextToken ::
      !( Maybe
           Text
       ),
    _gcrrrsJobStatus ::
      !( Maybe
           VideoJobStatus
       ),
    _gcrrrsCelebrities ::
      !( Maybe
           [CelebrityRecognition]
       ),
    _gcrrrsResponseStatus ::
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

-- | Creates a value of 'GetCelebrityRecognitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrrsStatusMessage' - If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- * 'gcrrrsVideoMetadata' - Information about a video that Amazon Rekognition Video analyzed. @Videometadata@ is returned in every page of paginated responses from a Amazon Rekognition Video operation.
--
-- * 'gcrrrsNextToken' - If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of celebrities.
--
-- * 'gcrrrsJobStatus' - The current status of the celebrity recognition job.
--
-- * 'gcrrrsCelebrities' - Array of celebrities recognized in the video.
--
-- * 'gcrrrsResponseStatus' - -- | The response status code.
getCelebrityRecognitionResponse ::
  -- | 'gcrrrsResponseStatus'
  Int ->
  GetCelebrityRecognitionResponse
getCelebrityRecognitionResponse pResponseStatus_ =
  GetCelebrityRecognitionResponse'
    { _gcrrrsStatusMessage =
        Nothing,
      _gcrrrsVideoMetadata = Nothing,
      _gcrrrsNextToken = Nothing,
      _gcrrrsJobStatus = Nothing,
      _gcrrrsCelebrities = Nothing,
      _gcrrrsResponseStatus = pResponseStatus_
    }

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
gcrrrsStatusMessage :: Lens' GetCelebrityRecognitionResponse (Maybe Text)
gcrrrsStatusMessage = lens _gcrrrsStatusMessage (\s a -> s {_gcrrrsStatusMessage = a})

-- | Information about a video that Amazon Rekognition Video analyzed. @Videometadata@ is returned in every page of paginated responses from a Amazon Rekognition Video operation.
gcrrrsVideoMetadata :: Lens' GetCelebrityRecognitionResponse (Maybe VideoMetadata)
gcrrrsVideoMetadata = lens _gcrrrsVideoMetadata (\s a -> s {_gcrrrsVideoMetadata = a})

-- | If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of celebrities.
gcrrrsNextToken :: Lens' GetCelebrityRecognitionResponse (Maybe Text)
gcrrrsNextToken = lens _gcrrrsNextToken (\s a -> s {_gcrrrsNextToken = a})

-- | The current status of the celebrity recognition job.
gcrrrsJobStatus :: Lens' GetCelebrityRecognitionResponse (Maybe VideoJobStatus)
gcrrrsJobStatus = lens _gcrrrsJobStatus (\s a -> s {_gcrrrsJobStatus = a})

-- | Array of celebrities recognized in the video.
gcrrrsCelebrities :: Lens' GetCelebrityRecognitionResponse [CelebrityRecognition]
gcrrrsCelebrities = lens _gcrrrsCelebrities (\s a -> s {_gcrrrsCelebrities = a}) . _Default . _Coerce

-- | -- | The response status code.
gcrrrsResponseStatus :: Lens' GetCelebrityRecognitionResponse Int
gcrrrsResponseStatus = lens _gcrrrsResponseStatus (\s a -> s {_gcrrrsResponseStatus = a})

instance NFData GetCelebrityRecognitionResponse
