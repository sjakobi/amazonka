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
-- Module      : Network.AWS.WAF.ListSubscribedRuleGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'RuleGroup' objects that you are subscribed to.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListSubscribedRuleGroups
  ( -- * Creating a Request
    listSubscribedRuleGroups,
    ListSubscribedRuleGroups,

    -- * Request Lenses
    lsrgNextMarker,
    lsrgLimit,

    -- * Destructuring the Response
    listSubscribedRuleGroupsResponse,
    ListSubscribedRuleGroupsResponse,

    -- * Response Lenses
    lsrgrrsNextMarker,
    lsrgrrsRuleGroups,
    lsrgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'listSubscribedRuleGroups' smart constructor.
data ListSubscribedRuleGroups = ListSubscribedRuleGroups'
  { _lsrgNextMarker ::
      !(Maybe Text),
    _lsrgLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListSubscribedRuleGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrgNextMarker' - If you specify a value for @Limit@ and you have more @ByteMatchSets@ subscribed rule groups than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of subscribed rule groups. For the second and subsequent @ListSubscribedRuleGroupsRequest@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of subscribed rule groups.
--
-- * 'lsrgLimit' - Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of objects.
listSubscribedRuleGroups ::
  ListSubscribedRuleGroups
listSubscribedRuleGroups =
  ListSubscribedRuleGroups'
    { _lsrgNextMarker =
        Nothing,
      _lsrgLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more @ByteMatchSets@ subscribed rule groups than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of subscribed rule groups. For the second and subsequent @ListSubscribedRuleGroupsRequest@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of subscribed rule groups.
lsrgNextMarker :: Lens' ListSubscribedRuleGroups (Maybe Text)
lsrgNextMarker = lens _lsrgNextMarker (\s a -> s {_lsrgNextMarker = a})

-- | Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of objects.
lsrgLimit :: Lens' ListSubscribedRuleGroups (Maybe Natural)
lsrgLimit = lens _lsrgLimit (\s a -> s {_lsrgLimit = a}) . mapping _Nat

instance AWSPager ListSubscribedRuleGroups where
  page rq rs
    | stop (rs ^. lsrgrrsNextMarker) = Nothing
    | stop (rs ^. lsrgrrsRuleGroups) = Nothing
    | otherwise =
      Just $ rq & lsrgNextMarker .~ rs ^. lsrgrrsNextMarker

instance AWSRequest ListSubscribedRuleGroups where
  type
    Rs ListSubscribedRuleGroups =
      ListSubscribedRuleGroupsResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          ListSubscribedRuleGroupsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "RuleGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSubscribedRuleGroups

instance NFData ListSubscribedRuleGroups

instance ToHeaders ListSubscribedRuleGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_20150824.ListSubscribedRuleGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSubscribedRuleGroups where
  toJSON ListSubscribedRuleGroups' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lsrgNextMarker,
            ("Limit" .=) <$> _lsrgLimit
          ]
      )

instance ToPath ListSubscribedRuleGroups where
  toPath = const "/"

instance ToQuery ListSubscribedRuleGroups where
  toQuery = const mempty

-- | /See:/ 'listSubscribedRuleGroupsResponse' smart constructor.
data ListSubscribedRuleGroupsResponse = ListSubscribedRuleGroupsResponse'
  { _lsrgrrsNextMarker ::
      !( Maybe
           Text
       ),
    _lsrgrrsRuleGroups ::
      !( Maybe
           [SubscribedRuleGroupSummary]
       ),
    _lsrgrrsResponseStatus ::
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

-- | Creates a value of 'ListSubscribedRuleGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrgrrsNextMarker' - If you have more objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more objects, submit another @ListSubscribedRuleGroups@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'lsrgrrsRuleGroups' - An array of 'RuleGroup' objects.
--
-- * 'lsrgrrsResponseStatus' - -- | The response status code.
listSubscribedRuleGroupsResponse ::
  -- | 'lsrgrrsResponseStatus'
  Int ->
  ListSubscribedRuleGroupsResponse
listSubscribedRuleGroupsResponse pResponseStatus_ =
  ListSubscribedRuleGroupsResponse'
    { _lsrgrrsNextMarker =
        Nothing,
      _lsrgrrsRuleGroups = Nothing,
      _lsrgrrsResponseStatus = pResponseStatus_
    }

-- | If you have more objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more objects, submit another @ListSubscribedRuleGroups@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
lsrgrrsNextMarker :: Lens' ListSubscribedRuleGroupsResponse (Maybe Text)
lsrgrrsNextMarker = lens _lsrgrrsNextMarker (\s a -> s {_lsrgrrsNextMarker = a})

-- | An array of 'RuleGroup' objects.
lsrgrrsRuleGroups :: Lens' ListSubscribedRuleGroupsResponse [SubscribedRuleGroupSummary]
lsrgrrsRuleGroups = lens _lsrgrrsRuleGroups (\s a -> s {_lsrgrrsRuleGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrgrrsResponseStatus :: Lens' ListSubscribedRuleGroupsResponse Int
lsrgrrsResponseStatus = lens _lsrgrrsResponseStatus (\s a -> s {_lsrgrrsResponseStatus = a})

instance NFData ListSubscribedRuleGroupsResponse
