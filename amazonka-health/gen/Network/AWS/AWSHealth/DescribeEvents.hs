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
-- Module      : Network.AWS.AWSHealth.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html DescribeEventDetails> and <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html DescribeAffectedEntities> operations.
--
--
-- If no filter criteria are specified, all events are returned. Results are sorted by @lastModifiedTime@ , starting with the most recent event.
--
--
-- This operation returns paginated results.
module Network.AWS.AWSHealth.DescribeEvents
  ( -- * Creating a Request
    describeEvents,
    DescribeEvents,

    -- * Request Lenses
    deNextToken,
    deMaxResults,
    deLocale,
    deFilter,

    -- * Destructuring the Response
    describeEventsResponse,
    DescribeEventsResponse,

    -- * Response Lenses
    derrsNextToken,
    derrsEvents,
    derrsResponseStatus,
  )
where

import Network.AWS.AWSHealth.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { _deNextToken ::
      !(Maybe Text),
    _deMaxResults :: !(Maybe Nat),
    _deLocale :: !(Maybe Text),
    _deFilter :: !(Maybe EventFilter)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'deMaxResults' - The maximum number of items to return in one batch, between 10 and 100, inclusive.
--
-- * 'deLocale' - The locale (language) to return information in. English (en) is the default and the only supported value at this time.
--
-- * 'deFilter' - Values to narrow the results returned.
describeEvents ::
  DescribeEvents
describeEvents =
  DescribeEvents'
    { _deNextToken = Nothing,
      _deMaxResults = Nothing,
      _deLocale = Nothing,
      _deFilter = Nothing
    }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
deNextToken :: Lens' DescribeEvents (Maybe Text)
deNextToken = lens _deNextToken (\s a -> s {_deNextToken = a})

-- | The maximum number of items to return in one batch, between 10 and 100, inclusive.
deMaxResults :: Lens' DescribeEvents (Maybe Natural)
deMaxResults = lens _deMaxResults (\s a -> s {_deMaxResults = a}) . mapping _Nat

-- | The locale (language) to return information in. English (en) is the default and the only supported value at this time.
deLocale :: Lens' DescribeEvents (Maybe Text)
deLocale = lens _deLocale (\s a -> s {_deLocale = a})

-- | Values to narrow the results returned.
deFilter :: Lens' DescribeEvents (Maybe EventFilter)
deFilter = lens _deFilter (\s a -> s {_deFilter = a})

instance AWSPager DescribeEvents where
  page rq rs
    | stop (rs ^. derrsNextToken) = Nothing
    | stop (rs ^. derrsEvents) = Nothing
    | otherwise =
      Just $ rq & deNextToken .~ rs ^. derrsNextToken

instance AWSRequest DescribeEvents where
  type Rs DescribeEvents = DescribeEventsResponse
  request = postJSON awsHealth
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "events" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEvents

instance NFData DescribeEvents

instance ToHeaders DescribeEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSHealth_20160804.DescribeEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEvents where
  toJSON DescribeEvents' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _deNextToken,
            ("maxResults" .=) <$> _deMaxResults,
            ("locale" .=) <$> _deLocale,
            ("filter" .=) <$> _deFilter
          ]
      )

instance ToPath DescribeEvents where
  toPath = const "/"

instance ToQuery DescribeEvents where
  toQuery = const mempty

-- | /See:/ 'describeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { _derrsNextToken ::
      !(Maybe Text),
    _derrsEvents ::
      !(Maybe [Event]),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'derrsEvents' - The events that match the specified filter criteria.
--
-- * 'derrsResponseStatus' - -- | The response status code.
describeEventsResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DescribeEventsResponse
describeEventsResponse pResponseStatus_ =
  DescribeEventsResponse'
    { _derrsNextToken = Nothing,
      _derrsEvents = Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
derrsNextToken :: Lens' DescribeEventsResponse (Maybe Text)
derrsNextToken = lens _derrsNextToken (\s a -> s {_derrsNextToken = a})

-- | The events that match the specified filter criteria.
derrsEvents :: Lens' DescribeEventsResponse [Event]
derrsEvents = lens _derrsEvents (\s a -> s {_derrsEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEventsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEventsResponse
