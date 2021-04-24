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
-- Module      : Network.AWS.SageMaker.ListActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the actions in your account and their properties.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListActions
  ( -- * Creating a Request
    listActions,
    ListActions,

    -- * Request Lenses
    lisCreatedAfter,
    lisSortOrder,
    lisNextToken,
    lisCreatedBefore,
    lisActionType,
    lisMaxResults,
    lisSourceURI,
    lisSortBy,

    -- * Destructuring the Response
    listActionsResponse,
    ListActionsResponse,

    -- * Response Lenses
    lararsNextToken,
    lararsActionSummaries,
    lararsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listActions' smart constructor.
data ListActions = ListActions'
  { _lisCreatedAfter ::
      !(Maybe POSIX),
    _lisSortOrder :: !(Maybe SortOrder),
    _lisNextToken :: !(Maybe Text),
    _lisCreatedBefore :: !(Maybe POSIX),
    _lisActionType :: !(Maybe Text),
    _lisMaxResults :: !(Maybe Nat),
    _lisSourceURI :: !(Maybe Text),
    _lisSortBy :: !(Maybe SortActionsBy)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisCreatedAfter' - A filter that returns only actions created on or after the specified time.
--
-- * 'lisSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'lisNextToken' - If the previous call to @ListActions@ didn't return the full set of actions, the call returns a token for getting the next set of actions.
--
-- * 'lisCreatedBefore' - A filter that returns only actions created on or before the specified time.
--
-- * 'lisActionType' - A filter that returns only actions of the specified type.
--
-- * 'lisMaxResults' - The maximum number of actions to return in the response. The default value is 10.
--
-- * 'lisSourceURI' - A filter that returns only actions with the specified source URI.
--
-- * 'lisSortBy' - The property used to sort results. The default value is @CreationTime@ .
listActions ::
  ListActions
listActions =
  ListActions'
    { _lisCreatedAfter = Nothing,
      _lisSortOrder = Nothing,
      _lisNextToken = Nothing,
      _lisCreatedBefore = Nothing,
      _lisActionType = Nothing,
      _lisMaxResults = Nothing,
      _lisSourceURI = Nothing,
      _lisSortBy = Nothing
    }

-- | A filter that returns only actions created on or after the specified time.
lisCreatedAfter :: Lens' ListActions (Maybe UTCTime)
lisCreatedAfter = lens _lisCreatedAfter (\s a -> s {_lisCreatedAfter = a}) . mapping _Time

-- | The sort order. The default value is @Descending@ .
lisSortOrder :: Lens' ListActions (Maybe SortOrder)
lisSortOrder = lens _lisSortOrder (\s a -> s {_lisSortOrder = a})

-- | If the previous call to @ListActions@ didn't return the full set of actions, the call returns a token for getting the next set of actions.
lisNextToken :: Lens' ListActions (Maybe Text)
lisNextToken = lens _lisNextToken (\s a -> s {_lisNextToken = a})

-- | A filter that returns only actions created on or before the specified time.
lisCreatedBefore :: Lens' ListActions (Maybe UTCTime)
lisCreatedBefore = lens _lisCreatedBefore (\s a -> s {_lisCreatedBefore = a}) . mapping _Time

-- | A filter that returns only actions of the specified type.
lisActionType :: Lens' ListActions (Maybe Text)
lisActionType = lens _lisActionType (\s a -> s {_lisActionType = a})

-- | The maximum number of actions to return in the response. The default value is 10.
lisMaxResults :: Lens' ListActions (Maybe Natural)
lisMaxResults = lens _lisMaxResults (\s a -> s {_lisMaxResults = a}) . mapping _Nat

-- | A filter that returns only actions with the specified source URI.
lisSourceURI :: Lens' ListActions (Maybe Text)
lisSourceURI = lens _lisSourceURI (\s a -> s {_lisSourceURI = a})

-- | The property used to sort results. The default value is @CreationTime@ .
lisSortBy :: Lens' ListActions (Maybe SortActionsBy)
lisSortBy = lens _lisSortBy (\s a -> s {_lisSortBy = a})

instance AWSPager ListActions where
  page rq rs
    | stop (rs ^. lararsNextToken) = Nothing
    | stop (rs ^. lararsActionSummaries) = Nothing
    | otherwise =
      Just $ rq & lisNextToken .~ rs ^. lararsNextToken

instance AWSRequest ListActions where
  type Rs ListActions = ListActionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListActionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ActionSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListActions

instance NFData ListActions

instance ToHeaders ListActions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListActions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListActions where
  toJSON ListActions' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _lisCreatedAfter,
            ("SortOrder" .=) <$> _lisSortOrder,
            ("NextToken" .=) <$> _lisNextToken,
            ("CreatedBefore" .=) <$> _lisCreatedBefore,
            ("ActionType" .=) <$> _lisActionType,
            ("MaxResults" .=) <$> _lisMaxResults,
            ("SourceUri" .=) <$> _lisSourceURI,
            ("SortBy" .=) <$> _lisSortBy
          ]
      )

instance ToPath ListActions where
  toPath = const "/"

instance ToQuery ListActions where
  toQuery = const mempty

-- | /See:/ 'listActionsResponse' smart constructor.
data ListActionsResponse = ListActionsResponse'
  { _lararsNextToken ::
      !(Maybe Text),
    _lararsActionSummaries ::
      !(Maybe [ActionSummary]),
    _lararsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lararsNextToken' - A token for getting the next set of actions, if there are any.
--
-- * 'lararsActionSummaries' - A list of actions and their properties.
--
-- * 'lararsResponseStatus' - -- | The response status code.
listActionsResponse ::
  -- | 'lararsResponseStatus'
  Int ->
  ListActionsResponse
listActionsResponse pResponseStatus_ =
  ListActionsResponse'
    { _lararsNextToken = Nothing,
      _lararsActionSummaries = Nothing,
      _lararsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of actions, if there are any.
lararsNextToken :: Lens' ListActionsResponse (Maybe Text)
lararsNextToken = lens _lararsNextToken (\s a -> s {_lararsNextToken = a})

-- | A list of actions and their properties.
lararsActionSummaries :: Lens' ListActionsResponse [ActionSummary]
lararsActionSummaries = lens _lararsActionSummaries (\s a -> s {_lararsActionSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lararsResponseStatus :: Lens' ListActionsResponse Int
lararsResponseStatus = lens _lararsResponseStatus (\s a -> s {_lararsResponseStatus = a})

instance NFData ListActionsResponse
