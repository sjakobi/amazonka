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
-- Module      : Network.AWS.CloudWatch.PutInsightRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Contributor Insights rule. Rules evaluate log events in a CloudWatch Logs log group, enabling you to find contributor data for the log events in that log group. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html Using Contributor Insights to Analyze High-Cardinality Data> .
--
--
-- If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created might not be available.
module Network.AWS.CloudWatch.PutInsightRule
  ( -- * Creating a Request
    putInsightRule,
    PutInsightRule,

    -- * Request Lenses
    pirRuleState,
    pirTags,
    pirRuleName,
    pirRuleDefinition,

    -- * Destructuring the Response
    putInsightRuleResponse,
    PutInsightRuleResponse,

    -- * Response Lenses
    pirrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putInsightRule' smart constructor.
data PutInsightRule = PutInsightRule'
  { _pirRuleState ::
      !(Maybe Text),
    _pirTags :: !(Maybe [Tag]),
    _pirRuleName :: !Text,
    _pirRuleDefinition :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutInsightRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirRuleState' - The state of the rule. Valid values are ENABLED and DISABLED.
--
-- * 'pirTags' - A list of key-value pairs to associate with the Contributor Insights rule. You can associate as many as 50 tags with a rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only the resources that have certain tag values. To be able to associate tags with a rule, you must have the @cloudwatch:TagResource@ permission in addition to the @cloudwatch:PutInsightRule@ permission. If you are using this operation to update an existing Contributor Insights rule, any tags you specify in this parameter are ignored. To change the tags of an existing rule, use <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html TagResource> .
--
-- * 'pirRuleName' - A unique name for the rule.
--
-- * 'pirRuleDefinition' - The definition of the rule, as a JSON object. For details on the valid syntax, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html Contributor Insights Rule Syntax> .
putInsightRule ::
  -- | 'pirRuleName'
  Text ->
  -- | 'pirRuleDefinition'
  Text ->
  PutInsightRule
putInsightRule pRuleName_ pRuleDefinition_ =
  PutInsightRule'
    { _pirRuleState = Nothing,
      _pirTags = Nothing,
      _pirRuleName = pRuleName_,
      _pirRuleDefinition = pRuleDefinition_
    }

-- | The state of the rule. Valid values are ENABLED and DISABLED.
pirRuleState :: Lens' PutInsightRule (Maybe Text)
pirRuleState = lens _pirRuleState (\s a -> s {_pirRuleState = a})

-- | A list of key-value pairs to associate with the Contributor Insights rule. You can associate as many as 50 tags with a rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only the resources that have certain tag values. To be able to associate tags with a rule, you must have the @cloudwatch:TagResource@ permission in addition to the @cloudwatch:PutInsightRule@ permission. If you are using this operation to update an existing Contributor Insights rule, any tags you specify in this parameter are ignored. To change the tags of an existing rule, use <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html TagResource> .
pirTags :: Lens' PutInsightRule [Tag]
pirTags = lens _pirTags (\s a -> s {_pirTags = a}) . _Default . _Coerce

-- | A unique name for the rule.
pirRuleName :: Lens' PutInsightRule Text
pirRuleName = lens _pirRuleName (\s a -> s {_pirRuleName = a})

-- | The definition of the rule, as a JSON object. For details on the valid syntax, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html Contributor Insights Rule Syntax> .
pirRuleDefinition :: Lens' PutInsightRule Text
pirRuleDefinition = lens _pirRuleDefinition (\s a -> s {_pirRuleDefinition = a})

instance AWSRequest PutInsightRule where
  type Rs PutInsightRule = PutInsightRuleResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "PutInsightRuleResult"
      ( \s h x ->
          PutInsightRuleResponse' <$> (pure (fromEnum s))
      )

instance Hashable PutInsightRule

instance NFData PutInsightRule

instance ToHeaders PutInsightRule where
  toHeaders = const mempty

instance ToPath PutInsightRule where
  toPath = const "/"

instance ToQuery PutInsightRule where
  toQuery PutInsightRule' {..} =
    mconcat
      [ "Action" =: ("PutInsightRule" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "RuleState" =: _pirRuleState,
        "Tags"
          =: toQuery (toQueryList "member" <$> _pirTags),
        "RuleName" =: _pirRuleName,
        "RuleDefinition" =: _pirRuleDefinition
      ]

-- | /See:/ 'putInsightRuleResponse' smart constructor.
newtype PutInsightRuleResponse = PutInsightRuleResponse'
  { _pirrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutInsightRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirrrsResponseStatus' - -- | The response status code.
putInsightRuleResponse ::
  -- | 'pirrrsResponseStatus'
  Int ->
  PutInsightRuleResponse
putInsightRuleResponse pResponseStatus_ =
  PutInsightRuleResponse'
    { _pirrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
pirrrsResponseStatus :: Lens' PutInsightRuleResponse Int
pirrrsResponseStatus = lens _pirrrsResponseStatus (\s a -> s {_pirrrsResponseStatus = a})

instance NFData PutInsightRuleResponse
