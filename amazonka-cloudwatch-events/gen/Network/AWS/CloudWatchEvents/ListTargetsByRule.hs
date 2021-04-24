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
-- Module      : Network.AWS.CloudWatchEvents.ListTargetsByRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the targets assigned to the specified rule.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchEvents.ListTargetsByRule
  ( -- * Creating a Request
    listTargetsByRule,
    ListTargetsByRule,

    -- * Request Lenses
    ltbrNextToken,
    ltbrEventBusName,
    ltbrLimit,
    ltbrRule,

    -- * Destructuring the Response
    listTargetsByRuleResponse,
    ListTargetsByRuleResponse,

    -- * Response Lenses
    ltbrrrsNextToken,
    ltbrrrsTargets,
    ltbrrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTargetsByRule' smart constructor.
data ListTargetsByRule = ListTargetsByRule'
  { _ltbrNextToken ::
      !(Maybe Text),
    _ltbrEventBusName :: !(Maybe Text),
    _ltbrLimit :: !(Maybe Nat),
    _ltbrRule :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTargetsByRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltbrNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'ltbrEventBusName' - The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- * 'ltbrLimit' - The maximum number of results to return.
--
-- * 'ltbrRule' - The name of the rule.
listTargetsByRule ::
  -- | 'ltbrRule'
  Text ->
  ListTargetsByRule
listTargetsByRule pRule_ =
  ListTargetsByRule'
    { _ltbrNextToken = Nothing,
      _ltbrEventBusName = Nothing,
      _ltbrLimit = Nothing,
      _ltbrRule = pRule_
    }

-- | The token returned by a previous call to retrieve the next set of results.
ltbrNextToken :: Lens' ListTargetsByRule (Maybe Text)
ltbrNextToken = lens _ltbrNextToken (\s a -> s {_ltbrNextToken = a})

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
ltbrEventBusName :: Lens' ListTargetsByRule (Maybe Text)
ltbrEventBusName = lens _ltbrEventBusName (\s a -> s {_ltbrEventBusName = a})

-- | The maximum number of results to return.
ltbrLimit :: Lens' ListTargetsByRule (Maybe Natural)
ltbrLimit = lens _ltbrLimit (\s a -> s {_ltbrLimit = a}) . mapping _Nat

-- | The name of the rule.
ltbrRule :: Lens' ListTargetsByRule Text
ltbrRule = lens _ltbrRule (\s a -> s {_ltbrRule = a})

instance AWSPager ListTargetsByRule where
  page rq rs
    | stop (rs ^. ltbrrrsNextToken) = Nothing
    | stop (rs ^. ltbrrrsTargets) = Nothing
    | otherwise =
      Just $ rq & ltbrNextToken .~ rs ^. ltbrrrsNextToken

instance AWSRequest ListTargetsByRule where
  type Rs ListTargetsByRule = ListTargetsByRuleResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListTargetsByRuleResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Targets")
            <*> (pure (fromEnum s))
      )

instance Hashable ListTargetsByRule

instance NFData ListTargetsByRule

instance ToHeaders ListTargetsByRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListTargetsByRule" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTargetsByRule where
  toJSON ListTargetsByRule' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltbrNextToken,
            ("EventBusName" .=) <$> _ltbrEventBusName,
            ("Limit" .=) <$> _ltbrLimit,
            Just ("Rule" .= _ltbrRule)
          ]
      )

instance ToPath ListTargetsByRule where
  toPath = const "/"

instance ToQuery ListTargetsByRule where
  toQuery = const mempty

-- | /See:/ 'listTargetsByRuleResponse' smart constructor.
data ListTargetsByRuleResponse = ListTargetsByRuleResponse'
  { _ltbrrrsNextToken ::
      !(Maybe Text),
    _ltbrrrsTargets ::
      !( Maybe
           (List1 Target)
       ),
    _ltbrrrsResponseStatus ::
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

-- | Creates a value of 'ListTargetsByRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltbrrrsNextToken' - Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
--
-- * 'ltbrrrsTargets' - The targets assigned to the rule.
--
-- * 'ltbrrrsResponseStatus' - -- | The response status code.
listTargetsByRuleResponse ::
  -- | 'ltbrrrsResponseStatus'
  Int ->
  ListTargetsByRuleResponse
listTargetsByRuleResponse pResponseStatus_ =
  ListTargetsByRuleResponse'
    { _ltbrrrsNextToken =
        Nothing,
      _ltbrrrsTargets = Nothing,
      _ltbrrrsResponseStatus = pResponseStatus_
    }

-- | Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
ltbrrrsNextToken :: Lens' ListTargetsByRuleResponse (Maybe Text)
ltbrrrsNextToken = lens _ltbrrrsNextToken (\s a -> s {_ltbrrrsNextToken = a})

-- | The targets assigned to the rule.
ltbrrrsTargets :: Lens' ListTargetsByRuleResponse (Maybe (NonEmpty Target))
ltbrrrsTargets = lens _ltbrrrsTargets (\s a -> s {_ltbrrrsTargets = a}) . mapping _List1

-- | -- | The response status code.
ltbrrrsResponseStatus :: Lens' ListTargetsByRuleResponse Int
ltbrrrsResponseStatus = lens _ltbrrrsResponseStatus (\s a -> s {_ltbrrrsResponseStatus = a})

instance NFData ListTargetsByRuleResponse
