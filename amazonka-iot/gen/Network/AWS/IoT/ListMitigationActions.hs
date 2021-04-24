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
-- Module      : Network.AWS.IoT.ListMitigationActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all mitigation actions that match the specified filter criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListMitigationActions
  ( -- * Creating a Request
    listMitigationActions,
    ListMitigationActions,

    -- * Request Lenses
    lmaNextToken,
    lmaMaxResults,
    lmaActionType,

    -- * Destructuring the Response
    listMitigationActionsResponse,
    ListMitigationActionsResponse,

    -- * Response Lenses
    lmarrsNextToken,
    lmarrsActionIdentifiers,
    lmarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listMitigationActions' smart constructor.
data ListMitigationActions = ListMitigationActions'
  { _lmaNextToken ::
      !(Maybe Text),
    _lmaMaxResults ::
      !(Maybe Nat),
    _lmaActionType ::
      !( Maybe
           MitigationActionType
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMitigationActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmaNextToken' - The token for the next set of results.
--
-- * 'lmaMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'lmaActionType' - Specify a value to limit the result to mitigation actions with a specific action type.
listMitigationActions ::
  ListMitigationActions
listMitigationActions =
  ListMitigationActions'
    { _lmaNextToken = Nothing,
      _lmaMaxResults = Nothing,
      _lmaActionType = Nothing
    }

-- | The token for the next set of results.
lmaNextToken :: Lens' ListMitigationActions (Maybe Text)
lmaNextToken = lens _lmaNextToken (\s a -> s {_lmaNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
lmaMaxResults :: Lens' ListMitigationActions (Maybe Natural)
lmaMaxResults = lens _lmaMaxResults (\s a -> s {_lmaMaxResults = a}) . mapping _Nat

-- | Specify a value to limit the result to mitigation actions with a specific action type.
lmaActionType :: Lens' ListMitigationActions (Maybe MitigationActionType)
lmaActionType = lens _lmaActionType (\s a -> s {_lmaActionType = a})

instance AWSPager ListMitigationActions where
  page rq rs
    | stop (rs ^. lmarrsNextToken) = Nothing
    | stop (rs ^. lmarrsActionIdentifiers) = Nothing
    | otherwise =
      Just $ rq & lmaNextToken .~ rs ^. lmarrsNextToken

instance AWSRequest ListMitigationActions where
  type
    Rs ListMitigationActions =
      ListMitigationActionsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListMitigationActionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "actionIdentifiers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListMitigationActions

instance NFData ListMitigationActions

instance ToHeaders ListMitigationActions where
  toHeaders = const mempty

instance ToPath ListMitigationActions where
  toPath = const "/mitigationactions/actions"

instance ToQuery ListMitigationActions where
  toQuery ListMitigationActions' {..} =
    mconcat
      [ "nextToken" =: _lmaNextToken,
        "maxResults" =: _lmaMaxResults,
        "actionType" =: _lmaActionType
      ]

-- | /See:/ 'listMitigationActionsResponse' smart constructor.
data ListMitigationActionsResponse = ListMitigationActionsResponse'
  { _lmarrsNextToken ::
      !( Maybe
           Text
       ),
    _lmarrsActionIdentifiers ::
      !( Maybe
           [MitigationActionIdentifier]
       ),
    _lmarrsResponseStatus ::
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

-- | Creates a value of 'ListMitigationActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmarrsNextToken' - The token for the next set of results.
--
-- * 'lmarrsActionIdentifiers' - A set of actions that matched the specified filter criteria.
--
-- * 'lmarrsResponseStatus' - -- | The response status code.
listMitigationActionsResponse ::
  -- | 'lmarrsResponseStatus'
  Int ->
  ListMitigationActionsResponse
listMitigationActionsResponse pResponseStatus_ =
  ListMitigationActionsResponse'
    { _lmarrsNextToken =
        Nothing,
      _lmarrsActionIdentifiers = Nothing,
      _lmarrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results.
lmarrsNextToken :: Lens' ListMitigationActionsResponse (Maybe Text)
lmarrsNextToken = lens _lmarrsNextToken (\s a -> s {_lmarrsNextToken = a})

-- | A set of actions that matched the specified filter criteria.
lmarrsActionIdentifiers :: Lens' ListMitigationActionsResponse [MitigationActionIdentifier]
lmarrsActionIdentifiers = lens _lmarrsActionIdentifiers (\s a -> s {_lmarrsActionIdentifiers = a}) . _Default . _Coerce

-- | -- | The response status code.
lmarrsResponseStatus :: Lens' ListMitigationActionsResponse Int
lmarrsResponseStatus = lens _lmarrsResponseStatus (\s a -> s {_lmarrsResponseStatus = a})

instance NFData ListMitigationActionsResponse
