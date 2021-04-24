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
-- Module      : Network.AWS.Config.GetComplianceDetailsByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.GetComplianceDetailsByConfigRule
  ( -- * Creating a Request
    getComplianceDetailsByConfigRule,
    GetComplianceDetailsByConfigRule,

    -- * Request Lenses
    gcdbcrNextToken,
    gcdbcrComplianceTypes,
    gcdbcrLimit,
    gcdbcrConfigRuleName,

    -- * Destructuring the Response
    getComplianceDetailsByConfigRuleResponse,
    GetComplianceDetailsByConfigRuleResponse,

    -- * Response Lenses
    gcdbcrrrsNextToken,
    gcdbcrrrsEvaluationResults,
    gcdbcrrrsResponseStatus,
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
-- /See:/ 'getComplianceDetailsByConfigRule' smart constructor.
data GetComplianceDetailsByConfigRule = GetComplianceDetailsByConfigRule'
  { _gcdbcrNextToken ::
      !( Maybe
           Text
       ),
    _gcdbcrComplianceTypes ::
      !( Maybe
           [ComplianceType]
       ),
    _gcdbcrLimit ::
      !( Maybe
           Nat
       ),
    _gcdbcrConfigRuleName ::
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

-- | Creates a value of 'GetComplianceDetailsByConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdbcrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gcdbcrComplianceTypes' - Filters the results by compliance. The allowed values are @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ .
--
-- * 'gcdbcrLimit' - The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
--
-- * 'gcdbcrConfigRuleName' - The name of the AWS Config rule for which you want compliance information.
getComplianceDetailsByConfigRule ::
  -- | 'gcdbcrConfigRuleName'
  Text ->
  GetComplianceDetailsByConfigRule
getComplianceDetailsByConfigRule pConfigRuleName_ =
  GetComplianceDetailsByConfigRule'
    { _gcdbcrNextToken =
        Nothing,
      _gcdbcrComplianceTypes = Nothing,
      _gcdbcrLimit = Nothing,
      _gcdbcrConfigRuleName = pConfigRuleName_
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gcdbcrNextToken :: Lens' GetComplianceDetailsByConfigRule (Maybe Text)
gcdbcrNextToken = lens _gcdbcrNextToken (\s a -> s {_gcdbcrNextToken = a})

-- | Filters the results by compliance. The allowed values are @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ .
gcdbcrComplianceTypes :: Lens' GetComplianceDetailsByConfigRule [ComplianceType]
gcdbcrComplianceTypes = lens _gcdbcrComplianceTypes (\s a -> s {_gcdbcrComplianceTypes = a}) . _Default . _Coerce

-- | The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
gcdbcrLimit :: Lens' GetComplianceDetailsByConfigRule (Maybe Natural)
gcdbcrLimit = lens _gcdbcrLimit (\s a -> s {_gcdbcrLimit = a}) . mapping _Nat

-- | The name of the AWS Config rule for which you want compliance information.
gcdbcrConfigRuleName :: Lens' GetComplianceDetailsByConfigRule Text
gcdbcrConfigRuleName = lens _gcdbcrConfigRuleName (\s a -> s {_gcdbcrConfigRuleName = a})

instance AWSPager GetComplianceDetailsByConfigRule where
  page rq rs
    | stop (rs ^. gcdbcrrrsNextToken) = Nothing
    | stop (rs ^. gcdbcrrrsEvaluationResults) = Nothing
    | otherwise =
      Just $
        rq
          & gcdbcrNextToken .~ rs ^. gcdbcrrrsNextToken

instance AWSRequest GetComplianceDetailsByConfigRule where
  type
    Rs GetComplianceDetailsByConfigRule =
      GetComplianceDetailsByConfigRuleResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetComplianceDetailsByConfigRuleResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EvaluationResults" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetComplianceDetailsByConfigRule

instance NFData GetComplianceDetailsByConfigRule

instance ToHeaders GetComplianceDetailsByConfigRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetComplianceDetailsByConfigRule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetComplianceDetailsByConfigRule where
  toJSON GetComplianceDetailsByConfigRule' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gcdbcrNextToken,
            ("ComplianceTypes" .=) <$> _gcdbcrComplianceTypes,
            ("Limit" .=) <$> _gcdbcrLimit,
            Just ("ConfigRuleName" .= _gcdbcrConfigRuleName)
          ]
      )

instance ToPath GetComplianceDetailsByConfigRule where
  toPath = const "/"

instance ToQuery GetComplianceDetailsByConfigRule where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'getComplianceDetailsByConfigRuleResponse' smart constructor.
data GetComplianceDetailsByConfigRuleResponse = GetComplianceDetailsByConfigRuleResponse'
  { _gcdbcrrrsNextToken ::
      !( Maybe
           Text
       ),
    _gcdbcrrrsEvaluationResults ::
      !( Maybe
           [EvaluationResult]
       ),
    _gcdbcrrrsResponseStatus ::
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

-- | Creates a value of 'GetComplianceDetailsByConfigRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdbcrrrsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'gcdbcrrrsEvaluationResults' - Indicates whether the AWS resource complies with the specified AWS Config rule.
--
-- * 'gcdbcrrrsResponseStatus' - -- | The response status code.
getComplianceDetailsByConfigRuleResponse ::
  -- | 'gcdbcrrrsResponseStatus'
  Int ->
  GetComplianceDetailsByConfigRuleResponse
getComplianceDetailsByConfigRuleResponse
  pResponseStatus_ =
    GetComplianceDetailsByConfigRuleResponse'
      { _gcdbcrrrsNextToken =
          Nothing,
        _gcdbcrrrsEvaluationResults =
          Nothing,
        _gcdbcrrrsResponseStatus =
          pResponseStatus_
      }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
gcdbcrrrsNextToken :: Lens' GetComplianceDetailsByConfigRuleResponse (Maybe Text)
gcdbcrrrsNextToken = lens _gcdbcrrrsNextToken (\s a -> s {_gcdbcrrrsNextToken = a})

-- | Indicates whether the AWS resource complies with the specified AWS Config rule.
gcdbcrrrsEvaluationResults :: Lens' GetComplianceDetailsByConfigRuleResponse [EvaluationResult]
gcdbcrrrsEvaluationResults = lens _gcdbcrrrsEvaluationResults (\s a -> s {_gcdbcrrrsEvaluationResults = a}) . _Default . _Coerce

-- | -- | The response status code.
gcdbcrrrsResponseStatus :: Lens' GetComplianceDetailsByConfigRuleResponse Int
gcdbcrrrsResponseStatus = lens _gcdbcrrrsResponseStatus (\s a -> s {_gcdbcrrrsResponseStatus = a})

instance
  NFData
    GetComplianceDetailsByConfigRuleResponse
