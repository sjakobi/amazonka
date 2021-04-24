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
-- Module      : Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the evaluation results for the specified AWS Config rule for a specific resource in a rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule
  ( -- * Creating a Request
    getAggregateComplianceDetailsByConfigRule,
    GetAggregateComplianceDetailsByConfigRule,

    -- * Request Lenses
    gacdbcrNextToken,
    gacdbcrComplianceType,
    gacdbcrLimit,
    gacdbcrConfigurationAggregatorName,
    gacdbcrConfigRuleName,
    gacdbcrAccountId,
    gacdbcrAWSRegion,

    -- * Destructuring the Response
    getAggregateComplianceDetailsByConfigRuleResponse,
    GetAggregateComplianceDetailsByConfigRuleResponse,

    -- * Response Lenses
    gacdbcrrrsNextToken,
    gacdbcrrrsAggregateEvaluationResults,
    gacdbcrrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAggregateComplianceDetailsByConfigRule' smart constructor.
data GetAggregateComplianceDetailsByConfigRule = GetAggregateComplianceDetailsByConfigRule'
  { _gacdbcrNextToken ::
      !( Maybe
           Text
       ),
    _gacdbcrComplianceType ::
      !( Maybe
           ComplianceType
       ),
    _gacdbcrLimit ::
      !( Maybe
           Nat
       ),
    _gacdbcrConfigurationAggregatorName ::
      !Text,
    _gacdbcrConfigRuleName ::
      !Text,
    _gacdbcrAccountId ::
      !Text,
    _gacdbcrAWSRegion ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAggregateComplianceDetailsByConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdbcrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gacdbcrComplianceType' - The resource compliance status.
--
-- * 'gacdbcrLimit' - The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
--
-- * 'gacdbcrConfigurationAggregatorName' - The name of the configuration aggregator.
--
-- * 'gacdbcrConfigRuleName' - The name of the AWS Config rule for which you want compliance information.
--
-- * 'gacdbcrAccountId' - The 12-digit account ID of the source account.
--
-- * 'gacdbcrAWSRegion' - The source region from where the data is aggregated.
getAggregateComplianceDetailsByConfigRule ::
  -- | 'gacdbcrConfigurationAggregatorName'
  Text ->
  -- | 'gacdbcrConfigRuleName'
  Text ->
  -- | 'gacdbcrAccountId'
  Text ->
  -- | 'gacdbcrAWSRegion'
  Text ->
  GetAggregateComplianceDetailsByConfigRule
getAggregateComplianceDetailsByConfigRule
  pConfigurationAggregatorName_
  pConfigRuleName_
  pAccountId_
  pAWSRegion_ =
    GetAggregateComplianceDetailsByConfigRule'
      { _gacdbcrNextToken =
          Nothing,
        _gacdbcrComplianceType = Nothing,
        _gacdbcrLimit = Nothing,
        _gacdbcrConfigurationAggregatorName =
          pConfigurationAggregatorName_,
        _gacdbcrConfigRuleName =
          pConfigRuleName_,
        _gacdbcrAccountId = pAccountId_,
        _gacdbcrAWSRegion = pAWSRegion_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gacdbcrNextToken :: Lens' GetAggregateComplianceDetailsByConfigRule (Maybe Text)
gacdbcrNextToken = lens _gacdbcrNextToken (\s a -> s {_gacdbcrNextToken = a})

-- | The resource compliance status.
gacdbcrComplianceType :: Lens' GetAggregateComplianceDetailsByConfigRule (Maybe ComplianceType)
gacdbcrComplianceType = lens _gacdbcrComplianceType (\s a -> s {_gacdbcrComplianceType = a})

-- | The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
gacdbcrLimit :: Lens' GetAggregateComplianceDetailsByConfigRule (Maybe Natural)
gacdbcrLimit = lens _gacdbcrLimit (\s a -> s {_gacdbcrLimit = a}) . mapping _Nat

-- | The name of the configuration aggregator.
gacdbcrConfigurationAggregatorName :: Lens' GetAggregateComplianceDetailsByConfigRule Text
gacdbcrConfigurationAggregatorName = lens _gacdbcrConfigurationAggregatorName (\s a -> s {_gacdbcrConfigurationAggregatorName = a})

-- | The name of the AWS Config rule for which you want compliance information.
gacdbcrConfigRuleName :: Lens' GetAggregateComplianceDetailsByConfigRule Text
gacdbcrConfigRuleName = lens _gacdbcrConfigRuleName (\s a -> s {_gacdbcrConfigRuleName = a})

-- | The 12-digit account ID of the source account.
gacdbcrAccountId :: Lens' GetAggregateComplianceDetailsByConfigRule Text
gacdbcrAccountId = lens _gacdbcrAccountId (\s a -> s {_gacdbcrAccountId = a})

-- | The source region from where the data is aggregated.
gacdbcrAWSRegion :: Lens' GetAggregateComplianceDetailsByConfigRule Text
gacdbcrAWSRegion = lens _gacdbcrAWSRegion (\s a -> s {_gacdbcrAWSRegion = a})

instance
  AWSPager
    GetAggregateComplianceDetailsByConfigRule
  where
  page rq rs
    | stop (rs ^. gacdbcrrrsNextToken) = Nothing
    | stop (rs ^. gacdbcrrrsAggregateEvaluationResults) =
      Nothing
    | otherwise =
      Just $
        rq
          & gacdbcrNextToken .~ rs ^. gacdbcrrrsNextToken

instance
  AWSRequest
    GetAggregateComplianceDetailsByConfigRule
  where
  type
    Rs GetAggregateComplianceDetailsByConfigRule =
      GetAggregateComplianceDetailsByConfigRuleResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetAggregateComplianceDetailsByConfigRuleResponse'
            <$> (x .?> "NextToken")
              <*> (x .?> "AggregateEvaluationResults" .!@ mempty)
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetAggregateComplianceDetailsByConfigRule

instance
  NFData
    GetAggregateComplianceDetailsByConfigRule

instance
  ToHeaders
    GetAggregateComplianceDetailsByConfigRule
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetAggregateComplianceDetailsByConfigRule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    GetAggregateComplianceDetailsByConfigRule
  where
  toJSON GetAggregateComplianceDetailsByConfigRule' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gacdbcrNextToken,
            ("ComplianceType" .=) <$> _gacdbcrComplianceType,
            ("Limit" .=) <$> _gacdbcrLimit,
            Just
              ( "ConfigurationAggregatorName"
                  .= _gacdbcrConfigurationAggregatorName
              ),
            Just ("ConfigRuleName" .= _gacdbcrConfigRuleName),
            Just ("AccountId" .= _gacdbcrAccountId),
            Just ("AwsRegion" .= _gacdbcrAWSRegion)
          ]
      )

instance
  ToPath
    GetAggregateComplianceDetailsByConfigRule
  where
  toPath = const "/"

instance
  ToQuery
    GetAggregateComplianceDetailsByConfigRule
  where
  toQuery = const mempty

-- | /See:/ 'getAggregateComplianceDetailsByConfigRuleResponse' smart constructor.
data GetAggregateComplianceDetailsByConfigRuleResponse = GetAggregateComplianceDetailsByConfigRuleResponse'
  { _gacdbcrrrsNextToken ::
      !( Maybe
           Text
       ),
    _gacdbcrrrsAggregateEvaluationResults ::
      !( Maybe
           [AggregateEvaluationResult]
       ),
    _gacdbcrrrsResponseStatus ::
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

-- | Creates a value of 'GetAggregateComplianceDetailsByConfigRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdbcrrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gacdbcrrrsAggregateEvaluationResults' - Returns an AggregateEvaluationResults object.
--
-- * 'gacdbcrrrsResponseStatus' - -- | The response status code.
getAggregateComplianceDetailsByConfigRuleResponse ::
  -- | 'gacdbcrrrsResponseStatus'
  Int ->
  GetAggregateComplianceDetailsByConfigRuleResponse
getAggregateComplianceDetailsByConfigRuleResponse
  pResponseStatus_ =
    GetAggregateComplianceDetailsByConfigRuleResponse'
      { _gacdbcrrrsNextToken =
          Nothing,
        _gacdbcrrrsAggregateEvaluationResults =
          Nothing,
        _gacdbcrrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gacdbcrrrsNextToken :: Lens' GetAggregateComplianceDetailsByConfigRuleResponse (Maybe Text)
gacdbcrrrsNextToken = lens _gacdbcrrrsNextToken (\s a -> s {_gacdbcrrrsNextToken = a})

-- | Returns an AggregateEvaluationResults object.
gacdbcrrrsAggregateEvaluationResults :: Lens' GetAggregateComplianceDetailsByConfigRuleResponse [AggregateEvaluationResult]
gacdbcrrrsAggregateEvaluationResults = lens _gacdbcrrrsAggregateEvaluationResults (\s a -> s {_gacdbcrrrsAggregateEvaluationResults = a}) . _Default . _Coerce

-- | -- | The response status code.
gacdbcrrrsResponseStatus :: Lens' GetAggregateComplianceDetailsByConfigRuleResponse Int
gacdbcrrrsResponseStatus = lens _gacdbcrrrsResponseStatus (\s a -> s {_gacdbcrrrsResponseStatus = a})

instance
  NFData
    GetAggregateComplianceDetailsByConfigRuleResponse
