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
-- Module      : Network.AWS.RDS.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns events related to DB instances, DB clusters, DB parameter groups, DB security groups, DB snapshots, and DB cluster snapshots for the past 14 days. Events specific to a particular DB instances, DB clusters, DB parameter groups, DB security groups, DB snapshots, and DB cluster snapshots group can be obtained by providing the name as a parameter.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeEvents
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
    derrsEvents,
    derrsMarker,
    derrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
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
    _deStartTime :: !(Maybe ISO8601),
    _deEventCategories :: !(Maybe [Text]),
    _deEndTime :: !(Maybe ISO8601),
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
-- * 'deDuration' - The number of minutes to retrieve events for. Default: 60
--
-- * 'deStartTime' - The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: 2009-07-08T18:00Z
--
-- * 'deEventCategories' - A list of event categories that trigger notifications for a event notification subscription.
--
-- * 'deEndTime' - The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: 2009-07-08T18:00Z
--
-- * 'deSourceIdentifier' - The identifier of the event source for which events are returned. If not specified, then all sources are included in the response. Constraints:     * If @SourceIdentifier@ is supplied, @SourceType@ must also be provided.     * If the source type is a DB instance, a @DBInstanceIdentifier@ value must be supplied.     * If the source type is a DB cluster, a @DBClusterIdentifier@ value must be supplied.     * If the source type is a DB parameter group, a @DBParameterGroupName@ value must be supplied.     * If the source type is a DB security group, a @DBSecurityGroupName@ value must be supplied.     * If the source type is a DB snapshot, a @DBSnapshotIdentifier@ value must be supplied.     * If the source type is a DB cluster snapshot, a @DBClusterSnapshotIdentifier@ value must be supplied.     * Can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'deFilters' - This parameter isn't currently supported.
--
-- * 'deSourceType' - The event source to retrieve events for. If no value is specified, all events are returned.
--
-- * 'deMarker' - An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'deMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
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

-- | The number of minutes to retrieve events for. Default: 60
deDuration :: Lens' DescribeEvents (Maybe Int)
deDuration = lens _deDuration (\s a -> s {_deDuration = a})

-- | The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: 2009-07-08T18:00Z
deStartTime :: Lens' DescribeEvents (Maybe UTCTime)
deStartTime = lens _deStartTime (\s a -> s {_deStartTime = a}) . mapping _Time

-- | A list of event categories that trigger notifications for a event notification subscription.
deEventCategories :: Lens' DescribeEvents [Text]
deEventCategories = lens _deEventCategories (\s a -> s {_deEventCategories = a}) . _Default . _Coerce

-- | The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: 2009-07-08T18:00Z
deEndTime :: Lens' DescribeEvents (Maybe UTCTime)
deEndTime = lens _deEndTime (\s a -> s {_deEndTime = a}) . mapping _Time

-- | The identifier of the event source for which events are returned. If not specified, then all sources are included in the response. Constraints:     * If @SourceIdentifier@ is supplied, @SourceType@ must also be provided.     * If the source type is a DB instance, a @DBInstanceIdentifier@ value must be supplied.     * If the source type is a DB cluster, a @DBClusterIdentifier@ value must be supplied.     * If the source type is a DB parameter group, a @DBParameterGroupName@ value must be supplied.     * If the source type is a DB security group, a @DBSecurityGroupName@ value must be supplied.     * If the source type is a DB snapshot, a @DBSnapshotIdentifier@ value must be supplied.     * If the source type is a DB cluster snapshot, a @DBClusterSnapshotIdentifier@ value must be supplied.     * Can't end with a hyphen or contain two consecutive hyphens.
deSourceIdentifier :: Lens' DescribeEvents (Maybe Text)
deSourceIdentifier = lens _deSourceIdentifier (\s a -> s {_deSourceIdentifier = a})

-- | This parameter isn't currently supported.
deFilters :: Lens' DescribeEvents [Filter]
deFilters = lens _deFilters (\s a -> s {_deFilters = a}) . _Default . _Coerce

-- | The event source to retrieve events for. If no value is specified, all events are returned.
deSourceType :: Lens' DescribeEvents (Maybe SourceType)
deSourceType = lens _deSourceType (\s a -> s {_deSourceType = a})

-- | An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
deMarker :: Lens' DescribeEvents (Maybe Text)
deMarker = lens _deMarker (\s a -> s {_deMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
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
  request = postQuery rds
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
        "Version" =: ("2014-10-31" :: ByteString),
        "Duration" =: _deDuration,
        "StartTime" =: _deStartTime,
        "EventCategories"
          =: toQuery
            (toQueryList "EventCategory" <$> _deEventCategories),
        "EndTime" =: _deEndTime,
        "SourceIdentifier" =: _deSourceIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _deFilters),
        "SourceType" =: _deSourceType,
        "Marker" =: _deMarker,
        "MaxRecords" =: _deMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeEvents@ action.
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
-- * 'derrsEvents' - A list of @Event@ instances.
--
-- * 'derrsMarker' - An optional pagination token provided by a previous Events request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
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

-- | A list of @Event@ instances.
derrsEvents :: Lens' DescribeEventsResponse [Event]
derrsEvents = lens _derrsEvents (\s a -> s {_derrsEvents = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous Events request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
derrsMarker :: Lens' DescribeEventsResponse (Maybe Text)
derrsMarker = lens _derrsMarker (\s a -> s {_derrsMarker = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEventsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEventsResponse
