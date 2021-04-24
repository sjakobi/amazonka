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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseLogEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of log events for a database in Amazon Lightsail.
module Network.AWS.Lightsail.GetRelationalDatabaseLogEvents
  ( -- * Creating a Request
    getRelationalDatabaseLogEvents,
    GetRelationalDatabaseLogEvents,

    -- * Request Lenses
    grdleStartFromHead,
    grdlePageToken,
    grdleStartTime,
    grdleEndTime,
    grdleRelationalDatabaseName,
    grdleLogStreamName,

    -- * Destructuring the Response
    getRelationalDatabaseLogEventsResponse,
    GetRelationalDatabaseLogEventsResponse,

    -- * Response Lenses
    grdlerrsNextBackwardToken,
    grdlerrsNextForwardToken,
    grdlerrsResourceLogEvents,
    grdlerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseLogEvents' smart constructor.
data GetRelationalDatabaseLogEvents = GetRelationalDatabaseLogEvents'
  { _grdleStartFromHead ::
      !( Maybe
           Bool
       ),
    _grdlePageToken ::
      !( Maybe
           Text
       ),
    _grdleStartTime ::
      !( Maybe
           POSIX
       ),
    _grdleEndTime ::
      !( Maybe
           POSIX
       ),
    _grdleRelationalDatabaseName ::
      !Text,
    _grdleLogStreamName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRelationalDatabaseLogEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdleStartFromHead' - Parameter to specify if the log should start from head or tail. If @true@ is specified, the log event starts from the head of the log. If @false@ is specified, the log event starts from the tail of the log.
--
-- * 'grdlePageToken' - The token to advance to the next or previous page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseLogEvents@ request. If your results are paginated, the response will return a next forward token and/or next backward token that you can specify as the page token in a subsequent request.
--
-- * 'grdleStartTime' - The start of the time interval from which to get log events. Constraints:     * Specified in Coordinated Universal Time (UTC).     * Specified in the Unix time format. For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the start time.
--
-- * 'grdleEndTime' - The end of the time interval from which to get log events. Constraints:     * Specified in Coordinated Universal Time (UTC).     * Specified in the Unix time format. For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the end time.
--
-- * 'grdleRelationalDatabaseName' - The name of your database for which to get log events.
--
-- * 'grdleLogStreamName' - The name of the log stream. Use the @get relational database log streams@ operation to get a list of available log streams.
getRelationalDatabaseLogEvents ::
  -- | 'grdleRelationalDatabaseName'
  Text ->
  -- | 'grdleLogStreamName'
  Text ->
  GetRelationalDatabaseLogEvents
getRelationalDatabaseLogEvents
  pRelationalDatabaseName_
  pLogStreamName_ =
    GetRelationalDatabaseLogEvents'
      { _grdleStartFromHead =
          Nothing,
        _grdlePageToken = Nothing,
        _grdleStartTime = Nothing,
        _grdleEndTime = Nothing,
        _grdleRelationalDatabaseName =
          pRelationalDatabaseName_,
        _grdleLogStreamName = pLogStreamName_
      }

-- | Parameter to specify if the log should start from head or tail. If @true@ is specified, the log event starts from the head of the log. If @false@ is specified, the log event starts from the tail of the log.
grdleStartFromHead :: Lens' GetRelationalDatabaseLogEvents (Maybe Bool)
grdleStartFromHead = lens _grdleStartFromHead (\s a -> s {_grdleStartFromHead = a})

-- | The token to advance to the next or previous page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseLogEvents@ request. If your results are paginated, the response will return a next forward token and/or next backward token that you can specify as the page token in a subsequent request.
grdlePageToken :: Lens' GetRelationalDatabaseLogEvents (Maybe Text)
grdlePageToken = lens _grdlePageToken (\s a -> s {_grdlePageToken = a})

-- | The start of the time interval from which to get log events. Constraints:     * Specified in Coordinated Universal Time (UTC).     * Specified in the Unix time format. For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the start time.
grdleStartTime :: Lens' GetRelationalDatabaseLogEvents (Maybe UTCTime)
grdleStartTime = lens _grdleStartTime (\s a -> s {_grdleStartTime = a}) . mapping _Time

-- | The end of the time interval from which to get log events. Constraints:     * Specified in Coordinated Universal Time (UTC).     * Specified in the Unix time format. For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the end time.
grdleEndTime :: Lens' GetRelationalDatabaseLogEvents (Maybe UTCTime)
grdleEndTime = lens _grdleEndTime (\s a -> s {_grdleEndTime = a}) . mapping _Time

-- | The name of your database for which to get log events.
grdleRelationalDatabaseName :: Lens' GetRelationalDatabaseLogEvents Text
grdleRelationalDatabaseName = lens _grdleRelationalDatabaseName (\s a -> s {_grdleRelationalDatabaseName = a})

-- | The name of the log stream. Use the @get relational database log streams@ operation to get a list of available log streams.
grdleLogStreamName :: Lens' GetRelationalDatabaseLogEvents Text
grdleLogStreamName = lens _grdleLogStreamName (\s a -> s {_grdleLogStreamName = a})

instance AWSRequest GetRelationalDatabaseLogEvents where
  type
    Rs GetRelationalDatabaseLogEvents =
      GetRelationalDatabaseLogEventsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseLogEventsResponse'
            <$> (x .?> "nextBackwardToken")
            <*> (x .?> "nextForwardToken")
            <*> (x .?> "resourceLogEvents" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseLogEvents

instance NFData GetRelationalDatabaseLogEvents

instance ToHeaders GetRelationalDatabaseLogEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseLogEvents" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseLogEvents where
  toJSON GetRelationalDatabaseLogEvents' {..} =
    object
      ( catMaybes
          [ ("startFromHead" .=) <$> _grdleStartFromHead,
            ("pageToken" .=) <$> _grdlePageToken,
            ("startTime" .=) <$> _grdleStartTime,
            ("endTime" .=) <$> _grdleEndTime,
            Just
              ( "relationalDatabaseName"
                  .= _grdleRelationalDatabaseName
              ),
            Just ("logStreamName" .= _grdleLogStreamName)
          ]
      )

instance ToPath GetRelationalDatabaseLogEvents where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseLogEvents where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseLogEventsResponse' smart constructor.
data GetRelationalDatabaseLogEventsResponse = GetRelationalDatabaseLogEventsResponse'
  { _grdlerrsNextBackwardToken ::
      !( Maybe
           Text
       ),
    _grdlerrsNextForwardToken ::
      !( Maybe
           Text
       ),
    _grdlerrsResourceLogEvents ::
      !( Maybe
           [LogEvent]
       ),
    _grdlerrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseLogEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdlerrsNextBackwardToken' - A token used for advancing to the previous page of results from your get relational database log events request.
--
-- * 'grdlerrsNextForwardToken' - A token used for advancing to the next page of results from your get relational database log events request.
--
-- * 'grdlerrsResourceLogEvents' - An object describing the result of your get relational database log events request.
--
-- * 'grdlerrsResponseStatus' - -- | The response status code.
getRelationalDatabaseLogEventsResponse ::
  -- | 'grdlerrsResponseStatus'
  Int ->
  GetRelationalDatabaseLogEventsResponse
getRelationalDatabaseLogEventsResponse
  pResponseStatus_ =
    GetRelationalDatabaseLogEventsResponse'
      { _grdlerrsNextBackwardToken =
          Nothing,
        _grdlerrsNextForwardToken = Nothing,
        _grdlerrsResourceLogEvents =
          Nothing,
        _grdlerrsResponseStatus =
          pResponseStatus_
      }

-- | A token used for advancing to the previous page of results from your get relational database log events request.
grdlerrsNextBackwardToken :: Lens' GetRelationalDatabaseLogEventsResponse (Maybe Text)
grdlerrsNextBackwardToken = lens _grdlerrsNextBackwardToken (\s a -> s {_grdlerrsNextBackwardToken = a})

-- | A token used for advancing to the next page of results from your get relational database log events request.
grdlerrsNextForwardToken :: Lens' GetRelationalDatabaseLogEventsResponse (Maybe Text)
grdlerrsNextForwardToken = lens _grdlerrsNextForwardToken (\s a -> s {_grdlerrsNextForwardToken = a})

-- | An object describing the result of your get relational database log events request.
grdlerrsResourceLogEvents :: Lens' GetRelationalDatabaseLogEventsResponse [LogEvent]
grdlerrsResourceLogEvents = lens _grdlerrsResourceLogEvents (\s a -> s {_grdlerrsResourceLogEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
grdlerrsResponseStatus :: Lens' GetRelationalDatabaseLogEventsResponse Int
grdlerrsResponseStatus = lens _grdlerrsResponseStatus (\s a -> s {_grdlerrsResponseStatus = a})

instance
  NFData
    GetRelationalDatabaseLogEventsResponse
