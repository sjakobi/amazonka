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
-- Module      : Network.AWS.Redshift.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeEvents
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

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
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
-- * 'deDuration' - The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned. Default: @60@
--
-- * 'deStartTime' - The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2009-07-08T18:00Z@
--
-- * 'deEndTime' - The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2009-07-08T18:00Z@
--
-- * 'deSourceIdentifier' - The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response. Constraints: If /SourceIdentifier/ is supplied, /SourceType/ must also be provided.     * Specify a cluster identifier when /SourceType/ is @cluster@ .     * Specify a cluster security group name when /SourceType/ is @cluster-security-group@ .     * Specify a cluster parameter group name when /SourceType/ is @cluster-parameter-group@ .     * Specify a cluster snapshot identifier when /SourceType/ is @cluster-snapshot@ .
--
-- * 'deSourceType' - The event source to retrieve events for. If no value is specified, all events are returned. Constraints: If /SourceType/ is supplied, /SourceIdentifier/ must also be provided.     * Specify @cluster@ when /SourceIdentifier/ is a cluster identifier.     * Specify @cluster-security-group@ when /SourceIdentifier/ is a cluster security group name.     * Specify @cluster-parameter-group@ when /SourceIdentifier/ is a cluster parameter group name.     * Specify @cluster-snapshot@ when /SourceIdentifier/ is a cluster snapshot identifier.
--
-- * 'deMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeEvents' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'deMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
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

-- | The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned. Default: @60@
deDuration :: Lens' DescribeEvents (Maybe Int)
deDuration = lens _deDuration (\s a -> s {_deDuration = a})

-- | The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2009-07-08T18:00Z@
deStartTime :: Lens' DescribeEvents (Maybe UTCTime)
deStartTime = lens _deStartTime (\s a -> s {_deStartTime = a}) . mapping _Time

-- | The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>  Example: @2009-07-08T18:00Z@
deEndTime :: Lens' DescribeEvents (Maybe UTCTime)
deEndTime = lens _deEndTime (\s a -> s {_deEndTime = a}) . mapping _Time

-- | The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response. Constraints: If /SourceIdentifier/ is supplied, /SourceType/ must also be provided.     * Specify a cluster identifier when /SourceType/ is @cluster@ .     * Specify a cluster security group name when /SourceType/ is @cluster-security-group@ .     * Specify a cluster parameter group name when /SourceType/ is @cluster-parameter-group@ .     * Specify a cluster snapshot identifier when /SourceType/ is @cluster-snapshot@ .
deSourceIdentifier :: Lens' DescribeEvents (Maybe Text)
deSourceIdentifier = lens _deSourceIdentifier (\s a -> s {_deSourceIdentifier = a})

-- | The event source to retrieve events for. If no value is specified, all events are returned. Constraints: If /SourceType/ is supplied, /SourceIdentifier/ must also be provided.     * Specify @cluster@ when /SourceIdentifier/ is a cluster identifier.     * Specify @cluster-security-group@ when /SourceIdentifier/ is a cluster security group name.     * Specify @cluster-parameter-group@ when /SourceIdentifier/ is a cluster parameter group name.     * Specify @cluster-snapshot@ when /SourceIdentifier/ is a cluster snapshot identifier.
deSourceType :: Lens' DescribeEvents (Maybe SourceType)
deSourceType = lens _deSourceType (\s a -> s {_deSourceType = a})

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeEvents' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
deMarker :: Lens' DescribeEvents (Maybe Text)
deMarker = lens _deMarker (\s a -> s {_deMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
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
  request = postQuery redshift
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
        "Version" =: ("2012-12-01" :: ByteString),
        "Duration" =: _deDuration,
        "StartTime" =: _deStartTime,
        "EndTime" =: _deEndTime,
        "SourceIdentifier" =: _deSourceIdentifier,
        "SourceType" =: _deSourceType,
        "Marker" =: _deMarker,
        "MaxRecords" =: _deMaxRecords
      ]

-- |
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
-- * 'derrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
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

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
derrsMarker :: Lens' DescribeEventsResponse (Maybe Text)
derrsMarker = lens _derrsMarker (\s a -> s {_derrsMarker = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEventsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEventsResponse
