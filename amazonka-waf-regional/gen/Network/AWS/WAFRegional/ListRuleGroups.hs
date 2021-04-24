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
-- Module      : Network.AWS.WAFRegional.ListRuleGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'RuleGroup' objects.
module Network.AWS.WAFRegional.ListRuleGroups
  ( -- * Creating a Request
    listRuleGroups,
    ListRuleGroups,

    -- * Request Lenses
    lrgNextMarker,
    lrgLimit,

    -- * Destructuring the Response
    listRuleGroupsResponse,
    ListRuleGroupsResponse,

    -- * Response Lenses
    lrgrrsNextMarker,
    lrgrrsRuleGroups,
    lrgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'listRuleGroups' smart constructor.
data ListRuleGroups = ListRuleGroups'
  { _lrgNextMarker ::
      !(Maybe Text),
    _lrgLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRuleGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrgNextMarker' - If you specify a value for @Limit@ and you have more @RuleGroups@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @RuleGroups@ . For the second and subsequent @ListRuleGroups@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @RuleGroups@ .
--
-- * 'lrgLimit' - Specifies the number of @RuleGroups@ that you want AWS WAF to return for this request. If you have more @RuleGroups@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @RuleGroups@ .
listRuleGroups ::
  ListRuleGroups
listRuleGroups =
  ListRuleGroups'
    { _lrgNextMarker = Nothing,
      _lrgLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more @RuleGroups@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @RuleGroups@ . For the second and subsequent @ListRuleGroups@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @RuleGroups@ .
lrgNextMarker :: Lens' ListRuleGroups (Maybe Text)
lrgNextMarker = lens _lrgNextMarker (\s a -> s {_lrgNextMarker = a})

-- | Specifies the number of @RuleGroups@ that you want AWS WAF to return for this request. If you have more @RuleGroups@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @RuleGroups@ .
lrgLimit :: Lens' ListRuleGroups (Maybe Natural)
lrgLimit = lens _lrgLimit (\s a -> s {_lrgLimit = a}) . mapping _Nat

instance AWSRequest ListRuleGroups where
  type Rs ListRuleGroups = ListRuleGroupsResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          ListRuleGroupsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "RuleGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRuleGroups

instance NFData ListRuleGroups

instance ToHeaders ListRuleGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.ListRuleGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRuleGroups where
  toJSON ListRuleGroups' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lrgNextMarker,
            ("Limit" .=) <$> _lrgLimit
          ]
      )

instance ToPath ListRuleGroups where
  toPath = const "/"

instance ToQuery ListRuleGroups where
  toQuery = const mempty

-- | /See:/ 'listRuleGroupsResponse' smart constructor.
data ListRuleGroupsResponse = ListRuleGroupsResponse'
  { _lrgrrsNextMarker ::
      !(Maybe Text),
    _lrgrrsRuleGroups ::
      !( Maybe
           [RuleGroupSummary]
       ),
    _lrgrrsResponseStatus ::
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

-- | Creates a value of 'ListRuleGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrgrrsNextMarker' - If you have more @RuleGroups@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @RuleGroups@ , submit another @ListRuleGroups@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'lrgrrsRuleGroups' - An array of 'RuleGroup' objects.
--
-- * 'lrgrrsResponseStatus' - -- | The response status code.
listRuleGroupsResponse ::
  -- | 'lrgrrsResponseStatus'
  Int ->
  ListRuleGroupsResponse
listRuleGroupsResponse pResponseStatus_ =
  ListRuleGroupsResponse'
    { _lrgrrsNextMarker =
        Nothing,
      _lrgrrsRuleGroups = Nothing,
      _lrgrrsResponseStatus = pResponseStatus_
    }

-- | If you have more @RuleGroups@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @RuleGroups@ , submit another @ListRuleGroups@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
lrgrrsNextMarker :: Lens' ListRuleGroupsResponse (Maybe Text)
lrgrrsNextMarker = lens _lrgrrsNextMarker (\s a -> s {_lrgrrsNextMarker = a})

-- | An array of 'RuleGroup' objects.
lrgrrsRuleGroups :: Lens' ListRuleGroupsResponse [RuleGroupSummary]
lrgrrsRuleGroups = lens _lrgrrsRuleGroups (\s a -> s {_lrgrrsRuleGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
lrgrrsResponseStatus :: Lens' ListRuleGroupsResponse Int
lrgrrsResponseStatus = lens _lrgrrsResponseStatus (\s a -> s {_lrgrrsResponseStatus = a})

instance NFData ListRuleGroupsResponse
