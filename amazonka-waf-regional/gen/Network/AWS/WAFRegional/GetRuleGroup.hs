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
-- Module      : Network.AWS.WAFRegional.GetRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the 'RuleGroup' that is specified by the @RuleGroupId@ that you included in the @GetRuleGroup@ request.
--
--
-- To view the rules in a rule group, use 'ListActivatedRulesInRuleGroup' .
module Network.AWS.WAFRegional.GetRuleGroup
  ( -- * Creating a Request
    getRuleGroup,
    GetRuleGroup,

    -- * Request Lenses
    grgRuleGroupId,

    -- * Destructuring the Response
    getRuleGroupResponse,
    GetRuleGroupResponse,

    -- * Response Lenses
    grgrrsRuleGroup,
    grgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'getRuleGroup' smart constructor.
newtype GetRuleGroup = GetRuleGroup'
  { _grgRuleGroupId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRuleGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grgRuleGroupId' - The @RuleGroupId@ of the 'RuleGroup' that you want to get. @RuleGroupId@ is returned by 'CreateRuleGroup' and by 'ListRuleGroups' .
getRuleGroup ::
  -- | 'grgRuleGroupId'
  Text ->
  GetRuleGroup
getRuleGroup pRuleGroupId_ =
  GetRuleGroup' {_grgRuleGroupId = pRuleGroupId_}

-- | The @RuleGroupId@ of the 'RuleGroup' that you want to get. @RuleGroupId@ is returned by 'CreateRuleGroup' and by 'ListRuleGroups' .
grgRuleGroupId :: Lens' GetRuleGroup Text
grgRuleGroupId = lens _grgRuleGroupId (\s a -> s {_grgRuleGroupId = a})

instance AWSRequest GetRuleGroup where
  type Rs GetRuleGroup = GetRuleGroupResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          GetRuleGroupResponse'
            <$> (x .?> "RuleGroup") <*> (pure (fromEnum s))
      )

instance Hashable GetRuleGroup

instance NFData GetRuleGroup

instance ToHeaders GetRuleGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.GetRuleGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRuleGroup where
  toJSON GetRuleGroup' {..} =
    object
      (catMaybes [Just ("RuleGroupId" .= _grgRuleGroupId)])

instance ToPath GetRuleGroup where
  toPath = const "/"

instance ToQuery GetRuleGroup where
  toQuery = const mempty

-- | /See:/ 'getRuleGroupResponse' smart constructor.
data GetRuleGroupResponse = GetRuleGroupResponse'
  { _grgrrsRuleGroup ::
      !(Maybe RuleGroup),
    _grgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRuleGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grgrrsRuleGroup' - Information about the 'RuleGroup' that you specified in the @GetRuleGroup@ request.
--
-- * 'grgrrsResponseStatus' - -- | The response status code.
getRuleGroupResponse ::
  -- | 'grgrrsResponseStatus'
  Int ->
  GetRuleGroupResponse
getRuleGroupResponse pResponseStatus_ =
  GetRuleGroupResponse'
    { _grgrrsRuleGroup = Nothing,
      _grgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the 'RuleGroup' that you specified in the @GetRuleGroup@ request.
grgrrsRuleGroup :: Lens' GetRuleGroupResponse (Maybe RuleGroup)
grgrrsRuleGroup = lens _grgrrsRuleGroup (\s a -> s {_grgrrsRuleGroup = a})

-- | -- | The response status code.
grgrrsResponseStatus :: Lens' GetRuleGroupResponse Int
grgrrsResponseStatus = lens _grgrrsResponseStatus (\s a -> s {_grgrrsResponseStatus = a})

instance NFData GetRuleGroupResponse
