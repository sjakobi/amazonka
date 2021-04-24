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
-- Module      : Network.AWS.CloudWatchLogs.FilterLogEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.
--
--
-- By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events) or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call. This operation can return empty results while there are more log events available through the token.
--
-- The returned log events are sorted by event timestamp, the timestamp when the event was ingested by CloudWatch Logs, and the ID of the @PutLogEvents@ request.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.FilterLogEvents
  ( -- * Creating a Request
    filterLogEvents,
    FilterLogEvents,

    -- * Request Lenses
    fleLogStreamNamePrefix,
    fleNextToken,
    fleInterleaved,
    fleFilterPattern,
    fleStartTime,
    fleEndTime,
    fleLogStreamNames,
    fleLimit,
    fleLogGroupName,

    -- * Destructuring the Response
    filterLogEventsResponse,
    FilterLogEventsResponse,

    -- * Response Lenses
    flerrsNextToken,
    flerrsSearchedLogStreams,
    flerrsEvents,
    flerrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'filterLogEvents' smart constructor.
data FilterLogEvents = FilterLogEvents'
  { _fleLogStreamNamePrefix ::
      !(Maybe Text),
    _fleNextToken :: !(Maybe Text),
    _fleInterleaved :: !(Maybe Bool),
    _fleFilterPattern :: !(Maybe Text),
    _fleStartTime :: !(Maybe Nat),
    _fleEndTime :: !(Maybe Nat),
    _fleLogStreamNames ::
      !(Maybe (List1 Text)),
    _fleLimit :: !(Maybe Nat),
    _fleLogGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FilterLogEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fleLogStreamNamePrefix' - Filters the results to include only events from log streams that have names starting with this prefix. If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , but the value for @logStreamNamePrefix@ does not match any log stream names specified in @logStreamNames@ , the action returns an @InvalidParameterException@ error.
--
-- * 'fleNextToken' - The token for the next set of events to return. (You received this token from a previous call.)
--
-- * 'fleInterleaved' - If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false. __Important:__ Starting on June 17, 2019, this parameter is ignored and the value is assumed to be true. The response from this operation always interleaves events from multiple log streams within a log group.
--
-- * 'fleFilterPattern' - The filter pattern to use. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html Filter and Pattern Syntax> . If not provided, all the events are matched.
--
-- * 'fleStartTime' - The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this time are not returned. If you omit @startTime@ and @endTime@ the most recent log events are retrieved, to up 1 MB or 10,000 log events.
--
-- * 'fleEndTime' - The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not returned.
--
-- * 'fleLogStreamNames' - Filters the results to only logs from the log streams in this list. If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , the action returns an @InvalidParameterException@ error.
--
-- * 'fleLimit' - The maximum number of events to return. The default is 10,000 events.
--
-- * 'fleLogGroupName' - The name of the log group to search.
filterLogEvents ::
  -- | 'fleLogGroupName'
  Text ->
  FilterLogEvents
filterLogEvents pLogGroupName_ =
  FilterLogEvents'
    { _fleLogStreamNamePrefix = Nothing,
      _fleNextToken = Nothing,
      _fleInterleaved = Nothing,
      _fleFilterPattern = Nothing,
      _fleStartTime = Nothing,
      _fleEndTime = Nothing,
      _fleLogStreamNames = Nothing,
      _fleLimit = Nothing,
      _fleLogGroupName = pLogGroupName_
    }

-- | Filters the results to include only events from log streams that have names starting with this prefix. If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , but the value for @logStreamNamePrefix@ does not match any log stream names specified in @logStreamNames@ , the action returns an @InvalidParameterException@ error.
fleLogStreamNamePrefix :: Lens' FilterLogEvents (Maybe Text)
fleLogStreamNamePrefix = lens _fleLogStreamNamePrefix (\s a -> s {_fleLogStreamNamePrefix = a})

-- | The token for the next set of events to return. (You received this token from a previous call.)
fleNextToken :: Lens' FilterLogEvents (Maybe Text)
fleNextToken = lens _fleNextToken (\s a -> s {_fleNextToken = a})

-- | If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false. __Important:__ Starting on June 17, 2019, this parameter is ignored and the value is assumed to be true. The response from this operation always interleaves events from multiple log streams within a log group.
fleInterleaved :: Lens' FilterLogEvents (Maybe Bool)
fleInterleaved = lens _fleInterleaved (\s a -> s {_fleInterleaved = a})

-- | The filter pattern to use. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html Filter and Pattern Syntax> . If not provided, all the events are matched.
fleFilterPattern :: Lens' FilterLogEvents (Maybe Text)
fleFilterPattern = lens _fleFilterPattern (\s a -> s {_fleFilterPattern = a})

-- | The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this time are not returned. If you omit @startTime@ and @endTime@ the most recent log events are retrieved, to up 1 MB or 10,000 log events.
fleStartTime :: Lens' FilterLogEvents (Maybe Natural)
fleStartTime = lens _fleStartTime (\s a -> s {_fleStartTime = a}) . mapping _Nat

-- | The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not returned.
fleEndTime :: Lens' FilterLogEvents (Maybe Natural)
fleEndTime = lens _fleEndTime (\s a -> s {_fleEndTime = a}) . mapping _Nat

-- | Filters the results to only logs from the log streams in this list. If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , the action returns an @InvalidParameterException@ error.
fleLogStreamNames :: Lens' FilterLogEvents (Maybe (NonEmpty Text))
fleLogStreamNames = lens _fleLogStreamNames (\s a -> s {_fleLogStreamNames = a}) . mapping _List1

-- | The maximum number of events to return. The default is 10,000 events.
fleLimit :: Lens' FilterLogEvents (Maybe Natural)
fleLimit = lens _fleLimit (\s a -> s {_fleLimit = a}) . mapping _Nat

-- | The name of the log group to search.
fleLogGroupName :: Lens' FilterLogEvents Text
fleLogGroupName = lens _fleLogGroupName (\s a -> s {_fleLogGroupName = a})

instance AWSPager FilterLogEvents where
  page rq rs
    | stop (rs ^. flerrsNextToken) = Nothing
    | otherwise =
      Just $ rq & fleNextToken .~ rs ^. flerrsNextToken

instance AWSRequest FilterLogEvents where
  type Rs FilterLogEvents = FilterLogEventsResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          FilterLogEventsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "searchedLogStreams" .!@ mempty)
            <*> (x .?> "events" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable FilterLogEvents

instance NFData FilterLogEvents

instance ToHeaders FilterLogEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.FilterLogEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON FilterLogEvents where
  toJSON FilterLogEvents' {..} =
    object
      ( catMaybes
          [ ("logStreamNamePrefix" .=)
              <$> _fleLogStreamNamePrefix,
            ("nextToken" .=) <$> _fleNextToken,
            ("interleaved" .=) <$> _fleInterleaved,
            ("filterPattern" .=) <$> _fleFilterPattern,
            ("startTime" .=) <$> _fleStartTime,
            ("endTime" .=) <$> _fleEndTime,
            ("logStreamNames" .=) <$> _fleLogStreamNames,
            ("limit" .=) <$> _fleLimit,
            Just ("logGroupName" .= _fleLogGroupName)
          ]
      )

instance ToPath FilterLogEvents where
  toPath = const "/"

instance ToQuery FilterLogEvents where
  toQuery = const mempty

-- | /See:/ 'filterLogEventsResponse' smart constructor.
data FilterLogEventsResponse = FilterLogEventsResponse'
  { _flerrsNextToken ::
      !(Maybe Text),
    _flerrsSearchedLogStreams ::
      !( Maybe
           [SearchedLogStream]
       ),
    _flerrsEvents ::
      !( Maybe
           [FilteredLogEvent]
       ),
    _flerrsResponseStatus ::
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

-- | Creates a value of 'FilterLogEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flerrsNextToken' - The token to use when requesting the next set of items. The token expires after 24 hours.
--
-- * 'flerrsSearchedLogStreams' - __IMPORTANT__ Starting on May 15, 2020, this parameter will be deprecated. This parameter will be an empty list after the deprecation occurs. Indicates which log streams have been searched and whether each has been searched completely.
--
-- * 'flerrsEvents' - The matched events.
--
-- * 'flerrsResponseStatus' - -- | The response status code.
filterLogEventsResponse ::
  -- | 'flerrsResponseStatus'
  Int ->
  FilterLogEventsResponse
filterLogEventsResponse pResponseStatus_ =
  FilterLogEventsResponse'
    { _flerrsNextToken =
        Nothing,
      _flerrsSearchedLogStreams = Nothing,
      _flerrsEvents = Nothing,
      _flerrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. The token expires after 24 hours.
flerrsNextToken :: Lens' FilterLogEventsResponse (Maybe Text)
flerrsNextToken = lens _flerrsNextToken (\s a -> s {_flerrsNextToken = a})

-- | __IMPORTANT__ Starting on May 15, 2020, this parameter will be deprecated. This parameter will be an empty list after the deprecation occurs. Indicates which log streams have been searched and whether each has been searched completely.
flerrsSearchedLogStreams :: Lens' FilterLogEventsResponse [SearchedLogStream]
flerrsSearchedLogStreams = lens _flerrsSearchedLogStreams (\s a -> s {_flerrsSearchedLogStreams = a}) . _Default . _Coerce

-- | The matched events.
flerrsEvents :: Lens' FilterLogEventsResponse [FilteredLogEvent]
flerrsEvents = lens _flerrsEvents (\s a -> s {_flerrsEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
flerrsResponseStatus :: Lens' FilterLogEventsResponse Int
flerrsResponseStatus = lens _flerrsResponseStatus (\s a -> s {_flerrsResponseStatus = a})

instance NFData FilterLogEventsResponse
