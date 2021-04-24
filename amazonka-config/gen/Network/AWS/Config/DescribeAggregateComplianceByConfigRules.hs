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
-- Module      : Network.AWS.Config.DescribeAggregateComplianceByConfigRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeAggregateComplianceByConfigRules
  ( -- * Creating a Request
    describeAggregateComplianceByConfigRules,
    DescribeAggregateComplianceByConfigRules,

    -- * Request Lenses
    dacbcrNextToken,
    dacbcrFilters,
    dacbcrLimit,
    dacbcrConfigurationAggregatorName,

    -- * Destructuring the Response
    describeAggregateComplianceByConfigRulesResponse,
    DescribeAggregateComplianceByConfigRulesResponse,

    -- * Response Lenses
    dacbcrrrsNextToken,
    dacbcrrrsAggregateComplianceByConfigRules,
    dacbcrrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAggregateComplianceByConfigRules' smart constructor.
data DescribeAggregateComplianceByConfigRules = DescribeAggregateComplianceByConfigRules'
  { _dacbcrNextToken ::
      !( Maybe
           Text
       ),
    _dacbcrFilters ::
      !( Maybe
           ConfigRuleComplianceFilters
       ),
    _dacbcrLimit ::
      !( Maybe
           Nat
       ),
    _dacbcrConfigurationAggregatorName ::
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

-- | Creates a value of 'DescribeAggregateComplianceByConfigRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dacbcrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dacbcrFilters' - Filters the results by ConfigRuleComplianceFilters object.
--
-- * 'dacbcrLimit' - The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
--
-- * 'dacbcrConfigurationAggregatorName' - The name of the configuration aggregator.
describeAggregateComplianceByConfigRules ::
  -- | 'dacbcrConfigurationAggregatorName'
  Text ->
  DescribeAggregateComplianceByConfigRules
describeAggregateComplianceByConfigRules
  pConfigurationAggregatorName_ =
    DescribeAggregateComplianceByConfigRules'
      { _dacbcrNextToken =
          Nothing,
        _dacbcrFilters = Nothing,
        _dacbcrLimit = Nothing,
        _dacbcrConfigurationAggregatorName =
          pConfigurationAggregatorName_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dacbcrNextToken :: Lens' DescribeAggregateComplianceByConfigRules (Maybe Text)
dacbcrNextToken = lens _dacbcrNextToken (\s a -> s {_dacbcrNextToken = a})

-- | Filters the results by ConfigRuleComplianceFilters object.
dacbcrFilters :: Lens' DescribeAggregateComplianceByConfigRules (Maybe ConfigRuleComplianceFilters)
dacbcrFilters = lens _dacbcrFilters (\s a -> s {_dacbcrFilters = a})

-- | The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
dacbcrLimit :: Lens' DescribeAggregateComplianceByConfigRules (Maybe Natural)
dacbcrLimit = lens _dacbcrLimit (\s a -> s {_dacbcrLimit = a}) . mapping _Nat

-- | The name of the configuration aggregator.
dacbcrConfigurationAggregatorName :: Lens' DescribeAggregateComplianceByConfigRules Text
dacbcrConfigurationAggregatorName = lens _dacbcrConfigurationAggregatorName (\s a -> s {_dacbcrConfigurationAggregatorName = a})

instance
  AWSPager
    DescribeAggregateComplianceByConfigRules
  where
  page rq rs
    | stop (rs ^. dacbcrrrsNextToken) = Nothing
    | stop
        (rs ^. dacbcrrrsAggregateComplianceByConfigRules) =
      Nothing
    | otherwise =
      Just $
        rq
          & dacbcrNextToken .~ rs ^. dacbcrrrsNextToken

instance
  AWSRequest
    DescribeAggregateComplianceByConfigRules
  where
  type
    Rs DescribeAggregateComplianceByConfigRules =
      DescribeAggregateComplianceByConfigRulesResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeAggregateComplianceByConfigRulesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AggregateComplianceByConfigRules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeAggregateComplianceByConfigRules

instance
  NFData
    DescribeAggregateComplianceByConfigRules

instance
  ToHeaders
    DescribeAggregateComplianceByConfigRules
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeAggregateComplianceByConfigRules" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeAggregateComplianceByConfigRules
  where
  toJSON DescribeAggregateComplianceByConfigRules' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dacbcrNextToken,
            ("Filters" .=) <$> _dacbcrFilters,
            ("Limit" .=) <$> _dacbcrLimit,
            Just
              ( "ConfigurationAggregatorName"
                  .= _dacbcrConfigurationAggregatorName
              )
          ]
      )

instance
  ToPath
    DescribeAggregateComplianceByConfigRules
  where
  toPath = const "/"

instance
  ToQuery
    DescribeAggregateComplianceByConfigRules
  where
  toQuery = const mempty

-- | /See:/ 'describeAggregateComplianceByConfigRulesResponse' smart constructor.
data DescribeAggregateComplianceByConfigRulesResponse = DescribeAggregateComplianceByConfigRulesResponse'
  { _dacbcrrrsNextToken ::
      !( Maybe
           Text
       ),
    _dacbcrrrsAggregateComplianceByConfigRules ::
      !( Maybe
           [AggregateComplianceByConfigRule]
       ),
    _dacbcrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAggregateComplianceByConfigRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dacbcrrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dacbcrrrsAggregateComplianceByConfigRules' - Returns a list of AggregateComplianceByConfigRule object.
--
-- * 'dacbcrrrsResponseStatus' - -- | The response status code.
describeAggregateComplianceByConfigRulesResponse ::
  -- | 'dacbcrrrsResponseStatus'
  Int ->
  DescribeAggregateComplianceByConfigRulesResponse
describeAggregateComplianceByConfigRulesResponse
  pResponseStatus_ =
    DescribeAggregateComplianceByConfigRulesResponse'
      { _dacbcrrrsNextToken =
          Nothing,
        _dacbcrrrsAggregateComplianceByConfigRules =
          Nothing,
        _dacbcrrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dacbcrrrsNextToken :: Lens' DescribeAggregateComplianceByConfigRulesResponse (Maybe Text)
dacbcrrrsNextToken = lens _dacbcrrrsNextToken (\s a -> s {_dacbcrrrsNextToken = a})

-- | Returns a list of AggregateComplianceByConfigRule object.
dacbcrrrsAggregateComplianceByConfigRules :: Lens' DescribeAggregateComplianceByConfigRulesResponse [AggregateComplianceByConfigRule]
dacbcrrrsAggregateComplianceByConfigRules = lens _dacbcrrrsAggregateComplianceByConfigRules (\s a -> s {_dacbcrrrsAggregateComplianceByConfigRules = a}) . _Default . _Coerce

-- | -- | The response status code.
dacbcrrrsResponseStatus :: Lens' DescribeAggregateComplianceByConfigRulesResponse Int
dacbcrrrsResponseStatus = lens _dacbcrrrsResponseStatus (\s a -> s {_dacbcrrrsResponseStatus = a})

instance
  NFData
    DescribeAggregateComplianceByConfigRulesResponse
