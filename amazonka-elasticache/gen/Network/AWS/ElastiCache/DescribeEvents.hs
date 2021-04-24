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
-- Module      : Network.AWS.ElastiCache.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns events related to clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cluster, cache security group, or cache parameter group by providing the name as a parameter.
--
--
-- By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeEvents
  ( -- * Creating a Request
    describeEvents,
    DescribeEvents,

    -- * Request Lenses
    deDuration,
    deStartTime,
    deEndTime,
    deSourceIdentifier,
    deSourceType,
    deMarker,
    deMaxRecords,

    -- * Destructuring the Response
    describeEventsResponse,
    DescribeEventsResponse,

    -- * Response Lenses
    derrsEvents,
    derrsMarker,
    derrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeEvents@ operation.
--
--
--
-- /See:/ 'describeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { _deDuration ::
      !(Maybe Int),
    _deStartTime :: !(Maybe ISO8601),
    _deEndTime :: !(Maybe ISO8601),
    _deSourceIdentifier :: !(Maybe Text),
    _deSourceType :: !(Maybe SourceType),
    _deMarker :: !(Maybe Text),
    _deMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deDuration' - The number of minutes worth of events to retrieve.
--
-- * 'deStartTime' - The beginning of the time interval to retrieve events for, specified in ISO 8601 format. __Example:__ 2017-03-30T07:03:49.555Z
--
-- * 'deEndTime' - The end of the time interval for which to retrieve events, specified in ISO 8601 format. __Example:__ 2017-03-30T07:03:49.555Z
--
-- * 'deSourceIdentifier' - The identifier of the event source for which events are returned. If not specified, all sources are included in the response.
--
-- * 'deSourceType' - The event source to retrieve events for. If no value is specified, all events are returned.
--
-- * 'deMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'deMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
describeEvents ::
  DescribeEvents
describeEvents =
  DescribeEvents'
    { _deDuration = Nothing,
      _deStartTime = Nothing,
      _deEndTime = Nothing,
      _deSourceIdentifier = Nothing,
      _deSourceType = Nothing,
      _deMarker = Nothing,
      _deMaxRecords = Nothing
    }

-- | The number of minutes worth of events to retrieve.
deDuration :: Lens' DescribeEvents (Maybe Int)
deDuration = lens _deDuration (\s a -> s {_deDuration = a})

-- | The beginning of the time interval to retrieve events for, specified in ISO 8601 format. __Example:__ 2017-03-30T07:03:49.555Z
deStartTime :: Lens' DescribeEvents (Maybe UTCTime)
deStartTime = lens _deStartTime (\s a -> s {_deStartTime = a}) . mapping _Time

-- | The end of the time interval for which to retrieve events, specified in ISO 8601 format. __Example:__ 2017-03-30T07:03:49.555Z
deEndTime :: Lens' DescribeEvents (Maybe UTCTime)
deEndTime = lens _deEndTime (\s a -> s {_deEndTime = a}) . mapping _Time

-- | The identifier of the event source for which events are returned. If not specified, all sources are included in the response.
deSourceIdentifier :: Lens' DescribeEvents (Maybe Text)
deSourceIdentifier = lens _deSourceIdentifier (\s a -> s {_deSourceIdentifier = a})

-- | The event source to retrieve events for. If no value is specified, all events are returned.
deSourceType :: Lens' DescribeEvents (Maybe SourceType)
deSourceType = lens _deSourceType (\s a -> s {_deSourceType = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
deMarker :: Lens' DescribeEvents (Maybe Text)
deMarker = lens _deMarker (\s a -> s {_deMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
deMaxRecords :: Lens' DescribeEvents (Maybe Int)
deMaxRecords = lens _deMaxRecords (\s a -> s {_deMaxRecords = a})

instance AWSPager DescribeEvents where
  page rq rs
    | stop (rs ^. derrsMarker) = Nothing
    | stop (rs ^. derrsEvents) = Nothing
    | otherwise =
      Just $ rq & deMarker .~ rs ^. derrsMarker

instance AWSRequest DescribeEvents where
  type Rs DescribeEvents = DescribeEventsResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeEventsResult"
      ( \s h x ->
          DescribeEventsResponse'
            <$> ( x .@? "Events" .!@ mempty
                    >>= may (parseXMLList "Event")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEvents

instance NFData DescribeEvents

instance ToHeaders DescribeEvents where
  toHeaders = const mempty

instance ToPath DescribeEvents where
  toPath = const "/"

instance ToQuery DescribeEvents where
  toQuery DescribeEvents' {..} =
    mconcat
      [ "Action" =: ("DescribeEvents" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "Duration" =: _deDuration,
        "StartTime" =: _deStartTime,
        "EndTime" =: _deEndTime,
        "SourceIdentifier" =: _deSourceIdentifier,
        "SourceType" =: _deSourceType,
        "Marker" =: _deMarker,
        "MaxRecords" =: _deMaxRecords
      ]

-- | Represents the output of a @DescribeEvents@ operation.
--
--
--
-- /See:/ 'describeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { _derrsEvents ::
      !(Maybe [Event]),
    _derrsMarker ::
      !(Maybe Text),
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
-- * 'derrsEvents' - A list of events. Each element in the list contains detailed information about one event.
--
-- * 'derrsMarker' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'derrsResponseStatus' - -- | The response status code.
describeEventsResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DescribeEventsResponse
describeEventsResponse pResponseStatus_ =
  DescribeEventsResponse'
    { _derrsEvents = Nothing,
      _derrsMarker = Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | A list of events. Each element in the list contains detailed information about one event.
derrsEvents :: Lens' DescribeEventsResponse [Event]
derrsEvents = lens _derrsEvents (\s a -> s {_derrsEvents = a}) . _Default . _Coerce

-- | Provides an identifier to allow retrieval of paginated results.
derrsMarker :: Lens' DescribeEventsResponse (Maybe Text)
derrsMarker = lens _derrsMarker (\s a -> s {_derrsMarker = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEventsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEventsResponse
