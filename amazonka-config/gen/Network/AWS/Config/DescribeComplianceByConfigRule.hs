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
-- Module      : Network.AWS.Config.DescribeComplianceByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule.
--
--
-- A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply.
--
-- If AWS Config has no current evaluation results for the rule, it returns @INSUFFICIENT_DATA@ . This result might indicate one of the following conditions:
--
--     * AWS Config has never invoked an evaluation for the rule. To check whether it has, use the @DescribeConfigRuleEvaluationStatus@ action to get the @LastSuccessfulInvocationTime@ and @LastFailedInvocationTime@ .
--
--     * The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role you assigned to your configuration recorder includes the @config:PutEvaluations@ permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the @config:PutEvaluations@ permission.
--
--     * The rule's AWS Lambda function has returned @NOT_APPLICABLE@ for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeComplianceByConfigRule
  ( -- * Creating a Request
    describeComplianceByConfigRule,
    DescribeComplianceByConfigRule,

    -- * Request Lenses
    dcbcrNextToken,
    dcbcrComplianceTypes,
    dcbcrConfigRuleNames,

    -- * Destructuring the Response
    describeComplianceByConfigRuleResponse,
    DescribeComplianceByConfigRuleResponse,

    -- * Response Lenses
    dcbcrrrsNextToken,
    dcbcrrrsComplianceByConfigRules,
    dcbcrrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeComplianceByConfigRule' smart constructor.
data DescribeComplianceByConfigRule = DescribeComplianceByConfigRule'
  { _dcbcrNextToken ::
      !( Maybe
           Text
       ),
    _dcbcrComplianceTypes ::
      !( Maybe
           [ComplianceType]
       ),
    _dcbcrConfigRuleNames ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'DescribeComplianceByConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbcrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcbcrComplianceTypes' - Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
--
-- * 'dcbcrConfigRuleNames' - Specify one or more AWS Config rule names to filter the results by rule.
describeComplianceByConfigRule ::
  DescribeComplianceByConfigRule
describeComplianceByConfigRule =
  DescribeComplianceByConfigRule'
    { _dcbcrNextToken =
        Nothing,
      _dcbcrComplianceTypes = Nothing,
      _dcbcrConfigRuleNames = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcbcrNextToken :: Lens' DescribeComplianceByConfigRule (Maybe Text)
dcbcrNextToken = lens _dcbcrNextToken (\s a -> s {_dcbcrNextToken = a})

-- | Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
dcbcrComplianceTypes :: Lens' DescribeComplianceByConfigRule [ComplianceType]
dcbcrComplianceTypes = lens _dcbcrComplianceTypes (\s a -> s {_dcbcrComplianceTypes = a}) . _Default . _Coerce

-- | Specify one or more AWS Config rule names to filter the results by rule.
dcbcrConfigRuleNames :: Lens' DescribeComplianceByConfigRule [Text]
dcbcrConfigRuleNames = lens _dcbcrConfigRuleNames (\s a -> s {_dcbcrConfigRuleNames = a}) . _Default . _Coerce

instance AWSPager DescribeComplianceByConfigRule where
  page rq rs
    | stop (rs ^. dcbcrrrsNextToken) = Nothing
    | stop (rs ^. dcbcrrrsComplianceByConfigRules) =
      Nothing
    | otherwise =
      Just $ rq & dcbcrNextToken .~ rs ^. dcbcrrrsNextToken

instance AWSRequest DescribeComplianceByConfigRule where
  type
    Rs DescribeComplianceByConfigRule =
      DescribeComplianceByConfigRuleResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeComplianceByConfigRuleResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ComplianceByConfigRules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeComplianceByConfigRule

instance NFData DescribeComplianceByConfigRule

instance ToHeaders DescribeComplianceByConfigRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeComplianceByConfigRule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeComplianceByConfigRule where
  toJSON DescribeComplianceByConfigRule' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcbcrNextToken,
            ("ComplianceTypes" .=) <$> _dcbcrComplianceTypes,
            ("ConfigRuleNames" .=) <$> _dcbcrConfigRuleNames
          ]
      )

instance ToPath DescribeComplianceByConfigRule where
  toPath = const "/"

instance ToQuery DescribeComplianceByConfigRule where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeComplianceByConfigRuleResponse' smart constructor.
data DescribeComplianceByConfigRuleResponse = DescribeComplianceByConfigRuleResponse'
  { _dcbcrrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcbcrrrsComplianceByConfigRules ::
      !( Maybe
           [ComplianceByConfigRule]
       ),
    _dcbcrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeComplianceByConfigRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbcrrrsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'dcbcrrrsComplianceByConfigRules' - Indicates whether each of the specified AWS Config rules is compliant.
--
-- * 'dcbcrrrsResponseStatus' - -- | The response status code.
describeComplianceByConfigRuleResponse ::
  -- | 'dcbcrrrsResponseStatus'
  Int ->
  DescribeComplianceByConfigRuleResponse
describeComplianceByConfigRuleResponse
  pResponseStatus_ =
    DescribeComplianceByConfigRuleResponse'
      { _dcbcrrrsNextToken =
          Nothing,
        _dcbcrrrsComplianceByConfigRules =
          Nothing,
        _dcbcrrrsResponseStatus =
          pResponseStatus_
      }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
dcbcrrrsNextToken :: Lens' DescribeComplianceByConfigRuleResponse (Maybe Text)
dcbcrrrsNextToken = lens _dcbcrrrsNextToken (\s a -> s {_dcbcrrrsNextToken = a})

-- | Indicates whether each of the specified AWS Config rules is compliant.
dcbcrrrsComplianceByConfigRules :: Lens' DescribeComplianceByConfigRuleResponse [ComplianceByConfigRule]
dcbcrrrsComplianceByConfigRules = lens _dcbcrrrsComplianceByConfigRules (\s a -> s {_dcbcrrrsComplianceByConfigRules = a}) . _Default . _Coerce

-- | -- | The response status code.
dcbcrrrsResponseStatus :: Lens' DescribeComplianceByConfigRuleResponse Int
dcbcrrrsResponseStatus = lens _dcbcrrrsResponseStatus (\s a -> s {_dcbcrrrsResponseStatus = a})

instance
  NFData
    DescribeComplianceByConfigRuleResponse
