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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.ListFragments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of 'Fragment' objects from the specified stream and timestamp range within the archived data.
--
--
-- Listing fragments is eventually consistent. This means that even if the producer receives an acknowledgment that a fragment is persisted, the result might not be returned immediately from a request to @ListFragments@ . However, results are typically available in less than one second.
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
--
--
-- This operation returns paginated results.
module Network.AWS.KinesisVideoArchivedMedia.ListFragments
  ( -- * Creating a Request
    listFragments,
    ListFragments,

    -- * Request Lenses
    lfNextToken,
    lfMaxResults,
    lfStreamARN,
    lfStreamName,
    lfFragmentSelector,

    -- * Destructuring the Response
    listFragmentsResponse,
    ListFragmentsResponse,

    -- * Response Lenses
    lfrrsNextToken,
    lfrrsFragments,
    lfrrsResponseStatus,
  )
where

import Network.AWS.KinesisVideoArchivedMedia.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFragments' smart constructor.
data ListFragments = ListFragments'
  { _lfNextToken ::
      !(Maybe Text),
    _lfMaxResults :: !(Maybe Nat),
    _lfStreamARN :: !(Maybe Text),
    _lfStreamName :: !(Maybe Text),
    _lfFragmentSelector ::
      !(Maybe FragmentSelector)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFragments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfNextToken' - A token to specify where to start paginating. This is the 'ListFragmentsOutput$NextToken' from a previously truncated response.
--
-- * 'lfMaxResults' - The total number of fragments to return. If the total number of fragments available is more than the value specified in @max-results@ , then a 'ListFragmentsOutput$NextToken' is provided in the output that you can use to resume pagination.
--
-- * 'lfStreamARN' - The Amazon Resource Name (ARN) of the stream from which to retrieve a fragment list. Specify either this parameter or the @StreamName@ parameter.
--
-- * 'lfStreamName' - The name of the stream from which to retrieve a fragment list. Specify either this parameter or the @StreamARN@ parameter.
--
-- * 'lfFragmentSelector' - Describes the timestamp range and timestamp origin for the range of fragments to return.
listFragments ::
  ListFragments
listFragments =
  ListFragments'
    { _lfNextToken = Nothing,
      _lfMaxResults = Nothing,
      _lfStreamARN = Nothing,
      _lfStreamName = Nothing,
      _lfFragmentSelector = Nothing
    }

-- | A token to specify where to start paginating. This is the 'ListFragmentsOutput$NextToken' from a previously truncated response.
lfNextToken :: Lens' ListFragments (Maybe Text)
lfNextToken = lens _lfNextToken (\s a -> s {_lfNextToken = a})

-- | The total number of fragments to return. If the total number of fragments available is more than the value specified in @max-results@ , then a 'ListFragmentsOutput$NextToken' is provided in the output that you can use to resume pagination.
lfMaxResults :: Lens' ListFragments (Maybe Natural)
lfMaxResults = lens _lfMaxResults (\s a -> s {_lfMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the stream from which to retrieve a fragment list. Specify either this parameter or the @StreamName@ parameter.
lfStreamARN :: Lens' ListFragments (Maybe Text)
lfStreamARN = lens _lfStreamARN (\s a -> s {_lfStreamARN = a})

-- | The name of the stream from which to retrieve a fragment list. Specify either this parameter or the @StreamARN@ parameter.
lfStreamName :: Lens' ListFragments (Maybe Text)
lfStreamName = lens _lfStreamName (\s a -> s {_lfStreamName = a})

-- | Describes the timestamp range and timestamp origin for the range of fragments to return.
lfFragmentSelector :: Lens' ListFragments (Maybe FragmentSelector)
lfFragmentSelector = lens _lfFragmentSelector (\s a -> s {_lfFragmentSelector = a})

instance AWSPager ListFragments where
  page rq rs
    | stop (rs ^. lfrrsNextToken) = Nothing
    | stop (rs ^. lfrrsFragments) = Nothing
    | otherwise =
      Just $ rq & lfNextToken .~ rs ^. lfrrsNextToken

instance AWSRequest ListFragments where
  type Rs ListFragments = ListFragmentsResponse
  request = postJSON kinesisVideoArchivedMedia
  response =
    receiveJSON
      ( \s h x ->
          ListFragmentsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Fragments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListFragments

instance NFData ListFragments

instance ToHeaders ListFragments where
  toHeaders = const mempty

instance ToJSON ListFragments where
  toJSON ListFragments' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lfNextToken,
            ("MaxResults" .=) <$> _lfMaxResults,
            ("StreamARN" .=) <$> _lfStreamARN,
            ("StreamName" .=) <$> _lfStreamName,
            ("FragmentSelector" .=) <$> _lfFragmentSelector
          ]
      )

instance ToPath ListFragments where
  toPath = const "/listFragments"

instance ToQuery ListFragments where
  toQuery = const mempty

-- | /See:/ 'listFragmentsResponse' smart constructor.
data ListFragmentsResponse = ListFragmentsResponse'
  { _lfrrsNextToken ::
      !(Maybe Text),
    _lfrrsFragments ::
      !(Maybe [Fragment]),
    _lfrrsResponseStatus ::
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

-- | Creates a value of 'ListFragmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrrsNextToken' - If the returned list is truncated, the operation returns this token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lfrrsFragments' - A list of archived 'Fragment' objects from the stream that meet the selector criteria. Results are in no specific order, even across pages.
--
-- * 'lfrrsResponseStatus' - -- | The response status code.
listFragmentsResponse ::
  -- | 'lfrrsResponseStatus'
  Int ->
  ListFragmentsResponse
listFragmentsResponse pResponseStatus_ =
  ListFragmentsResponse'
    { _lfrrsNextToken = Nothing,
      _lfrrsFragments = Nothing,
      _lfrrsResponseStatus = pResponseStatus_
    }

-- | If the returned list is truncated, the operation returns this token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
lfrrsNextToken :: Lens' ListFragmentsResponse (Maybe Text)
lfrrsNextToken = lens _lfrrsNextToken (\s a -> s {_lfrrsNextToken = a})

-- | A list of archived 'Fragment' objects from the stream that meet the selector criteria. Results are in no specific order, even across pages.
lfrrsFragments :: Lens' ListFragmentsResponse [Fragment]
lfrrsFragments = lens _lfrrsFragments (\s a -> s {_lfrrsFragments = a}) . _Default . _Coerce

-- | -- | The response status code.
lfrrsResponseStatus :: Lens' ListFragmentsResponse Int
lfrrsResponseStatus = lens _lfrrsResponseStatus (\s a -> s {_lfrrsResponseStatus = a})

instance NFData ListFragmentsResponse
