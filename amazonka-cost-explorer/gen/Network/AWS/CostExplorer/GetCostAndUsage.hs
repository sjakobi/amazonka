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
-- Module      : Network.AWS.CostExplorer.GetCostAndUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as @BlendedCosts@ or @UsageQuantity@ , that you want the request to return. You can also filter and group your data by various dimensions, such as @SERVICE@ or @AZ@ , in a specific time range. For a complete list of valid dimensions, see the <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html GetDimensionValues> operation. Management account in an organization in AWS Organizations have access to all member accounts.
--
--
-- For information about filter limitations, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html Quotas and restrictions> in the /Billing and Cost Management User Guide/ .
module Network.AWS.CostExplorer.GetCostAndUsage
  ( -- * Creating a Request
    getCostAndUsage,
    GetCostAndUsage,

    -- * Request Lenses
    gcauGranularity,
    gcauNextPageToken,
    gcauGroupBy,
    gcauFilter,
    gcauTimePeriod,
    gcauMetrics,

    -- * Destructuring the Response
    getCostAndUsageResponse,
    GetCostAndUsageResponse,

    -- * Response Lenses
    gcaurrsNextPageToken,
    gcaurrsResultsByTime,
    gcaurrsDimensionValueAttributes,
    gcaurrsGroupDefinitions,
    gcaurrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCostAndUsage' smart constructor.
data GetCostAndUsage = GetCostAndUsage'
  { _gcauGranularity ::
      !(Maybe Granularity),
    _gcauNextPageToken :: !(Maybe Text),
    _gcauGroupBy ::
      !(Maybe [GroupDefinition]),
    _gcauFilter :: !(Maybe Expression),
    _gcauTimePeriod :: !DateInterval,
    _gcauMetrics :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCostAndUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcauGranularity' - Sets the AWS cost granularity to @MONTHLY@ or @DAILY@ , or @HOURLY@ . If @Granularity@ isn't set, the response object doesn't include the @Granularity@ , either @MONTHLY@ or @DAILY@ , or @HOURLY@ .
--
-- * 'gcauNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gcauGroupBy' - You can group AWS costs using up to two different groups, either dimensions, tag keys, cost categories, or any two group by types. When you group by tag key, you get all tag values, including empty strings. Valid values are @AZ@ , @INSTANCE_TYPE@ , @LEGAL_ENTITY_NAME@ , @LINKED_ACCOUNT@ , @OPERATION@ , @PLATFORM@ , @PURCHASE_TYPE@ , @SERVICE@ , @TAGS@ , @TENANCY@ , @RECORD_TYPE@ , and @USAGE_TYPE@ .
--
-- * 'gcauFilter' - Filters AWS costs by different dimensions. For example, you can specify @SERVICE@ and @LINKED_ACCOUNT@ and get the costs that are associated with that account's usage of that service. You can nest @Expression@ objects to define any combination of dimension filters. For more information, see <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> .
--
-- * 'gcauTimePeriod' - Sets the start and end dates for retrieving AWS costs. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
--
-- * 'gcauMetrics' - Which metrics are returned in the query. For more information about blended and unblended rates, see <http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/ Why does the "blended" annotation appear on some line items in my bill?> .  Valid values are @AmortizedCost@ , @BlendedCost@ , @NetAmortizedCost@ , @NetUnblendedCost@ , @NormalizedUsageAmount@ , @UnblendedCost@ , and @UsageQuantity@ .  @Metrics@ is required for @GetCostAndUsage@ requests.
getCostAndUsage ::
  -- | 'gcauTimePeriod'
  DateInterval ->
  GetCostAndUsage
getCostAndUsage pTimePeriod_ =
  GetCostAndUsage'
    { _gcauGranularity = Nothing,
      _gcauNextPageToken = Nothing,
      _gcauGroupBy = Nothing,
      _gcauFilter = Nothing,
      _gcauTimePeriod = pTimePeriod_,
      _gcauMetrics = mempty
    }

-- | Sets the AWS cost granularity to @MONTHLY@ or @DAILY@ , or @HOURLY@ . If @Granularity@ isn't set, the response object doesn't include the @Granularity@ , either @MONTHLY@ or @DAILY@ , or @HOURLY@ .
gcauGranularity :: Lens' GetCostAndUsage (Maybe Granularity)
gcauGranularity = lens _gcauGranularity (\s a -> s {_gcauGranularity = a})

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gcauNextPageToken :: Lens' GetCostAndUsage (Maybe Text)
gcauNextPageToken = lens _gcauNextPageToken (\s a -> s {_gcauNextPageToken = a})

-- | You can group AWS costs using up to two different groups, either dimensions, tag keys, cost categories, or any two group by types. When you group by tag key, you get all tag values, including empty strings. Valid values are @AZ@ , @INSTANCE_TYPE@ , @LEGAL_ENTITY_NAME@ , @LINKED_ACCOUNT@ , @OPERATION@ , @PLATFORM@ , @PURCHASE_TYPE@ , @SERVICE@ , @TAGS@ , @TENANCY@ , @RECORD_TYPE@ , and @USAGE_TYPE@ .
gcauGroupBy :: Lens' GetCostAndUsage [GroupDefinition]
gcauGroupBy = lens _gcauGroupBy (\s a -> s {_gcauGroupBy = a}) . _Default . _Coerce

-- | Filters AWS costs by different dimensions. For example, you can specify @SERVICE@ and @LINKED_ACCOUNT@ and get the costs that are associated with that account's usage of that service. You can nest @Expression@ objects to define any combination of dimension filters. For more information, see <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> .
gcauFilter :: Lens' GetCostAndUsage (Maybe Expression)
gcauFilter = lens _gcauFilter (\s a -> s {_gcauFilter = a})

-- | Sets the start and end dates for retrieving AWS costs. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
gcauTimePeriod :: Lens' GetCostAndUsage DateInterval
gcauTimePeriod = lens _gcauTimePeriod (\s a -> s {_gcauTimePeriod = a})

-- | Which metrics are returned in the query. For more information about blended and unblended rates, see <http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/ Why does the "blended" annotation appear on some line items in my bill?> .  Valid values are @AmortizedCost@ , @BlendedCost@ , @NetAmortizedCost@ , @NetUnblendedCost@ , @NormalizedUsageAmount@ , @UnblendedCost@ , and @UsageQuantity@ .  @Metrics@ is required for @GetCostAndUsage@ requests.
gcauMetrics :: Lens' GetCostAndUsage [Text]
gcauMetrics = lens _gcauMetrics (\s a -> s {_gcauMetrics = a}) . _Coerce

instance AWSRequest GetCostAndUsage where
  type Rs GetCostAndUsage = GetCostAndUsageResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetCostAndUsageResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "ResultsByTime" .!@ mempty)
            <*> (x .?> "DimensionValueAttributes" .!@ mempty)
            <*> (x .?> "GroupDefinitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCostAndUsage

instance NFData GetCostAndUsage

instance ToHeaders GetCostAndUsage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetCostAndUsage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCostAndUsage where
  toJSON GetCostAndUsage' {..} =
    object
      ( catMaybes
          [ ("Granularity" .=) <$> _gcauGranularity,
            ("NextPageToken" .=) <$> _gcauNextPageToken,
            ("GroupBy" .=) <$> _gcauGroupBy,
            ("Filter" .=) <$> _gcauFilter,
            Just ("TimePeriod" .= _gcauTimePeriod),
            Just ("Metrics" .= _gcauMetrics)
          ]
      )

instance ToPath GetCostAndUsage where
  toPath = const "/"

instance ToQuery GetCostAndUsage where
  toQuery = const mempty

-- | /See:/ 'getCostAndUsageResponse' smart constructor.
data GetCostAndUsageResponse = GetCostAndUsageResponse'
  { _gcaurrsNextPageToken ::
      !(Maybe Text),
    _gcaurrsResultsByTime ::
      !(Maybe [ResultByTime]),
    _gcaurrsDimensionValueAttributes ::
      !( Maybe
           [DimensionValuesWithAttributes]
       ),
    _gcaurrsGroupDefinitions ::
      !( Maybe
           [GroupDefinition]
       ),
    _gcaurrsResponseStatus ::
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

-- | Creates a value of 'GetCostAndUsageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcaurrsNextPageToken' - The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gcaurrsResultsByTime' - The time period that is covered by the results in the response.
--
-- * 'gcaurrsDimensionValueAttributes' - The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.
--
-- * 'gcaurrsGroupDefinitions' - The groups that are specified by the @Filter@ or @GroupBy@ parameters in the request.
--
-- * 'gcaurrsResponseStatus' - -- | The response status code.
getCostAndUsageResponse ::
  -- | 'gcaurrsResponseStatus'
  Int ->
  GetCostAndUsageResponse
getCostAndUsageResponse pResponseStatus_ =
  GetCostAndUsageResponse'
    { _gcaurrsNextPageToken =
        Nothing,
      _gcaurrsResultsByTime = Nothing,
      _gcaurrsDimensionValueAttributes = Nothing,
      _gcaurrsGroupDefinitions = Nothing,
      _gcaurrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gcaurrsNextPageToken :: Lens' GetCostAndUsageResponse (Maybe Text)
gcaurrsNextPageToken = lens _gcaurrsNextPageToken (\s a -> s {_gcaurrsNextPageToken = a})

-- | The time period that is covered by the results in the response.
gcaurrsResultsByTime :: Lens' GetCostAndUsageResponse [ResultByTime]
gcaurrsResultsByTime = lens _gcaurrsResultsByTime (\s a -> s {_gcaurrsResultsByTime = a}) . _Default . _Coerce

-- | The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.
gcaurrsDimensionValueAttributes :: Lens' GetCostAndUsageResponse [DimensionValuesWithAttributes]
gcaurrsDimensionValueAttributes = lens _gcaurrsDimensionValueAttributes (\s a -> s {_gcaurrsDimensionValueAttributes = a}) . _Default . _Coerce

-- | The groups that are specified by the @Filter@ or @GroupBy@ parameters in the request.
gcaurrsGroupDefinitions :: Lens' GetCostAndUsageResponse [GroupDefinition]
gcaurrsGroupDefinitions = lens _gcaurrsGroupDefinitions (\s a -> s {_gcaurrsGroupDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
gcaurrsResponseStatus :: Lens' GetCostAndUsageResponse Int
gcaurrsResponseStatus = lens _gcaurrsResponseStatus (\s a -> s {_gcaurrsResponseStatus = a})

instance NFData GetCostAndUsageResponse
