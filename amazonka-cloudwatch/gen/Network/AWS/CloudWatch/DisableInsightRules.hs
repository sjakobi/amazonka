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
-- Module      : Network.AWS.CloudWatch.DisableInsightRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the specified Contributor Insights rules. When rules are disabled, they do not analyze log groups and do not incur costs.
module Network.AWS.CloudWatch.DisableInsightRules
  ( -- * Creating a Request
    disableInsightRules,
    DisableInsightRules,

    -- * Request Lenses
    dRuleNames,

    -- * Destructuring the Response
    disableInsightRulesResponse,
    DisableInsightRulesResponse,

    -- * Response Lenses
    drsFailures,
    drsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableInsightRules' smart constructor.
newtype DisableInsightRules = DisableInsightRules'
  { _dRuleNames ::
      [Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableInsightRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dRuleNames' - An array of the rule names to disable. If you need to find out the names of your rules, use <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html DescribeInsightRules> .
disableInsightRules ::
  DisableInsightRules
disableInsightRules =
  DisableInsightRules' {_dRuleNames = mempty}

-- | An array of the rule names to disable. If you need to find out the names of your rules, use <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html DescribeInsightRules> .
dRuleNames :: Lens' DisableInsightRules [Text]
dRuleNames = lens _dRuleNames (\s a -> s {_dRuleNames = a}) . _Coerce

instance AWSRequest DisableInsightRules where
  type
    Rs DisableInsightRules =
      DisableInsightRulesResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "DisableInsightRulesResult"
      ( \s h x ->
          DisableInsightRulesResponse'
            <$> ( x .@? "Failures" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DisableInsightRules

instance NFData DisableInsightRules

instance ToHeaders DisableInsightRules where
  toHeaders = const mempty

instance ToPath DisableInsightRules where
  toPath = const "/"

instance ToQuery DisableInsightRules where
  toQuery DisableInsightRules' {..} =
    mconcat
      [ "Action" =: ("DisableInsightRules" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "RuleNames" =: toQueryList "member" _dRuleNames
      ]

-- | /See:/ 'disableInsightRulesResponse' smart constructor.
data DisableInsightRulesResponse = DisableInsightRulesResponse'
  { _drsFailures ::
      !( Maybe
           [PartialFailure]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DisableInsightRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsFailures' - An array listing the rules that could not be disabled. You cannot disable built-in rules.
--
-- * 'drsResponseStatus' - -- | The response status code.
disableInsightRulesResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DisableInsightRulesResponse
disableInsightRulesResponse pResponseStatus_ =
  DisableInsightRulesResponse'
    { _drsFailures =
        Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | An array listing the rules that could not be disabled. You cannot disable built-in rules.
drsFailures :: Lens' DisableInsightRulesResponse [PartialFailure]
drsFailures = lens _drsFailures (\s a -> s {_drsFailures = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DisableInsightRulesResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DisableInsightRulesResponse
