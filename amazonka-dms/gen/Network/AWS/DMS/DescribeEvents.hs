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
-- Module      : Network.AWS.DMS.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html Working with Events and Notifications> in the /AWS Database Migration User Guide./
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeEvents
  ( -- * Creating a Request
    describeEvents,
    DescribeEvents,

    -- * Request Lenses
    deDuration,
    deStartTime,
    deEventCategories,
    deEndTime,
    deSourceIdentifier,
    deFilters,
    deSourceType,
    deMarker,
    deMaxRecords,

    -- * Destructuring the Response
    describeEventsResponse,
    DescribeEventsResponse,

    -- * Response Lenses
    desrsEvents,
    desrsMarker,
    desrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { _deDuration ::
      !(Maybe Int),
    _deStartTime :: !(Maybe POSIX),
    _deEventCategories :: !(Maybe [Text]),
    _deEndTime :: !(Maybe POSIX),
    _deSourceIdentifier :: !(Maybe Text),
    _deFilters :: !(Maybe [Filter]),
    _deSourceType :: !(Maybe SourceType),
    _deMarker :: !(Maybe Text),
    _deMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deDuration' - The duration of the events to be listed.
--
-- * 'deStartTime' - The start time for the events to be listed.
--
-- * 'deEventCategories' - A list of event categories for the source type that you've chosen.
--
-- * 'deEndTime' - The end time for the events to be listed.
--
-- * 'deSourceIdentifier' - The identifier of an event source.
--
-- * 'deFilters' - Filters applied to events.
--
-- * 'deSourceType' - The type of AWS DMS resource that generates events. Valid values: replication-instance | replication-task
--
-- * 'deMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'deMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeEvents ::
  DescribeEvents
describeEvents =
  DescribeEvents'
    { _deDuration = Nothing,
      _deStartTime = Nothing,
      _deEventCategories = Nothing,
      _deEndTime = Nothing,
      _deSourceIdentifier = Nothing,
      _deFilters = Nothing,
      _deSourceType = Nothing,
      _deMarker = Nothing,
      _deMaxRecords = Nothing
    }

-- | The duration of the events to be listed.
deDuration :: Lens' DescribeEvents (Maybe Int)
deDuration = lens _deDuration (\s a -> s {_deDuration = a})

-- | The start time for the events to be listed.
deStartTime :: Lens' DescribeEvents (Maybe UTCTime)
deStartTime = lens _deStartTime (\s a -> s {_deStartTime = a}) . mapping _Time

-- | A list of event categories for the source type that you've chosen.
deEventCategories :: Lens' DescribeEvents [Text]
deEventCategories = lens _deEventCategories (\s a -> s {_deEventCategories = a}) . _Default . _Coerce

-- | The end time for the events to be listed.
deEndTime :: Lens' DescribeEvents (Maybe UTCTime)
deEndTime = lens _deEndTime (\s a -> s {_deEndTime = a}) . mapping _Time

-- | The identifier of an event source.
deSourceIdentifier :: Lens' DescribeEvents (Maybe Text)
deSourceIdentifier = lens _deSourceIdentifier (\s a -> s {_deSourceIdentifier = a})

-- | Filters applied to events.
deFilters :: Lens' DescribeEvents [Filter]
deFilters = lens _deFilters (\s a -> s {_deFilters = a}) . _Default . _Coerce

-- | The type of AWS DMS resource that generates events. Valid values: replication-instance | replication-task
deSourceType :: Lens' DescribeEvents (Maybe SourceType)
deSourceType = lens _deSourceType (\s a -> s {_deSourceType = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
deMarker :: Lens' DescribeEvents (Maybe Text)
deMarker = lens _deMarker (\s a -> s {_deMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
deMaxRecords :: Lens' DescribeEvents (Maybe Int)
deMaxRecords = lens _deMaxRecords (\s a -> s {_deMaxRecords = a})

instance AWSPager DescribeEvents where
  page rq rs
    | stop (rs ^. desrsMarker) = Nothing
    | stop (rs ^. desrsEvents) = Nothing
    | otherwise =
      Just $ rq & deMarker .~ rs ^. desrsMarker

instance AWSRequest DescribeEvents where
  type Rs DescribeEvents = DescribeEventsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventsResponse'
            <$> (x .?> "Events" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEvents

instance NFData DescribeEvents

instance ToHeaders DescribeEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDMSv20160101.DescribeEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEvents where
  toJSON DescribeEvents' {..} =
    object
      ( catMaybes
          [ ("Duration" .=) <$> _deDuration,
            ("StartTime" .=) <$> _deStartTime,
            ("EventCategories" .=) <$> _deEventCategories,
            ("EndTime" .=) <$> _deEndTime,
            ("SourceIdentifier" .=) <$> _deSourceIdentifier,
            ("Filters" .=) <$> _deFilters,
            ("SourceType" .=) <$> _deSourceType,
            ("Marker" .=) <$> _deMarker,
            ("MaxRecords" .=) <$> _deMaxRecords
          ]
      )

instance ToPath DescribeEvents where
  toPath = const "/"

instance ToQuery DescribeEvents where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { _desrsEvents ::
      !(Maybe [Event]),
    _desrsMarker ::
      !(Maybe Text),
    _desrsResponseStatus ::
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
-- * 'desrsEvents' - The events described.
--
-- * 'desrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeEventsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeEventsResponse
describeEventsResponse pResponseStatus_ =
  DescribeEventsResponse'
    { _desrsEvents = Nothing,
      _desrsMarker = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The events described.
desrsEvents :: Lens' DescribeEventsResponse [Event]
desrsEvents = lens _desrsEvents (\s a -> s {_desrsEvents = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
desrsMarker :: Lens' DescribeEventsResponse (Maybe Text)
desrsMarker = lens _desrsMarker (\s a -> s {_desrsMarker = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeEventsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeEventsResponse
