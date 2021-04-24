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
-- Module      : Network.AWS.WAF.ListActivatedRulesInRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'ActivatedRule' objects.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListActivatedRulesInRuleGroup
  ( -- * Creating a Request
    listActivatedRulesInRuleGroup,
    ListActivatedRulesInRuleGroup,

    -- * Request Lenses
    larirgNextMarker,
    larirgRuleGroupId,
    larirgLimit,

    -- * Destructuring the Response
    listActivatedRulesInRuleGroupResponse,
    ListActivatedRulesInRuleGroupResponse,

    -- * Response Lenses
    larirgrrsNextMarker,
    larirgrrsActivatedRules,
    larirgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'listActivatedRulesInRuleGroup' smart constructor.
data ListActivatedRulesInRuleGroup = ListActivatedRulesInRuleGroup'
  { _larirgNextMarker ::
      !( Maybe
           Text
       ),
    _larirgRuleGroupId ::
      !( Maybe
           Text
       ),
    _larirgLimit ::
      !( Maybe
           Nat
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

-- | Creates a value of 'ListActivatedRulesInRuleGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larirgNextMarker' - If you specify a value for @Limit@ and you have more @ActivatedRules@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @ActivatedRules@ . For the second and subsequent @ListActivatedRulesInRuleGroup@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @ActivatedRules@ .
--
-- * 'larirgRuleGroupId' - The @RuleGroupId@ of the 'RuleGroup' for which you want to get a list of 'ActivatedRule' objects.
--
-- * 'larirgLimit' - Specifies the number of @ActivatedRules@ that you want AWS WAF to return for this request. If you have more @ActivatedRules@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @ActivatedRules@ .
listActivatedRulesInRuleGroup ::
  ListActivatedRulesInRuleGroup
listActivatedRulesInRuleGroup =
  ListActivatedRulesInRuleGroup'
    { _larirgNextMarker =
        Nothing,
      _larirgRuleGroupId = Nothing,
      _larirgLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more @ActivatedRules@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @ActivatedRules@ . For the second and subsequent @ListActivatedRulesInRuleGroup@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @ActivatedRules@ .
larirgNextMarker :: Lens' ListActivatedRulesInRuleGroup (Maybe Text)
larirgNextMarker = lens _larirgNextMarker (\s a -> s {_larirgNextMarker = a})

-- | The @RuleGroupId@ of the 'RuleGroup' for which you want to get a list of 'ActivatedRule' objects.
larirgRuleGroupId :: Lens' ListActivatedRulesInRuleGroup (Maybe Text)
larirgRuleGroupId = lens _larirgRuleGroupId (\s a -> s {_larirgRuleGroupId = a})

-- | Specifies the number of @ActivatedRules@ that you want AWS WAF to return for this request. If you have more @ActivatedRules@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @ActivatedRules@ .
larirgLimit :: Lens' ListActivatedRulesInRuleGroup (Maybe Natural)
larirgLimit = lens _larirgLimit (\s a -> s {_larirgLimit = a}) . mapping _Nat

instance AWSPager ListActivatedRulesInRuleGroup where
  page rq rs
    | stop (rs ^. larirgrrsNextMarker) = Nothing
    | stop (rs ^. larirgrrsActivatedRules) = Nothing
    | otherwise =
      Just $
        rq
          & larirgNextMarker .~ rs ^. larirgrrsNextMarker

instance AWSRequest ListActivatedRulesInRuleGroup where
  type
    Rs ListActivatedRulesInRuleGroup =
      ListActivatedRulesInRuleGroupResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          ListActivatedRulesInRuleGroupResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "ActivatedRules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListActivatedRulesInRuleGroup

instance NFData ListActivatedRulesInRuleGroup

instance ToHeaders ListActivatedRulesInRuleGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_20150824.ListActivatedRulesInRuleGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListActivatedRulesInRuleGroup where
  toJSON ListActivatedRulesInRuleGroup' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _larirgNextMarker,
            ("RuleGroupId" .=) <$> _larirgRuleGroupId,
            ("Limit" .=) <$> _larirgLimit
          ]
      )

instance ToPath ListActivatedRulesInRuleGroup where
  toPath = const "/"

instance ToQuery ListActivatedRulesInRuleGroup where
  toQuery = const mempty

-- | /See:/ 'listActivatedRulesInRuleGroupResponse' smart constructor.
data ListActivatedRulesInRuleGroupResponse = ListActivatedRulesInRuleGroupResponse'
  { _larirgrrsNextMarker ::
      !( Maybe
           Text
       ),
    _larirgrrsActivatedRules ::
      !( Maybe
           [ActivatedRule]
       ),
    _larirgrrsResponseStatus ::
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

-- | Creates a value of 'ListActivatedRulesInRuleGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larirgrrsNextMarker' - If you have more @ActivatedRules@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @ActivatedRules@ , submit another @ListActivatedRulesInRuleGroup@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'larirgrrsActivatedRules' - An array of @ActivatedRules@ objects.
--
-- * 'larirgrrsResponseStatus' - -- | The response status code.
listActivatedRulesInRuleGroupResponse ::
  -- | 'larirgrrsResponseStatus'
  Int ->
  ListActivatedRulesInRuleGroupResponse
listActivatedRulesInRuleGroupResponse
  pResponseStatus_ =
    ListActivatedRulesInRuleGroupResponse'
      { _larirgrrsNextMarker =
          Nothing,
        _larirgrrsActivatedRules = Nothing,
        _larirgrrsResponseStatus =
          pResponseStatus_
      }

-- | If you have more @ActivatedRules@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @ActivatedRules@ , submit another @ListActivatedRulesInRuleGroup@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
larirgrrsNextMarker :: Lens' ListActivatedRulesInRuleGroupResponse (Maybe Text)
larirgrrsNextMarker = lens _larirgrrsNextMarker (\s a -> s {_larirgrrsNextMarker = a})

-- | An array of @ActivatedRules@ objects.
larirgrrsActivatedRules :: Lens' ListActivatedRulesInRuleGroupResponse [ActivatedRule]
larirgrrsActivatedRules = lens _larirgrrsActivatedRules (\s a -> s {_larirgrrsActivatedRules = a}) . _Default . _Coerce

-- | -- | The response status code.
larirgrrsResponseStatus :: Lens' ListActivatedRulesInRuleGroupResponse Int
larirgrrsResponseStatus = lens _larirgrrsResponseStatus (\s a -> s {_larirgrrsResponseStatus = a})

instance NFData ListActivatedRulesInRuleGroupResponse
