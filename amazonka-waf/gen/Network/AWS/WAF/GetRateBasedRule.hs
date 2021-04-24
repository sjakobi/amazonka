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
-- Module      : Network.AWS.WAF.GetRateBasedRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the 'RateBasedRule' that is specified by the @RuleId@ that you included in the @GetRateBasedRule@ request.
module Network.AWS.WAF.GetRateBasedRule
  ( -- * Creating a Request
    getRateBasedRule,
    GetRateBasedRule,

    -- * Request Lenses
    grbrRuleId,

    -- * Destructuring the Response
    getRateBasedRuleResponse,
    GetRateBasedRuleResponse,

    -- * Response Lenses
    grbrrrsRule,
    grbrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'getRateBasedRule' smart constructor.
newtype GetRateBasedRule = GetRateBasedRule'
  { _grbrRuleId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRateBasedRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grbrRuleId' - The @RuleId@ of the 'RateBasedRule' that you want to get. @RuleId@ is returned by 'CreateRateBasedRule' and by 'ListRateBasedRules' .
getRateBasedRule ::
  -- | 'grbrRuleId'
  Text ->
  GetRateBasedRule
getRateBasedRule pRuleId_ =
  GetRateBasedRule' {_grbrRuleId = pRuleId_}

-- | The @RuleId@ of the 'RateBasedRule' that you want to get. @RuleId@ is returned by 'CreateRateBasedRule' and by 'ListRateBasedRules' .
grbrRuleId :: Lens' GetRateBasedRule Text
grbrRuleId = lens _grbrRuleId (\s a -> s {_grbrRuleId = a})

instance AWSRequest GetRateBasedRule where
  type Rs GetRateBasedRule = GetRateBasedRuleResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          GetRateBasedRuleResponse'
            <$> (x .?> "Rule") <*> (pure (fromEnum s))
      )

instance Hashable GetRateBasedRule

instance NFData GetRateBasedRule

instance ToHeaders GetRateBasedRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSWAF_20150824.GetRateBasedRule" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRateBasedRule where
  toJSON GetRateBasedRule' {..} =
    object (catMaybes [Just ("RuleId" .= _grbrRuleId)])

instance ToPath GetRateBasedRule where
  toPath = const "/"

instance ToQuery GetRateBasedRule where
  toQuery = const mempty

-- | /See:/ 'getRateBasedRuleResponse' smart constructor.
data GetRateBasedRuleResponse = GetRateBasedRuleResponse'
  { _grbrrrsRule ::
      !( Maybe
           RateBasedRule
       ),
    _grbrrrsResponseStatus ::
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

-- | Creates a value of 'GetRateBasedRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grbrrrsRule' - Information about the 'RateBasedRule' that you specified in the @GetRateBasedRule@ request.
--
-- * 'grbrrrsResponseStatus' - -- | The response status code.
getRateBasedRuleResponse ::
  -- | 'grbrrrsResponseStatus'
  Int ->
  GetRateBasedRuleResponse
getRateBasedRuleResponse pResponseStatus_ =
  GetRateBasedRuleResponse'
    { _grbrrrsRule = Nothing,
      _grbrrrsResponseStatus = pResponseStatus_
    }

-- | Information about the 'RateBasedRule' that you specified in the @GetRateBasedRule@ request.
grbrrrsRule :: Lens' GetRateBasedRuleResponse (Maybe RateBasedRule)
grbrrrsRule = lens _grbrrrsRule (\s a -> s {_grbrrrsRule = a})

-- | -- | The response status code.
grbrrrsResponseStatus :: Lens' GetRateBasedRuleResponse Int
grbrrrsResponseStatus = lens _grbrrrsResponseStatus (\s a -> s {_grbrrrsResponseStatus = a})

instance NFData GetRateBasedRuleResponse
