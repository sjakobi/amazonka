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
-- Module      : Network.AWS.Config.GetAggregateConfigRuleComplianceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
module Network.AWS.Config.GetAggregateConfigRuleComplianceSummary
  ( -- * Creating a Request
    getAggregateConfigRuleComplianceSummary,
    GetAggregateConfigRuleComplianceSummary,

    -- * Request Lenses
    gacrcsNextToken,
    gacrcsFilters,
    gacrcsGroupByKey,
    gacrcsLimit,
    gacrcsConfigurationAggregatorName,

    -- * Destructuring the Response
    getAggregateConfigRuleComplianceSummaryResponse,
    GetAggregateConfigRuleComplianceSummaryResponse,

    -- * Response Lenses
    gacrcsrrsNextToken,
    gacrcsrrsAggregateComplianceCounts,
    gacrcsrrsGroupByKey,
    gacrcsrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAggregateConfigRuleComplianceSummary' smart constructor.
data GetAggregateConfigRuleComplianceSummary = GetAggregateConfigRuleComplianceSummary'
  { _gacrcsNextToken ::
      !( Maybe
           Text
       ),
    _gacrcsFilters ::
      !( Maybe
           ConfigRuleComplianceSummaryFilters
       ),
    _gacrcsGroupByKey ::
      !( Maybe
           ConfigRuleComplianceSummaryGroupKey
       ),
    _gacrcsLimit ::
      !( Maybe
           Nat
       ),
    _gacrcsConfigurationAggregatorName ::
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

-- | Creates a value of 'GetAggregateConfigRuleComplianceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacrcsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gacrcsFilters' - Filters the results based on the ConfigRuleComplianceSummaryFilters object.
--
-- * 'gacrcsGroupByKey' - Groups the result based on ACCOUNT_ID or AWS_REGION.
--
-- * 'gacrcsLimit' - The maximum number of evaluation results returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.
--
-- * 'gacrcsConfigurationAggregatorName' - The name of the configuration aggregator.
getAggregateConfigRuleComplianceSummary ::
  -- | 'gacrcsConfigurationAggregatorName'
  Text ->
  GetAggregateConfigRuleComplianceSummary
getAggregateConfigRuleComplianceSummary
  pConfigurationAggregatorName_ =
    GetAggregateConfigRuleComplianceSummary'
      { _gacrcsNextToken =
          Nothing,
        _gacrcsFilters = Nothing,
        _gacrcsGroupByKey = Nothing,
        _gacrcsLimit = Nothing,
        _gacrcsConfigurationAggregatorName =
          pConfigurationAggregatorName_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gacrcsNextToken :: Lens' GetAggregateConfigRuleComplianceSummary (Maybe Text)
gacrcsNextToken = lens _gacrcsNextToken (\s a -> s {_gacrcsNextToken = a})

-- | Filters the results based on the ConfigRuleComplianceSummaryFilters object.
gacrcsFilters :: Lens' GetAggregateConfigRuleComplianceSummary (Maybe ConfigRuleComplianceSummaryFilters)
gacrcsFilters = lens _gacrcsFilters (\s a -> s {_gacrcsFilters = a})

-- | Groups the result based on ACCOUNT_ID or AWS_REGION.
gacrcsGroupByKey :: Lens' GetAggregateConfigRuleComplianceSummary (Maybe ConfigRuleComplianceSummaryGroupKey)
gacrcsGroupByKey = lens _gacrcsGroupByKey (\s a -> s {_gacrcsGroupByKey = a})

-- | The maximum number of evaluation results returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.
gacrcsLimit :: Lens' GetAggregateConfigRuleComplianceSummary (Maybe Natural)
gacrcsLimit = lens _gacrcsLimit (\s a -> s {_gacrcsLimit = a}) . mapping _Nat

-- | The name of the configuration aggregator.
gacrcsConfigurationAggregatorName :: Lens' GetAggregateConfigRuleComplianceSummary Text
gacrcsConfigurationAggregatorName = lens _gacrcsConfigurationAggregatorName (\s a -> s {_gacrcsConfigurationAggregatorName = a})

instance
  AWSRequest
    GetAggregateConfigRuleComplianceSummary
  where
  type
    Rs GetAggregateConfigRuleComplianceSummary =
      GetAggregateConfigRuleComplianceSummaryResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetAggregateConfigRuleComplianceSummaryResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AggregateComplianceCounts" .!@ mempty)
            <*> (x .?> "GroupByKey")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetAggregateConfigRuleComplianceSummary

instance
  NFData
    GetAggregateConfigRuleComplianceSummary

instance
  ToHeaders
    GetAggregateConfigRuleComplianceSummary
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetAggregateConfigRuleComplianceSummary" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    GetAggregateConfigRuleComplianceSummary
  where
  toJSON GetAggregateConfigRuleComplianceSummary' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gacrcsNextToken,
            ("Filters" .=) <$> _gacrcsFilters,
            ("GroupByKey" .=) <$> _gacrcsGroupByKey,
            ("Limit" .=) <$> _gacrcsLimit,
            Just
              ( "ConfigurationAggregatorName"
                  .= _gacrcsConfigurationAggregatorName
              )
          ]
      )

instance
  ToPath
    GetAggregateConfigRuleComplianceSummary
  where
  toPath = const "/"

instance
  ToQuery
    GetAggregateConfigRuleComplianceSummary
  where
  toQuery = const mempty

-- | /See:/ 'getAggregateConfigRuleComplianceSummaryResponse' smart constructor.
data GetAggregateConfigRuleComplianceSummaryResponse = GetAggregateConfigRuleComplianceSummaryResponse'
  { _gacrcsrrsNextToken ::
      !( Maybe
           Text
       ),
    _gacrcsrrsAggregateComplianceCounts ::
      !( Maybe
           [AggregateComplianceCount]
       ),
    _gacrcsrrsGroupByKey ::
      !( Maybe
           Text
       ),
    _gacrcsrrsResponseStatus ::
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

-- | Creates a value of 'GetAggregateConfigRuleComplianceSummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacrcsrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gacrcsrrsAggregateComplianceCounts' - Returns a list of AggregateComplianceCounts object.
--
-- * 'gacrcsrrsGroupByKey' - Groups the result based on ACCOUNT_ID or AWS_REGION.
--
-- * 'gacrcsrrsResponseStatus' - -- | The response status code.
getAggregateConfigRuleComplianceSummaryResponse ::
  -- | 'gacrcsrrsResponseStatus'
  Int ->
  GetAggregateConfigRuleComplianceSummaryResponse
getAggregateConfigRuleComplianceSummaryResponse
  pResponseStatus_ =
    GetAggregateConfigRuleComplianceSummaryResponse'
      { _gacrcsrrsNextToken =
          Nothing,
        _gacrcsrrsAggregateComplianceCounts =
          Nothing,
        _gacrcsrrsGroupByKey =
          Nothing,
        _gacrcsrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gacrcsrrsNextToken :: Lens' GetAggregateConfigRuleComplianceSummaryResponse (Maybe Text)
gacrcsrrsNextToken = lens _gacrcsrrsNextToken (\s a -> s {_gacrcsrrsNextToken = a})

-- | Returns a list of AggregateComplianceCounts object.
gacrcsrrsAggregateComplianceCounts :: Lens' GetAggregateConfigRuleComplianceSummaryResponse [AggregateComplianceCount]
gacrcsrrsAggregateComplianceCounts = lens _gacrcsrrsAggregateComplianceCounts (\s a -> s {_gacrcsrrsAggregateComplianceCounts = a}) . _Default . _Coerce

-- | Groups the result based on ACCOUNT_ID or AWS_REGION.
gacrcsrrsGroupByKey :: Lens' GetAggregateConfigRuleComplianceSummaryResponse (Maybe Text)
gacrcsrrsGroupByKey = lens _gacrcsrrsGroupByKey (\s a -> s {_gacrcsrrsGroupByKey = a})

-- | -- | The response status code.
gacrcsrrsResponseStatus :: Lens' GetAggregateConfigRuleComplianceSummaryResponse Int
gacrcsrrsResponseStatus = lens _gacrcsrrsResponseStatus (\s a -> s {_gacrcsrrsResponseStatus = a})

instance
  NFData
    GetAggregateConfigRuleComplianceSummaryResponse
