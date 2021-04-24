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
-- Module      : Network.AWS.StepFunctions.ListStateMachines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing state machines.
--
--
-- If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
--
-- This operation returns paginated results.
module Network.AWS.StepFunctions.ListStateMachines
  ( -- * Creating a Request
    listStateMachines,
    ListStateMachines,

    -- * Request Lenses
    lsmNextToken,
    lsmMaxResults,

    -- * Destructuring the Response
    listStateMachinesResponse,
    ListStateMachinesResponse,

    -- * Response Lenses
    lsmrrsNextToken,
    lsmrrsResponseStatus,
    lsmrrsStateMachines,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'listStateMachines' smart constructor.
data ListStateMachines = ListStateMachines'
  { _lsmNextToken ::
      !(Maybe Text),
    _lsmMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStateMachines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsmNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'lsmMaxResults' - The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
listStateMachines ::
  ListStateMachines
listStateMachines =
  ListStateMachines'
    { _lsmNextToken = Nothing,
      _lsmMaxResults = Nothing
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
lsmNextToken :: Lens' ListStateMachines (Maybe Text)
lsmNextToken = lens _lsmNextToken (\s a -> s {_lsmNextToken = a})

-- | The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
lsmMaxResults :: Lens' ListStateMachines (Maybe Natural)
lsmMaxResults = lens _lsmMaxResults (\s a -> s {_lsmMaxResults = a}) . mapping _Nat

instance AWSPager ListStateMachines where
  page rq rs
    | stop (rs ^. lsmrrsNextToken) = Nothing
    | stop (rs ^. lsmrrsStateMachines) = Nothing
    | otherwise =
      Just $ rq & lsmNextToken .~ rs ^. lsmrrsNextToken

instance AWSRequest ListStateMachines where
  type Rs ListStateMachines = ListStateMachinesResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          ListStateMachinesResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "stateMachines" .!@ mempty)
      )

instance Hashable ListStateMachines

instance NFData ListStateMachines

instance ToHeaders ListStateMachines where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSStepFunctions.ListStateMachines" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListStateMachines where
  toJSON ListStateMachines' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lsmNextToken,
            ("maxResults" .=) <$> _lsmMaxResults
          ]
      )

instance ToPath ListStateMachines where
  toPath = const "/"

instance ToQuery ListStateMachines where
  toQuery = const mempty

-- | /See:/ 'listStateMachinesResponse' smart constructor.
data ListStateMachinesResponse = ListStateMachinesResponse'
  { _lsmrrsNextToken ::
      !(Maybe Text),
    _lsmrrsResponseStatus ::
      !Int,
    _lsmrrsStateMachines ::
      ![StateMachineListItem]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListStateMachinesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsmrrsNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'lsmrrsResponseStatus' - -- | The response status code.
--
-- * 'lsmrrsStateMachines' - Undocumented member.
listStateMachinesResponse ::
  -- | 'lsmrrsResponseStatus'
  Int ->
  ListStateMachinesResponse
listStateMachinesResponse pResponseStatus_ =
  ListStateMachinesResponse'
    { _lsmrrsNextToken =
        Nothing,
      _lsmrrsResponseStatus = pResponseStatus_,
      _lsmrrsStateMachines = mempty
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
lsmrrsNextToken :: Lens' ListStateMachinesResponse (Maybe Text)
lsmrrsNextToken = lens _lsmrrsNextToken (\s a -> s {_lsmrrsNextToken = a})

-- | -- | The response status code.
lsmrrsResponseStatus :: Lens' ListStateMachinesResponse Int
lsmrrsResponseStatus = lens _lsmrrsResponseStatus (\s a -> s {_lsmrrsResponseStatus = a})

-- | Undocumented member.
lsmrrsStateMachines :: Lens' ListStateMachinesResponse [StateMachineListItem]
lsmrrsStateMachines = lens _lsmrrsStateMachines (\s a -> s {_lsmrrsStateMachines = a}) . _Coerce

instance NFData ListStateMachinesResponse
