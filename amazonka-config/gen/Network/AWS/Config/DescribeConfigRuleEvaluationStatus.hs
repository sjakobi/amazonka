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
-- Module      : Network.AWS.Config.DescribeConfigRuleEvaluationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeConfigRuleEvaluationStatus
  ( -- * Creating a Request
    describeConfigRuleEvaluationStatus,
    DescribeConfigRuleEvaluationStatus,

    -- * Request Lenses
    dcresNextToken,
    dcresConfigRuleNames,
    dcresLimit,

    -- * Destructuring the Response
    describeConfigRuleEvaluationStatusResponse,
    DescribeConfigRuleEvaluationStatusResponse,

    -- * Response Lenses
    dcresrrsNextToken,
    dcresrrsConfigRulesEvaluationStatus,
    dcresrrsResponseStatus,
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
-- /See:/ 'describeConfigRuleEvaluationStatus' smart constructor.
data DescribeConfigRuleEvaluationStatus = DescribeConfigRuleEvaluationStatus'
  { _dcresNextToken ::
      !( Maybe
           Text
       ),
    _dcresConfigRuleNames ::
      !( Maybe
           [Text]
       ),
    _dcresLimit ::
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

-- | Creates a value of 'DescribeConfigRuleEvaluationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcresNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcresConfigRuleNames' - The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.
--
-- * 'dcresLimit' - The number of rule evaluation results that you want returned. This parameter is required if the rule limit for your account is more than the default of 150 rules. For information about requesting a rule limit increase, see <http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config AWS Config Limits> in the /AWS General Reference Guide/ .
describeConfigRuleEvaluationStatus ::
  DescribeConfigRuleEvaluationStatus
describeConfigRuleEvaluationStatus =
  DescribeConfigRuleEvaluationStatus'
    { _dcresNextToken =
        Nothing,
      _dcresConfigRuleNames = Nothing,
      _dcresLimit = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcresNextToken :: Lens' DescribeConfigRuleEvaluationStatus (Maybe Text)
dcresNextToken = lens _dcresNextToken (\s a -> s {_dcresNextToken = a})

-- | The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.
dcresConfigRuleNames :: Lens' DescribeConfigRuleEvaluationStatus [Text]
dcresConfigRuleNames = lens _dcresConfigRuleNames (\s a -> s {_dcresConfigRuleNames = a}) . _Default . _Coerce

-- | The number of rule evaluation results that you want returned. This parameter is required if the rule limit for your account is more than the default of 150 rules. For information about requesting a rule limit increase, see <http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config AWS Config Limits> in the /AWS General Reference Guide/ .
dcresLimit :: Lens' DescribeConfigRuleEvaluationStatus (Maybe Natural)
dcresLimit = lens _dcresLimit (\s a -> s {_dcresLimit = a}) . mapping _Nat

instance AWSPager DescribeConfigRuleEvaluationStatus where
  page rq rs
    | stop (rs ^. dcresrrsNextToken) = Nothing
    | stop (rs ^. dcresrrsConfigRulesEvaluationStatus) =
      Nothing
    | otherwise =
      Just $ rq & dcresNextToken .~ rs ^. dcresrrsNextToken

instance
  AWSRequest
    DescribeConfigRuleEvaluationStatus
  where
  type
    Rs DescribeConfigRuleEvaluationStatus =
      DescribeConfigRuleEvaluationStatusResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeConfigRuleEvaluationStatusResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ConfigRulesEvaluationStatus" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConfigRuleEvaluationStatus

instance NFData DescribeConfigRuleEvaluationStatus

instance ToHeaders DescribeConfigRuleEvaluationStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeConfigRuleEvaluationStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConfigRuleEvaluationStatus where
  toJSON DescribeConfigRuleEvaluationStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcresNextToken,
            ("ConfigRuleNames" .=) <$> _dcresConfigRuleNames,
            ("Limit" .=) <$> _dcresLimit
          ]
      )

instance ToPath DescribeConfigRuleEvaluationStatus where
  toPath = const "/"

instance ToQuery DescribeConfigRuleEvaluationStatus where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeConfigRuleEvaluationStatusResponse' smart constructor.
data DescribeConfigRuleEvaluationStatusResponse = DescribeConfigRuleEvaluationStatusResponse'
  { _dcresrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcresrrsConfigRulesEvaluationStatus ::
      !( Maybe
           [ConfigRuleEvaluationStatus]
       ),
    _dcresrrsResponseStatus ::
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

-- | Creates a value of 'DescribeConfigRuleEvaluationStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcresrrsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'dcresrrsConfigRulesEvaluationStatus' - Status information about your AWS managed Config rules.
--
-- * 'dcresrrsResponseStatus' - -- | The response status code.
describeConfigRuleEvaluationStatusResponse ::
  -- | 'dcresrrsResponseStatus'
  Int ->
  DescribeConfigRuleEvaluationStatusResponse
describeConfigRuleEvaluationStatusResponse
  pResponseStatus_ =
    DescribeConfigRuleEvaluationStatusResponse'
      { _dcresrrsNextToken =
          Nothing,
        _dcresrrsConfigRulesEvaluationStatus =
          Nothing,
        _dcresrrsResponseStatus =
          pResponseStatus_
      }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
dcresrrsNextToken :: Lens' DescribeConfigRuleEvaluationStatusResponse (Maybe Text)
dcresrrsNextToken = lens _dcresrrsNextToken (\s a -> s {_dcresrrsNextToken = a})

-- | Status information about your AWS managed Config rules.
dcresrrsConfigRulesEvaluationStatus :: Lens' DescribeConfigRuleEvaluationStatusResponse [ConfigRuleEvaluationStatus]
dcresrrsConfigRulesEvaluationStatus = lens _dcresrrsConfigRulesEvaluationStatus (\s a -> s {_dcresrrsConfigRulesEvaluationStatus = a}) . _Default . _Coerce

-- | -- | The response status code.
dcresrrsResponseStatus :: Lens' DescribeConfigRuleEvaluationStatusResponse Int
dcresrrsResponseStatus = lens _dcresrrsResponseStatus (\s a -> s {_dcresrrsResponseStatus = a})

instance
  NFData
    DescribeConfigRuleEvaluationStatusResponse
