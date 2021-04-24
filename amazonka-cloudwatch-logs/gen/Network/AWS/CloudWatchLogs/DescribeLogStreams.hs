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
-- Module      : Network.AWS.CloudWatchLogs.DescribeLogStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.
--
--
-- This operation has a limit of five transactions per second, after which transactions are throttled.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeLogStreams
  ( -- * Creating a Request
    describeLogStreams,
    DescribeLogStreams,

    -- * Request Lenses
    dlsLogStreamNamePrefix,
    dlsNextToken,
    dlsOrderBy,
    dlsDescending,
    dlsLimit,
    dlsLogGroupName,

    -- * Destructuring the Response
    describeLogStreamsResponse,
    DescribeLogStreamsResponse,

    -- * Response Lenses
    dlsrrsNextToken,
    dlsrrsLogStreams,
    dlsrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLogStreams' smart constructor.
data DescribeLogStreams = DescribeLogStreams'
  { _dlsLogStreamNamePrefix ::
      !(Maybe Text),
    _dlsNextToken :: !(Maybe Text),
    _dlsOrderBy :: !(Maybe OrderBy),
    _dlsDescending :: !(Maybe Bool),
    _dlsLimit :: !(Maybe Nat),
    _dlsLogGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLogStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlsLogStreamNamePrefix' - The prefix to match. If @orderBy@ is @LastEventTime@ , you cannot specify this parameter.
--
-- * 'dlsNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dlsOrderBy' - If the value is @LogStreamName@ , the results are ordered by log stream name. If the value is @LastEventTime@ , the results are ordered by the event time. The default value is @LogStreamName@ . If you order the results by event time, you cannot specify the @logStreamNamePrefix@ parameter. @lastEventTimeStamp@ represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. @lastEventTimeStamp@ updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but in rare situations might take longer.
--
-- * 'dlsDescending' - If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.
--
-- * 'dlsLimit' - The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
--
-- * 'dlsLogGroupName' - The name of the log group.
describeLogStreams ::
  -- | 'dlsLogGroupName'
  Text ->
  DescribeLogStreams
describeLogStreams pLogGroupName_ =
  DescribeLogStreams'
    { _dlsLogStreamNamePrefix =
        Nothing,
      _dlsNextToken = Nothing,
      _dlsOrderBy = Nothing,
      _dlsDescending = Nothing,
      _dlsLimit = Nothing,
      _dlsLogGroupName = pLogGroupName_
    }

-- | The prefix to match. If @orderBy@ is @LastEventTime@ , you cannot specify this parameter.
dlsLogStreamNamePrefix :: Lens' DescribeLogStreams (Maybe Text)
dlsLogStreamNamePrefix = lens _dlsLogStreamNamePrefix (\s a -> s {_dlsLogStreamNamePrefix = a})

-- | The token for the next set of items to return. (You received this token from a previous call.)
dlsNextToken :: Lens' DescribeLogStreams (Maybe Text)
dlsNextToken = lens _dlsNextToken (\s a -> s {_dlsNextToken = a})

-- | If the value is @LogStreamName@ , the results are ordered by log stream name. If the value is @LastEventTime@ , the results are ordered by the event time. The default value is @LogStreamName@ . If you order the results by event time, you cannot specify the @logStreamNamePrefix@ parameter. @lastEventTimeStamp@ represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. @lastEventTimeStamp@ updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but in rare situations might take longer.
dlsOrderBy :: Lens' DescribeLogStreams (Maybe OrderBy)
dlsOrderBy = lens _dlsOrderBy (\s a -> s {_dlsOrderBy = a})

-- | If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.
dlsDescending :: Lens' DescribeLogStreams (Maybe Bool)
dlsDescending = lens _dlsDescending (\s a -> s {_dlsDescending = a})

-- | The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
dlsLimit :: Lens' DescribeLogStreams (Maybe Natural)
dlsLimit = lens _dlsLimit (\s a -> s {_dlsLimit = a}) . mapping _Nat

-- | The name of the log group.
dlsLogGroupName :: Lens' DescribeLogStreams Text
dlsLogGroupName = lens _dlsLogGroupName (\s a -> s {_dlsLogGroupName = a})

instance AWSPager DescribeLogStreams where
  page rq rs
    | stop (rs ^. dlsrrsNextToken) = Nothing
    | stop (rs ^. dlsrrsLogStreams) = Nothing
    | otherwise =
      Just $ rq & dlsNextToken .~ rs ^. dlsrrsNextToken

instance AWSRequest DescribeLogStreams where
  type
    Rs DescribeLogStreams =
      DescribeLogStreamsResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeLogStreamsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "logStreams" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLogStreams

instance NFData DescribeLogStreams

instance ToHeaders DescribeLogStreams where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.DescribeLogStreams" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLogStreams where
  toJSON DescribeLogStreams' {..} =
    object
      ( catMaybes
          [ ("logStreamNamePrefix" .=)
              <$> _dlsLogStreamNamePrefix,
            ("nextToken" .=) <$> _dlsNextToken,
            ("orderBy" .=) <$> _dlsOrderBy,
            ("descending" .=) <$> _dlsDescending,
            ("limit" .=) <$> _dlsLimit,
            Just ("logGroupName" .= _dlsLogGroupName)
          ]
      )

instance ToPath DescribeLogStreams where
  toPath = const "/"

instance ToQuery DescribeLogStreams where
  toQuery = const mempty

-- | /See:/ 'describeLogStreamsResponse' smart constructor.
data DescribeLogStreamsResponse = DescribeLogStreamsResponse'
  { _dlsrrsNextToken ::
      !(Maybe Text),
    _dlsrrsLogStreams ::
      !( Maybe
           [LogStream]
       ),
    _dlsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLogStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlsrrsNextToken' - Undocumented member.
--
-- * 'dlsrrsLogStreams' - The log streams.
--
-- * 'dlsrrsResponseStatus' - -- | The response status code.
describeLogStreamsResponse ::
  -- | 'dlsrrsResponseStatus'
  Int ->
  DescribeLogStreamsResponse
describeLogStreamsResponse pResponseStatus_ =
  DescribeLogStreamsResponse'
    { _dlsrrsNextToken =
        Nothing,
      _dlsrrsLogStreams = Nothing,
      _dlsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dlsrrsNextToken :: Lens' DescribeLogStreamsResponse (Maybe Text)
dlsrrsNextToken = lens _dlsrrsNextToken (\s a -> s {_dlsrrsNextToken = a})

-- | The log streams.
dlsrrsLogStreams :: Lens' DescribeLogStreamsResponse [LogStream]
dlsrrsLogStreams = lens _dlsrrsLogStreams (\s a -> s {_dlsrrsLogStreams = a}) . _Default . _Coerce

-- | -- | The response status code.
dlsrrsResponseStatus :: Lens' DescribeLogStreamsResponse Int
dlsrrsResponseStatus = lens _dlsrrsResponseStatus (\s a -> s {_dlsrrsResponseStatus = a})

instance NFData DescribeLogStreamsResponse
