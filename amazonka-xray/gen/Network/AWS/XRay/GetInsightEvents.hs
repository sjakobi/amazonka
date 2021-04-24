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
-- Module      : Network.AWS.XRay.GetInsightEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an event. You can review an insight's events in the Impact Timeline on the Inspect page in the X-Ray console.
module Network.AWS.XRay.GetInsightEvents
  ( -- * Creating a Request
    getInsightEvents,
    GetInsightEvents,

    -- * Request Lenses
    gieNextToken,
    gieMaxResults,
    gieInsightId,

    -- * Destructuring the Response
    getInsightEventsResponse,
    GetInsightEventsResponse,

    -- * Response Lenses
    gierrsNextToken,
    gierrsInsightEvents,
    gierrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getInsightEvents' smart constructor.
data GetInsightEvents = GetInsightEvents'
  { _gieNextToken ::
      !(Maybe Text),
    _gieMaxResults :: !(Maybe Nat),
    _gieInsightId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInsightEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gieNextToken' - Specify the pagination token returned by a previous request to retrieve the next page of events.
--
-- * 'gieMaxResults' - Used to retrieve at most the specified value of events.
--
-- * 'gieInsightId' - The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.
getInsightEvents ::
  -- | 'gieInsightId'
  Text ->
  GetInsightEvents
getInsightEvents pInsightId_ =
  GetInsightEvents'
    { _gieNextToken = Nothing,
      _gieMaxResults = Nothing,
      _gieInsightId = pInsightId_
    }

-- | Specify the pagination token returned by a previous request to retrieve the next page of events.
gieNextToken :: Lens' GetInsightEvents (Maybe Text)
gieNextToken = lens _gieNextToken (\s a -> s {_gieNextToken = a})

-- | Used to retrieve at most the specified value of events.
gieMaxResults :: Lens' GetInsightEvents (Maybe Natural)
gieMaxResults = lens _gieMaxResults (\s a -> s {_gieMaxResults = a}) . mapping _Nat

-- | The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.
gieInsightId :: Lens' GetInsightEvents Text
gieInsightId = lens _gieInsightId (\s a -> s {_gieInsightId = a})

instance AWSRequest GetInsightEvents where
  type Rs GetInsightEvents = GetInsightEventsResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetInsightEventsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "InsightEvents" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetInsightEvents

instance NFData GetInsightEvents

instance ToHeaders GetInsightEvents where
  toHeaders = const mempty

instance ToJSON GetInsightEvents where
  toJSON GetInsightEvents' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gieNextToken,
            ("MaxResults" .=) <$> _gieMaxResults,
            Just ("InsightId" .= _gieInsightId)
          ]
      )

instance ToPath GetInsightEvents where
  toPath = const "/InsightEvents"

instance ToQuery GetInsightEvents where
  toQuery = const mempty

-- | /See:/ 'getInsightEventsResponse' smart constructor.
data GetInsightEventsResponse = GetInsightEventsResponse'
  { _gierrsNextToken ::
      !(Maybe Text),
    _gierrsInsightEvents ::
      !( Maybe
           [InsightEvent]
       ),
    _gierrsResponseStatus ::
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

-- | Creates a value of 'GetInsightEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gierrsNextToken' - Use this token to retrieve the next page of insight events.
--
-- * 'gierrsInsightEvents' - A detailed description of the event. This includes the time of the event, client and root cause impact statistics, and the top anomalous service at the time of the event.
--
-- * 'gierrsResponseStatus' - -- | The response status code.
getInsightEventsResponse ::
  -- | 'gierrsResponseStatus'
  Int ->
  GetInsightEventsResponse
getInsightEventsResponse pResponseStatus_ =
  GetInsightEventsResponse'
    { _gierrsNextToken =
        Nothing,
      _gierrsInsightEvents = Nothing,
      _gierrsResponseStatus = pResponseStatus_
    }

-- | Use this token to retrieve the next page of insight events.
gierrsNextToken :: Lens' GetInsightEventsResponse (Maybe Text)
gierrsNextToken = lens _gierrsNextToken (\s a -> s {_gierrsNextToken = a})

-- | A detailed description of the event. This includes the time of the event, client and root cause impact statistics, and the top anomalous service at the time of the event.
gierrsInsightEvents :: Lens' GetInsightEventsResponse [InsightEvent]
gierrsInsightEvents = lens _gierrsInsightEvents (\s a -> s {_gierrsInsightEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
gierrsResponseStatus :: Lens' GetInsightEventsResponse Int
gierrsResponseStatus = lens _gierrsResponseStatus (\s a -> s {_gierrsResponseStatus = a})

instance NFData GetInsightEventsResponse
