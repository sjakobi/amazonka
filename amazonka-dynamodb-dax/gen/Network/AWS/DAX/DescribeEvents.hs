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
-- Module      : Network.AWS.DAX.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.
--
--
-- By default, only the events occurring within the last 24 hours are returned; however, you can retrieve up to 14 days' worth of events if necessary.
--
--
-- This operation returns paginated results.
module Network.AWS.DAX.DescribeEvents
  ( -- * Creating a Request
    describeEvents,
    DescribeEvents,

    -- * Request Lenses
    deNextToken,
    deDuration,
    deMaxResults,
    deStartTime,
    deSourceName,
    deEndTime,
    deSourceType,

    -- * Destructuring the Response
    describeEventsResponse,
    DescribeEventsResponse,

    -- * Response Lenses
    derrsNextToken,
    derrsEvents,
    derrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { _deNextToken ::
      !(Maybe Text),
    _deDuration :: !(Maybe Int),
    _deMaxResults :: !(Maybe Int),
    _deStartTime :: !(Maybe POSIX),
    _deSourceName :: !(Maybe Text),
    _deEndTime :: !(Maybe POSIX),
    _deSourceType :: !(Maybe SourceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'deDuration' - The number of minutes' worth of events to retrieve.
--
-- * 'deMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
--
-- * 'deStartTime' - The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
--
-- * 'deSourceName' - The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.
--
-- * 'deEndTime' - The end of the time interval for which to retrieve events, specified in ISO 8601 format.
--
-- * 'deSourceType' - The event source to retrieve events for. If no value is specified, all events are returned.
describeEvents ::
  DescribeEvents
describeEvents =
  DescribeEvents'
    { _deNextToken = Nothing,
      _deDuration = Nothing,
      _deMaxResults = Nothing,
      _deStartTime = Nothing,
      _deSourceName = Nothing,
      _deEndTime = Nothing,
      _deSourceType = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
deNextToken :: Lens' DescribeEvents (Maybe Text)
deNextToken = lens _deNextToken (\s a -> s {_deNextToken = a})

-- | The number of minutes' worth of events to retrieve.
deDuration :: Lens' DescribeEvents (Maybe Int)
deDuration = lens _deDuration (\s a -> s {_deDuration = a})

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
deMaxResults :: Lens' DescribeEvents (Maybe Int)
deMaxResults = lens _deMaxResults (\s a -> s {_deMaxResults = a})

-- | The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
deStartTime :: Lens' DescribeEvents (Maybe UTCTime)
deStartTime = lens _deStartTime (\s a -> s {_deStartTime = a}) . mapping _Time

-- | The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.
deSourceName :: Lens' DescribeEvents (Maybe Text)
deSourceName = lens _deSourceName (\s a -> s {_deSourceName = a})

-- | The end of the time interval for which to retrieve events, specified in ISO 8601 format.
deEndTime :: Lens' DescribeEvents (Maybe UTCTime)
deEndTime = lens _deEndTime (\s a -> s {_deEndTime = a}) . mapping _Time

-- | The event source to retrieve events for. If no value is specified, all events are returned.
deSourceType :: Lens' DescribeEvents (Maybe SourceType)
deSourceType = lens _deSourceType (\s a -> s {_deSourceType = a})

instance AWSPager DescribeEvents where
  page rq rs
    | stop (rs ^. derrsNextToken) = Nothing
    | stop (rs ^. derrsEvents) = Nothing
    | otherwise =
      Just $ rq & deNextToken .~ rs ^. derrsNextToken

instance AWSRequest DescribeEvents where
  type Rs DescribeEvents = DescribeEventsResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Events" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEvents

instance NFData DescribeEvents

instance ToHeaders DescribeEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.DescribeEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEvents where
  toJSON DescribeEvents' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _deNextToken,
            ("Duration" .=) <$> _deDuration,
            ("MaxResults" .=) <$> _deMaxResults,
            ("StartTime" .=) <$> _deStartTime,
            ("SourceName" .=) <$> _deSourceName,
            ("EndTime" .=) <$> _deEndTime,
            ("SourceType" .=) <$> _deSourceType
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
-- * 'derrsNextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'derrsEvents' - An array of events. Each element in the array represents one event.
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

-- | Provides an identifier to allow retrieval of paginated results.
derrsNextToken :: Lens' DescribeEventsResponse (Maybe Text)
derrsNextToken = lens _derrsNextToken (\s a -> s {_derrsNextToken = a})

-- | An array of events. Each element in the array represents one event.
derrsEvents :: Lens' DescribeEventsResponse [Event]
derrsEvents = lens _derrsEvents (\s a -> s {_derrsEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEventsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEventsResponse
