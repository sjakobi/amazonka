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
-- Module      : Network.AWS.SSM.ListOpsItemEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all OpsItem events in the current AWS account and Region. You can limit the results to events associated with specific OpsItems by specifying a filter.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListOpsItemEvents
  ( -- * Creating a Request
    listOpsItemEvents,
    ListOpsItemEvents,

    -- * Request Lenses
    loieNextToken,
    loieMaxResults,
    loieFilters,

    -- * Destructuring the Response
    listOpsItemEventsResponse,
    ListOpsItemEventsResponse,

    -- * Response Lenses
    loierrsNextToken,
    loierrsSummaries,
    loierrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listOpsItemEvents' smart constructor.
data ListOpsItemEvents = ListOpsItemEvents'
  { _loieNextToken ::
      !(Maybe Text),
    _loieMaxResults :: !(Maybe Nat),
    _loieFilters ::
      !(Maybe [OpsItemEventFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOpsItemEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loieNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'loieMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'loieFilters' - One or more OpsItem filters. Use a filter to return a more specific list of results.
listOpsItemEvents ::
  ListOpsItemEvents
listOpsItemEvents =
  ListOpsItemEvents'
    { _loieNextToken = Nothing,
      _loieMaxResults = Nothing,
      _loieFilters = Nothing
    }

-- | A token to start the list. Use this token to get the next set of results.
loieNextToken :: Lens' ListOpsItemEvents (Maybe Text)
loieNextToken = lens _loieNextToken (\s a -> s {_loieNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
loieMaxResults :: Lens' ListOpsItemEvents (Maybe Natural)
loieMaxResults = lens _loieMaxResults (\s a -> s {_loieMaxResults = a}) . mapping _Nat

-- | One or more OpsItem filters. Use a filter to return a more specific list of results.
loieFilters :: Lens' ListOpsItemEvents [OpsItemEventFilter]
loieFilters = lens _loieFilters (\s a -> s {_loieFilters = a}) . _Default . _Coerce

instance AWSPager ListOpsItemEvents where
  page rq rs
    | stop (rs ^. loierrsNextToken) = Nothing
    | stop (rs ^. loierrsSummaries) = Nothing
    | otherwise =
      Just $ rq & loieNextToken .~ rs ^. loierrsNextToken

instance AWSRequest ListOpsItemEvents where
  type Rs ListOpsItemEvents = ListOpsItemEventsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListOpsItemEventsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Summaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOpsItemEvents

instance NFData ListOpsItemEvents

instance ToHeaders ListOpsItemEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListOpsItemEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOpsItemEvents where
  toJSON ListOpsItemEvents' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _loieNextToken,
            ("MaxResults" .=) <$> _loieMaxResults,
            ("Filters" .=) <$> _loieFilters
          ]
      )

instance ToPath ListOpsItemEvents where
  toPath = const "/"

instance ToQuery ListOpsItemEvents where
  toQuery = const mempty

-- | /See:/ 'listOpsItemEventsResponse' smart constructor.
data ListOpsItemEventsResponse = ListOpsItemEventsResponse'
  { _loierrsNextToken ::
      !(Maybe Text),
    _loierrsSummaries ::
      !( Maybe
           [OpsItemEventSummary]
       ),
    _loierrsResponseStatus ::
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

-- | Creates a value of 'ListOpsItemEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loierrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'loierrsSummaries' - A list of event information for the specified OpsItems.
--
-- * 'loierrsResponseStatus' - -- | The response status code.
listOpsItemEventsResponse ::
  -- | 'loierrsResponseStatus'
  Int ->
  ListOpsItemEventsResponse
listOpsItemEventsResponse pResponseStatus_ =
  ListOpsItemEventsResponse'
    { _loierrsNextToken =
        Nothing,
      _loierrsSummaries = Nothing,
      _loierrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
loierrsNextToken :: Lens' ListOpsItemEventsResponse (Maybe Text)
loierrsNextToken = lens _loierrsNextToken (\s a -> s {_loierrsNextToken = a})

-- | A list of event information for the specified OpsItems.
loierrsSummaries :: Lens' ListOpsItemEventsResponse [OpsItemEventSummary]
loierrsSummaries = lens _loierrsSummaries (\s a -> s {_loierrsSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
loierrsResponseStatus :: Lens' ListOpsItemEventsResponse Int
loierrsResponseStatus = lens _loierrsResponseStatus (\s a -> s {_loierrsResponseStatus = a})

instance NFData ListOpsItemEventsResponse
