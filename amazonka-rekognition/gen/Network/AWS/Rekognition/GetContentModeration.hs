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
-- Module      : Network.AWS.Rekognition.GetContentModeration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the unsafe content analysis results for a Amazon Rekognition Video analysis started by 'StartContentModeration' .
--
--
-- Unsafe content analysis of a video is an asynchronous operation. You start analysis by calling 'StartContentModeration' which returns a job identifier (@JobId@ ). When analysis finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to @StartContentModeration@ . To get the results of the unsafe content analysis, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call @GetContentModeration@ and pass the job identifier (@JobId@ ) from the initial call to @StartContentModeration@ .
--
-- For more information, see Working with Stored Videos in the Amazon Rekognition Devlopers Guide.
--
-- @GetContentModeration@ returns detected unsafe content labels, and the time they are detected, in an array, @ModerationLabels@ , of 'ContentModerationDetection' objects.
--
-- By default, the moderated labels are returned sorted by time, in milliseconds from the start of the video. You can also sort them by moderated label by specifying @NAME@ for the @SortBy@ input parameter.
--
-- Since video analysis can return a large number of results, use the @MaxResults@ parameter to limit the number of labels returned in a single call to @GetContentModeration@ . If there are more results than specified in @MaxResults@ , the value of @NextToken@ in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call @GetContentModeration@ and populate the @NextToken@ request parameter with the value of @NextToken@ returned from the previous call to @GetContentModeration@ .
--
-- For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.GetContentModeration
  ( -- * Creating a Request
    getContentModeration,
    GetContentModeration,

    -- * Request Lenses
    gcmNextToken,
    gcmMaxResults,
    gcmSortBy,
    gcmJobId,

    -- * Destructuring the Response
    getContentModerationResponse,
    GetContentModerationResponse,

    -- * Response Lenses
    gcmrrsStatusMessage,
    gcmrrsVideoMetadata,
    gcmrrsNextToken,
    gcmrrsJobStatus,
    gcmrrsModerationLabels,
    gcmrrsModerationModelVersion,
    gcmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getContentModeration' smart constructor.
data GetContentModeration = GetContentModeration'
  { _gcmNextToken ::
      !(Maybe Text),
    _gcmMaxResults ::
      !(Maybe Nat),
    _gcmSortBy ::
      !( Maybe
           ContentModerationSortBy
       ),
    _gcmJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetContentModeration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmNextToken' - If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition returns a pagination token in the response. You can use this pagination token to retrieve the next set of unsafe content labels.
--
-- * 'gcmMaxResults' - Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
--
-- * 'gcmSortBy' - Sort to use for elements in the @ModerationLabelDetections@ array. Use @TIMESTAMP@ to sort array elements by the time labels are detected. Use @NAME@ to alphabetically group elements for a label together. Within each label group, the array element are sorted by detection confidence. The default sort is by @TIMESTAMP@ .
--
-- * 'gcmJobId' - The identifier for the unsafe content job. Use @JobId@ to identify the job in a subsequent call to @GetContentModeration@ .
getContentModeration ::
  -- | 'gcmJobId'
  Text ->
  GetContentModeration
getContentModeration pJobId_ =
  GetContentModeration'
    { _gcmNextToken = Nothing,
      _gcmMaxResults = Nothing,
      _gcmSortBy = Nothing,
      _gcmJobId = pJobId_
    }

-- | If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition returns a pagination token in the response. You can use this pagination token to retrieve the next set of unsafe content labels.
gcmNextToken :: Lens' GetContentModeration (Maybe Text)
gcmNextToken = lens _gcmNextToken (\s a -> s {_gcmNextToken = a})

-- | Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
gcmMaxResults :: Lens' GetContentModeration (Maybe Natural)
gcmMaxResults = lens _gcmMaxResults (\s a -> s {_gcmMaxResults = a}) . mapping _Nat

-- | Sort to use for elements in the @ModerationLabelDetections@ array. Use @TIMESTAMP@ to sort array elements by the time labels are detected. Use @NAME@ to alphabetically group elements for a label together. Within each label group, the array element are sorted by detection confidence. The default sort is by @TIMESTAMP@ .
gcmSortBy :: Lens' GetContentModeration (Maybe ContentModerationSortBy)
gcmSortBy = lens _gcmSortBy (\s a -> s {_gcmSortBy = a})

-- | The identifier for the unsafe content job. Use @JobId@ to identify the job in a subsequent call to @GetContentModeration@ .
gcmJobId :: Lens' GetContentModeration Text
gcmJobId = lens _gcmJobId (\s a -> s {_gcmJobId = a})

instance AWSRequest GetContentModeration where
  type
    Rs GetContentModeration =
      GetContentModerationResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          GetContentModerationResponse'
            <$> (x .?> "StatusMessage")
            <*> (x .?> "VideoMetadata")
            <*> (x .?> "NextToken")
            <*> (x .?> "JobStatus")
            <*> (x .?> "ModerationLabels" .!@ mempty)
            <*> (x .?> "ModerationModelVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable GetContentModeration

instance NFData GetContentModeration

instance ToHeaders GetContentModeration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.GetContentModeration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetContentModeration where
  toJSON GetContentModeration' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gcmNextToken,
            ("MaxResults" .=) <$> _gcmMaxResults,
            ("SortBy" .=) <$> _gcmSortBy,
            Just ("JobId" .= _gcmJobId)
          ]
      )

instance ToPath GetContentModeration where
  toPath = const "/"

instance ToQuery GetContentModeration where
  toQuery = const mempty

-- | /See:/ 'getContentModerationResponse' smart constructor.
data GetContentModerationResponse = GetContentModerationResponse'
  { _gcmrrsStatusMessage ::
      !(Maybe Text),
    _gcmrrsVideoMetadata ::
      !( Maybe
           VideoMetadata
       ),
    _gcmrrsNextToken ::
      !(Maybe Text),
    _gcmrrsJobStatus ::
      !( Maybe
           VideoJobStatus
       ),
    _gcmrrsModerationLabels ::
      !( Maybe
           [ContentModerationDetection]
       ),
    _gcmrrsModerationModelVersion ::
      !(Maybe Text),
    _gcmrrsResponseStatus ::
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

-- | Creates a value of 'GetContentModerationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmrrsStatusMessage' - If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- * 'gcmrrsVideoMetadata' - Information about a video that Amazon Rekognition analyzed. @Videometadata@ is returned in every page of paginated responses from @GetContentModeration@ .
--
-- * 'gcmrrsNextToken' - If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of unsafe content labels.
--
-- * 'gcmrrsJobStatus' - The current status of the unsafe content analysis job.
--
-- * 'gcmrrsModerationLabels' - The detected unsafe content labels and the time(s) they were detected.
--
-- * 'gcmrrsModerationModelVersion' - Version number of the moderation detection model that was used to detect unsafe content.
--
-- * 'gcmrrsResponseStatus' - -- | The response status code.
getContentModerationResponse ::
  -- | 'gcmrrsResponseStatus'
  Int ->
  GetContentModerationResponse
getContentModerationResponse pResponseStatus_ =
  GetContentModerationResponse'
    { _gcmrrsStatusMessage =
        Nothing,
      _gcmrrsVideoMetadata = Nothing,
      _gcmrrsNextToken = Nothing,
      _gcmrrsJobStatus = Nothing,
      _gcmrrsModerationLabels = Nothing,
      _gcmrrsModerationModelVersion = Nothing,
      _gcmrrsResponseStatus = pResponseStatus_
    }

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
gcmrrsStatusMessage :: Lens' GetContentModerationResponse (Maybe Text)
gcmrrsStatusMessage = lens _gcmrrsStatusMessage (\s a -> s {_gcmrrsStatusMessage = a})

-- | Information about a video that Amazon Rekognition analyzed. @Videometadata@ is returned in every page of paginated responses from @GetContentModeration@ .
gcmrrsVideoMetadata :: Lens' GetContentModerationResponse (Maybe VideoMetadata)
gcmrrsVideoMetadata = lens _gcmrrsVideoMetadata (\s a -> s {_gcmrrsVideoMetadata = a})

-- | If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of unsafe content labels.
gcmrrsNextToken :: Lens' GetContentModerationResponse (Maybe Text)
gcmrrsNextToken = lens _gcmrrsNextToken (\s a -> s {_gcmrrsNextToken = a})

-- | The current status of the unsafe content analysis job.
gcmrrsJobStatus :: Lens' GetContentModerationResponse (Maybe VideoJobStatus)
gcmrrsJobStatus = lens _gcmrrsJobStatus (\s a -> s {_gcmrrsJobStatus = a})

-- | The detected unsafe content labels and the time(s) they were detected.
gcmrrsModerationLabels :: Lens' GetContentModerationResponse [ContentModerationDetection]
gcmrrsModerationLabels = lens _gcmrrsModerationLabels (\s a -> s {_gcmrrsModerationLabels = a}) . _Default . _Coerce

-- | Version number of the moderation detection model that was used to detect unsafe content.
gcmrrsModerationModelVersion :: Lens' GetContentModerationResponse (Maybe Text)
gcmrrsModerationModelVersion = lens _gcmrrsModerationModelVersion (\s a -> s {_gcmrrsModerationModelVersion = a})

-- | -- | The response status code.
gcmrrsResponseStatus :: Lens' GetContentModerationResponse Int
gcmrrsResponseStatus = lens _gcmrrsResponseStatus (\s a -> s {_gcmrrsResponseStatus = a})

instance NFData GetContentModerationResponse
