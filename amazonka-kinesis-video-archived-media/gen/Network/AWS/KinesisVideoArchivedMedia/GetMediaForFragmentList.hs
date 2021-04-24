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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.GetMediaForFragmentList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets media for a list of fragments (specified by fragment number) from the archived data in an Amazon Kinesis video stream.
--
--
-- The following limits apply when using the @GetMediaForFragmentList@ API:
--
--     * A client can call @GetMediaForFragmentList@ up to five times per second per stream.
--
--     * Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a @GetMediaForFragmentList@ session.
--
--
--
-- /Important:/ If an error is thrown after invoking a Kinesis Video Streams archived media API, in addition to the HTTP status code and the response body, it includes the following pieces of information:
--
--     * @x-amz-ErrorType@ HTTP header – contains a more specific error type in addition to what the HTTP status code provides.
--
--     * @x-amz-RequestId@ HTTP header – if you want to report an issue to AWS, the support team can better diagnose the problem if given the Request Id.
--
--
--
-- Both the HTTP status code and the ErrorType header can be utilized to make programmatic decisions about whether errors are retry-able and under what conditions, as well as provide information on what actions the client programmer might need to take in order to successfully try again.
--
-- For more information, see the __Errors__ section at the bottom of this topic, as well as <https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html Common Errors> .
module Network.AWS.KinesisVideoArchivedMedia.GetMediaForFragmentList
  ( -- * Creating a Request
    getMediaForFragmentList,
    GetMediaForFragmentList,

    -- * Request Lenses
    gmfflStreamARN,
    gmfflStreamName,
    gmfflFragments,

    -- * Destructuring the Response
    getMediaForFragmentListResponse,
    GetMediaForFragmentListResponse,

    -- * Response Lenses
    gmfflrrsContentType,
    gmfflrrsResponseStatus,
    gmfflrrsPayload,
  )
where

