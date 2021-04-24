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
-- Module      : Network.AWS.IoT.ListTopicRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the rules for the specific topic.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListTopicRules
  ( -- * Creating a Request
    listTopicRules,
    ListTopicRules,

    -- * Request Lenses
    ltrNextToken,
    ltrMaxResults,
    ltrTopic,
    ltrRuleDisabled,

    -- * Destructuring the Response
    listTopicRulesResponse,
    ListTopicRulesResponse,

    -- * Response Lenses
    ltrrrsNextToken,
    ltrrrsRules,
    ltrrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListTopicRules operation.
--
--
--
-- /See:/ 'listTopicRules' smart constructor.
data ListTopicRules = ListTopicRules'
  { _ltrNextToken ::
      !(Maybe Text),
    _ltrMaxResults :: !(Maybe Nat),
    _ltrTopic :: !(Maybe Text),
    _ltrRuleDisabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTopicRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltrMaxResults' - The maximum number of results to return.
--
-- * 'ltrTopic' - The topic.
--
-- * 'ltrRuleDisabled' - Specifies whether the rule is disabled.
listTopicRules ::
  ListTopicRules
listTopicRules =
  ListTopicRules'
    { _ltrNextToken = Nothing,
      _ltrMaxResults = Nothing,
      _ltrTopic = Nothing,
      _ltrRuleDisabled = Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltrNextToken :: Lens' ListTopicRules (Maybe Text)
ltrNextToken = lens _ltrNextToken (\s a -> s {_ltrNextToken = a})

-- | The maximum number of results to return.
ltrMaxResults :: Lens' ListTopicRules (Maybe Natural)
ltrMaxResults = lens _ltrMaxResults (\s a -> s {_ltrMaxResults = a}) . mapping _Nat

-- | The topic.
ltrTopic :: Lens' ListTopicRules (Maybe Text)
ltrTopic = lens _ltrTopic (\s a -> s {_ltrTopic = a})

-- | Specifies whether the rule is disabled.
ltrRuleDisabled :: Lens' ListTopicRules (Maybe Bool)
ltrRuleDisabled = lens _ltrRuleDisabled (\s a -> s {_ltrRuleDisabled = a})

instance AWSPager ListTopicRules where
  page rq rs
    | stop (rs ^. ltrrrsNextToken) = Nothing
    | stop (rs ^. ltrrrsRules) = Nothing
    | otherwise =
      Just $ rq & ltrNextToken .~ rs ^. ltrrrsNextToken

instance AWSRequest ListTopicRules where
  type Rs ListTopicRules = ListTopicRulesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListTopicRulesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "rules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTopicRules

instance NFData ListTopicRules

instance ToHeaders ListTopicRules where
  toHeaders = const mempty

instance ToPath ListTopicRules where
  toPath = const "/rules"

instance ToQuery ListTopicRules where
  toQuery ListTopicRules' {..} =
    mconcat
      [ "nextToken" =: _ltrNextToken,
        "maxResults" =: _ltrMaxResults,
        "topic" =: _ltrTopic,
        "ruleDisabled" =: _ltrRuleDisabled
      ]

-- | The output from the ListTopicRules operation.
--
--
--
-- /See:/ 'listTopicRulesResponse' smart constructor.
data ListTopicRulesResponse = ListTopicRulesResponse'
  { _ltrrrsNextToken ::
      !(Maybe Text),
    _ltrrrsRules ::
      !( Maybe
           [TopicRuleListItem]
       ),
    _ltrrrsResponseStatus ::
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

-- | Creates a value of 'ListTopicRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'ltrrrsRules' - The rules.
--
-- * 'ltrrrsResponseStatus' - -- | The response status code.
listTopicRulesResponse ::
  -- | 'ltrrrsResponseStatus'
  Int ->
  ListTopicRulesResponse
listTopicRulesResponse pResponseStatus_ =
  ListTopicRulesResponse'
    { _ltrrrsNextToken = Nothing,
      _ltrrrsRules = Nothing,
      _ltrrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
ltrrrsNextToken :: Lens' ListTopicRulesResponse (Maybe Text)
ltrrrsNextToken = lens _ltrrrsNextToken (\s a -> s {_ltrrrsNextToken = a})

-- | The rules.
ltrrrsRules :: Lens' ListTopicRulesResponse [TopicRuleListItem]
ltrrrsRules = lens _ltrrrsRules (\s a -> s {_ltrrrsRules = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrrsResponseStatus :: Lens' ListTopicRulesResponse Int
ltrrrsResponseStatus = lens _ltrrrsResponseStatus (\s a -> s {_ltrrrsResponseStatus = a})

instance NFData ListTopicRulesResponse
