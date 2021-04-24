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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of events for a specific database in Amazon Lightsail.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetRelationalDatabaseEvents
  ( -- * Creating a Request
    getRelationalDatabaseEvents,
    GetRelationalDatabaseEvents,

    -- * Request Lenses
    grdeDurationInMinutes,
    grdePageToken,
    grdeRelationalDatabaseName,

    -- * Destructuring the Response
    getRelationalDatabaseEventsResponse,
    GetRelationalDatabaseEventsResponse,

    -- * Response Lenses
    grderrsNextPageToken,
    grderrsRelationalDatabaseEvents,
    grderrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseEvents' smart constructor.
data GetRelationalDatabaseEvents = GetRelationalDatabaseEvents'
  { _grdeDurationInMinutes ::
      !(Maybe Int),
    _grdePageToken ::
      !(Maybe Text),
    _grdeRelationalDatabaseName ::
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

-- | Creates a value of 'GetRelationalDatabaseEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdeDurationInMinutes' - The number of minutes in the past from which to retrieve events. For example, to get all events from the past 2 hours, enter 120. Default: @60@  The minimum is 1 and the maximum is 14 days (20160 minutes).
--
-- * 'grdePageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseEvents@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
--
-- * 'grdeRelationalDatabaseName' - The name of the database from which to get events.
getRelationalDatabaseEvents ::
  -- | 'grdeRelationalDatabaseName'
  Text ->
  GetRelationalDatabaseEvents
getRelationalDatabaseEvents pRelationalDatabaseName_ =
  GetRelationalDatabaseEvents'
    { _grdeDurationInMinutes =
        Nothing,
      _grdePageToken = Nothing,
      _grdeRelationalDatabaseName =
        pRelationalDatabaseName_
    }

-- | The number of minutes in the past from which to retrieve events. For example, to get all events from the past 2 hours, enter 120. Default: @60@  The minimum is 1 and the maximum is 14 days (20160 minutes).
grdeDurationInMinutes :: Lens' GetRelationalDatabaseEvents (Maybe Int)
grdeDurationInMinutes = lens _grdeDurationInMinutes (\s a -> s {_grdeDurationInMinutes = a})

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseEvents@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
grdePageToken :: Lens' GetRelationalDatabaseEvents (Maybe Text)
grdePageToken = lens _grdePageToken (\s a -> s {_grdePageToken = a})

-- | The name of the database from which to get events.
grdeRelationalDatabaseName :: Lens' GetRelationalDatabaseEvents Text
grdeRelationalDatabaseName = lens _grdeRelationalDatabaseName (\s a -> s {_grdeRelationalDatabaseName = a})

instance AWSPager GetRelationalDatabaseEvents where
  page rq rs
    | stop (rs ^. grderrsNextPageToken) = Nothing
    | stop (rs ^. grderrsRelationalDatabaseEvents) =
      Nothing
    | otherwise =
      Just $
        rq
          & grdePageToken .~ rs ^. grderrsNextPageToken

instance AWSRequest GetRelationalDatabaseEvents where
  type
    Rs GetRelationalDatabaseEvents =
      GetRelationalDatabaseEventsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseEventsResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "relationalDatabaseEvents" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseEvents

instance NFData GetRelationalDatabaseEvents

instance ToHeaders GetRelationalDatabaseEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseEvents" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseEvents where
  toJSON GetRelationalDatabaseEvents' {..} =
    object
      ( catMaybes
          [ ("durationInMinutes" .=) <$> _grdeDurationInMinutes,
            ("pageToken" .=) <$> _grdePageToken,
            Just
              ( "relationalDatabaseName"
                  .= _grdeRelationalDatabaseName
              )
          ]
      )

instance ToPath GetRelationalDatabaseEvents where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseEvents where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseEventsResponse' smart constructor.
data GetRelationalDatabaseEventsResponse = GetRelationalDatabaseEventsResponse'
  { _grderrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grderrsRelationalDatabaseEvents ::
      !( Maybe
           [RelationalDatabaseEvent]
       ),
    _grderrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grderrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseEvents@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'grderrsRelationalDatabaseEvents' - An object describing the result of your get relational database events request.
--
-- * 'grderrsResponseStatus' - -- | The response status code.
getRelationalDatabaseEventsResponse ::
  -- | 'grderrsResponseStatus'
  Int ->
  GetRelationalDatabaseEventsResponse
getRelationalDatabaseEventsResponse pResponseStatus_ =
  GetRelationalDatabaseEventsResponse'
    { _grderrsNextPageToken =
        Nothing,
      _grderrsRelationalDatabaseEvents =
        Nothing,
      _grderrsResponseStatus =
        pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseEvents@ request and specify the next page token using the @pageToken@ parameter.
grderrsNextPageToken :: Lens' GetRelationalDatabaseEventsResponse (Maybe Text)
grderrsNextPageToken = lens _grderrsNextPageToken (\s a -> s {_grderrsNextPageToken = a})

-- | An object describing the result of your get relational database events request.
grderrsRelationalDatabaseEvents :: Lens' GetRelationalDatabaseEventsResponse [RelationalDatabaseEvent]
grderrsRelationalDatabaseEvents = lens _grderrsRelationalDatabaseEvents (\s a -> s {_grderrsRelationalDatabaseEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
grderrsResponseStatus :: Lens' GetRelationalDatabaseEventsResponse Int
grderrsResponseStatus = lens _grderrsResponseStatus (\s a -> s {_grderrsResponseStatus = a})

instance NFData GetRelationalDatabaseEventsResponse