import Network.AWS.KinesisVideoArchivedMedia.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMediaForFragmentList' smart constructor.
data GetMediaForFragmentList = GetMediaForFragmentList'
  { _gmfflStreamARN ::
      !(Maybe Text),
    _gmfflStreamName ::
      !(Maybe Text),
    _gmfflFragments ::
      !(List1 Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMediaForFragmentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmfflStreamARN' - The Amazon Resource Name (ARN) of the stream from which to retrieve fragment media. Specify either this parameter or the @StreamName@ parameter.
--
-- * 'gmfflStreamName' - The name of the stream from which to retrieve fragment media. Specify either this parameter or the @StreamARN@ parameter.
--
-- * 'gmfflFragments' - A list of the numbers of fragments for which to retrieve media. You retrieve these values with 'ListFragments' .
getMediaForFragmentList ::
  -- | 'gmfflFragments'
  NonEmpty Text ->
  GetMediaForFragmentList
getMediaForFragmentList pFragments_ =
  GetMediaForFragmentList'
    { _gmfflStreamARN = Nothing,
      _gmfflStreamName = Nothing,
      _gmfflFragments = _List1 # pFragments_
    }

-- | The Amazon Resource Name (ARN) of the stream from which to retrieve fragment media. Specify either this parameter or the @StreamName@ parameter.
gmfflStreamARN :: Lens' GetMediaForFragmentList (Maybe Text)
gmfflStreamARN = lens _gmfflStreamARN (\s a -> s {_gmfflStreamARN = a})

-- | The name of the stream from which to retrieve fragment media. Specify either this parameter or the @StreamARN@ parameter.
gmfflStreamName :: Lens' GetMediaForFragmentList (Maybe Text)
gmfflStreamName = lens _gmfflStreamName (\s a -> s {_gmfflStreamName = a})

-- | A list of the numbers of fragments for which to retrieve media. You retrieve these values with 'ListFragments' .
gmfflFragments :: Lens' GetMediaForFragmentList (NonEmpty Text)
gmfflFragments = lens _gmfflFragments (\s a -> s {_gmfflFragments = a}) . _List1

instance AWSRequest GetMediaForFragmentList where
  type
    Rs GetMediaForFragmentList =
      GetMediaForFragmentListResponse
  request = postJSON kinesisVideoArchivedMedia
  response =
    receiveBody
      ( \s h x ->
          GetMediaForFragmentListResponse'
            <$> (h .#? "Content-Type")
            <*> (pure (fromEnum s))
            <*> (pure x)
      )

instance Hashable GetMediaForFragmentList

instance NFData GetMediaForFragmentList

instance ToHeaders GetMediaForFragmentList where
  toHeaders = const mempty

instance ToJSON GetMediaForFragmentList where
  toJSON GetMediaForFragmentList' {..} =
    object
      ( catMaybes
          [ ("StreamARN" .=) <$> _gmfflStreamARN,
            ("StreamName" .=) <$> _gmfflStreamName,
            Just ("Fragments" .= _gmfflFragments)
          ]
      )

instance ToPath GetMediaForFragmentList where
  toPath = const "/getMediaForFragmentList"

instance ToQuery GetMediaForFragmentList where
  toQuery = const mempty

-- | /See:/ 'getMediaForFragmentListResponse' smart constructor.
data GetMediaForFragmentListResponse = GetMediaForFragmentListResponse'
  { _gmfflrrsContentType ::
      !( Maybe
           Text
       ),
    _gmfflrrsResponseStatus ::
      !Int,
    _gmfflrrsPayload ::
      !RsBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'GetMediaForFragmentListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmfflrrsContentType' - The content type of the requested media.
--
-- * 'gmfflrrsResponseStatus' - -- | The response status code.
--
-- * 'gmfflrrsPayload' - The payload that Kinesis Video Streams returns is a sequence of chunks from the specified stream. For information about the chunks, see <http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html PutMedia> . The chunks that Kinesis Video Streams returns in the @GetMediaForFragmentList@ call also include the following additional Matroska (MKV) tags:      * AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.     * AWS_KINESISVIDEO_SERVER_SIDE_TIMESTAMP - Server-side timestamp of the fragment.     * AWS_KINESISVIDEO_PRODUCER_SIDE_TIMESTAMP - Producer-side timestamp of the fragment. The following tags will be included if an exception occurs:     * AWS_KINESISVIDEO_FRAGMENT_NUMBER - The number of the fragment that threw the exception     * AWS_KINESISVIDEO_EXCEPTION_ERROR_CODE - The integer code of the exception     * AWS_KINESISVIDEO_EXCEPTION_MESSAGE - A text description of the exception
getMediaForFragmentListResponse ::
  -- | 'gmfflrrsResponseStatus'
  Int ->
  -- | 'gmfflrrsPayload'
  RsBody ->
  GetMediaForFragmentListResponse
getMediaForFragmentListResponse
  pResponseStatus_
  pPayload_ =
    GetMediaForFragmentListResponse'
      { _gmfflrrsContentType =
          Nothing,
        _gmfflrrsResponseStatus = pResponseStatus_,
        _gmfflrrsPayload = pPayload_
      }

-- | The content type of the requested media.
gmfflrrsContentType :: Lens' GetMediaForFragmentListResponse (Maybe Text)
gmfflrrsContentType = lens _gmfflrrsContentType (\s a -> s {_gmfflrrsContentType = a})

-- | -- | The response status code.
gmfflrrsResponseStatus :: Lens' GetMediaForFragmentListResponse Int
gmfflrrsResponseStatus = lens _gmfflrrsResponseStatus (\s a -> s {_gmfflrrsResponseStatus = a})

-- | The payload that Kinesis Video Streams returns is a sequence of chunks from the specified stream. For information about the chunks, see <http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html PutMedia> . The chunks that Kinesis Video Streams returns in the @GetMediaForFragmentList@ call also include the following additional Matroska (MKV) tags:      * AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.     * AWS_KINESISVIDEO_SERVER_SIDE_TIMESTAMP - Server-side timestamp of the fragment.     * AWS_KINESISVIDEO_PRODUCER_SIDE_TIMESTAMP - Producer-side timestamp of the fragment. The following tags will be included if an exception occurs:     * AWS_KINESISVIDEO_FRAGMENT_NUMBER - The number of the fragment that threw the exception     * AWS_KINESISVIDEO_EXCEPTION_ERROR_CODE - The integer code of the exception     * AWS_KINESISVIDEO_EXCEPTION_MESSAGE - A text description of the exception
gmfflrrsPayload :: Lens' GetMediaForFragmentListResponse RsBody
gmfflrrsPayload = lens _gmfflrrsPayload (\s a -> s {_gmfflrrsPayload = a})
