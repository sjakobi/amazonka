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
-- Module      : Network.AWS.CloudWatchLogs.GetLogEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists log events from the specified log stream. You can list all of the log events or filter using a time range.
--
--
-- By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call. This operation can return empty results while there are more log events available through the token.
module Network.AWS.CloudWatchLogs.GetLogEvents
  ( -- * Creating a Request
    getLogEvents,
    GetLogEvents,

    -- * Request Lenses
    gleNextToken,
    gleStartFromHead,
    gleStartTime,
    gleEndTime,
    gleLimit,
    gleLogGroupName,
    gleLogStreamName,

    -- * Destructuring the Response
    getLogEventsResponse,
    GetLogEventsResponse,

    -- * Response Lenses
    glerrsNextBackwardToken,
    glerrsNextForwardToken,
    glerrsEvents,
    glerrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLogEvents' smart constructor.
data GetLogEvents = GetLogEvents'
  { _gleNextToken ::
      !(Maybe Text),
    _gleStartFromHead :: !(Maybe Bool),
    _gleStartTime :: !(Maybe Nat),
    _gleEndTime :: !(Maybe Nat),
    _gleLimit :: !(Maybe Nat),
    _gleLogGroupName :: !Text,
    _gleLogStreamName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLogEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gleNextToken' - The token for the next set of items to return. (You received this token from a previous call.) Using this token works only when you specify @true@ for @startFromHead@ .
--
-- * 'gleStartFromHead' - If the value is true, the earliest log events are returned first. If the value is false, the latest log events are returned first. The default value is false. If you are using @nextToken@ in this operation, you must specify @true@ for @startFromHead@ .
--
-- * 'gleStartTime' - The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to this time or later than this time are included. Events with a timestamp earlier than this time are not included.
--
-- * 'gleEndTime' - The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to or later than this time are not included.
--
-- * 'gleLimit' - The maximum number of log events returned. If you don't specify a value, the maximum is as many log events as can fit in a response size of 1 MB, up to 10,000 log events.
--
-- * 'gleLogGroupName' - The name of the log group.
--
-- * 'gleLogStreamName' - The name of the log stream.
getLogEvents ::
  -- | 'gleLogGroupName'
  Text ->
  -- | 'gleLogStreamName'
  Text ->
  GetLogEvents
getLogEvents pLogGroupName_ pLogStreamName_ =
  GetLogEvents'
    { _gleNextToken = Nothing,
      _gleStartFromHead = Nothing,
      _gleStartTime = Nothing,
      _gleEndTime = Nothing,
      _gleLimit = Nothing,
      _gleLogGroupName = pLogGroupName_,
      _gleLogStreamName = pLogStreamName_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.) Using this token works only when you specify @true@ for @startFromHead@ .
gleNextToken :: Lens' GetLogEvents (Maybe Text)
gleNextToken = lens _gleNextToken (\s a -> s {_gleNextToken = a})

-- | If the value is true, the earliest log events are returned first. If the value is false, the latest log events are returned first. The default value is false. If you are using @nextToken@ in this operation, you must specify @true@ for @startFromHead@ .
gleStartFromHead :: Lens' GetLogEvents (Maybe Bool)
gleStartFromHead = lens _gleStartFromHead (\s a -> s {_gleStartFromHead = a})

-- | The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to this time or later than this time are included. Events with a timestamp earlier than this time are not included.
gleStartTime :: Lens' GetLogEvents (Maybe Natural)
gleStartTime = lens _gleStartTime (\s a -> s {_gleStartTime = a}) . mapping _Nat

-- | The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to or later than this time are not included.
gleEndTime :: Lens' GetLogEvents (Maybe Natural)
gleEndTime = lens _gleEndTime (\s a -> s {_gleEndTime = a}) . mapping _Nat

-- | The maximum number of log events returned. If you don't specify a value, the maximum is as many log events as can fit in a response size of 1 MB, up to 10,000 log events.
gleLimit :: Lens' GetLogEvents (Maybe Natural)
gleLimit = lens _gleLimit (\s a -> s {_gleLimit = a}) . mapping _Nat

-- | The name of the log group.
gleLogGroupName :: Lens' GetLogEvents Text
gleLogGroupName = lens _gleLogGroupName (\s a -> s {_gleLogGroupName = a})

-- | The name of the log stream.
gleLogStreamName :: Lens' GetLogEvents Text
gleLogStreamName = lens _gleLogStreamName (\s a -> s {_gleLogStreamName = a})

instance AWSRequest GetLogEvents where
  type Rs GetLogEvents = GetLogEventsResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          GetLogEventsResponse'
            <$> (x .?> "nextBackwardToken")
            <*> (x .?> "nextForwardToken")
            <*> (x .?> "events" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetLogEvents

instance NFData GetLogEvents

instance ToHeaders GetLogEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.GetLogEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetLogEvents where
  toJSON GetLogEvents' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gleNextToken,
            ("startFromHead" .=) <$> _gleStartFromHead,
            ("startTime" .=) <$> _gleStartTime,
            ("endTime" .=) <$> _gleEndTime,
            ("limit" .=) <$> _gleLimit,
            Just ("logGroupName" .= _gleLogGroupName),
            Just ("logStreamName" .= _gleLogStreamName)
          ]
      )

instance ToPath GetLogEvents where
  toPath = const "/"

instance ToQuery GetLogEvents where
  toQuery = const mempty

-- | /See:/ 'getLogEventsResponse' smart constructor.
data GetLogEventsResponse = GetLogEventsResponse'
  { _glerrsNextBackwardToken ::
      !(Maybe Text),
    _glerrsNextForwardToken ::
      !(Maybe Text),
    _glerrsEvents ::
      !(Maybe [OutputLogEvent]),
    _glerrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLogEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glerrsNextBackwardToken' - The token for the next set of items in the backward direction. The token expires after 24 hours. This token is never null. If you have reached the end of the stream, it returns the same token you passed in.
--
-- * 'glerrsNextForwardToken' - The token for the next set of items in the forward direction. The token expires after 24 hours. If you have reached the end of the stream, it returns the same token you passed in.
--
-- * 'glerrsEvents' - The events.
--
-- * 'glerrsResponseStatus' - -- | The response status code.
getLogEventsResponse ::
  -- | 'glerrsResponseStatus'
  Int ->
  GetLogEventsResponse
getLogEventsResponse pResponseStatus_ =
  GetLogEventsResponse'
    { _glerrsNextBackwardToken =
        Nothing,
      _glerrsNextForwardToken = Nothing,
      _glerrsEvents = Nothing,
      _glerrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items in the backward direction. The token expires after 24 hours. This token is never null. If you have reached the end of the stream, it returns the same token you passed in.
glerrsNextBackwardToken :: Lens' GetLogEventsResponse (Maybe Text)
glerrsNextBackwardToken = lens _glerrsNextBackwardToken (\s a -> s {_glerrsNextBackwardToken = a})

-- | The token for the next set of items in the forward direction. The token expires after 24 hours. If you have reached the end of the stream, it returns the same token you passed in.
glerrsNextForwardToken :: Lens' GetLogEventsResponse (Maybe Text)
glerrsNextForwardToken = lens _glerrsNextForwardToken (\s a -> s {_glerrsNextForwardToken = a})

-- | The events.
glerrsEvents :: Lens' GetLogEventsResponse [OutputLogEvent]
glerrsEvents = lens _glerrsEvents (\s a -> s {_glerrsEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
glerrsResponseStatus :: Lens' GetLogEventsResponse Int
glerrsResponseStatus = lens _glerrsResponseStatus (\s a -> s {_glerrsResponseStatus = a})

instance NFData GetLogEventsResponse
