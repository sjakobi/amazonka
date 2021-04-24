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
-- Module      : Network.AWS.CostExplorer.GetCostAndUsageWithResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related metric, such as @BlendedCosts@ or @UsageQuantity@ , that you want the request to return. You can also filter and group your data by various dimensions, such as @SERVICE@ or @AZ@ , in a specific time range. For a complete list of valid dimensions, see the <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html GetDimensionValues> operation. Management account in an organization in AWS Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.
module Network.AWS.CostExplorer.GetCostAndUsageWithResources
  ( -- * Creating a Request
    getCostAndUsageWithResources,
    GetCostAndUsageWithResources,

    -- * Request Lenses
    gcauwrGranularity,
    gcauwrNextPageToken,
    gcauwrMetrics,
    gcauwrGroupBy,
    gcauwrTimePeriod,
    gcauwrFilter,

    -- * Destructuring the Response
    getCostAndUsageWithResourcesResponse,
    GetCostAndUsageWithResourcesResponse,

    -- * Response Lenses
    gcauwrrrsNextPageToken,
    gcauwrrrsResultsByTime,
    gcauwrrrsDimensionValueAttributes,
    gcauwrrrsGroupDefinitions,
    gcauwrrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCostAndUsageWithResources' smart constructor.
data GetCostAndUsageWithResources = GetCostAndUsageWithResources'
  { _gcauwrGranularity ::
      !( Maybe
           Granularity
       ),
    _gcauwrNextPageToken ::
      !(Maybe Text),
    _gcauwrMetrics ::
      !( Maybe
           [Text]
       ),
    _gcauwrGroupBy ::
      !( Maybe
           [GroupDefinition]
       ),
    _gcauwrTimePeriod ::
      !DateInterval,
    _gcauwrFilter ::
      !Expression
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCostAndUsageWithResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcauwrGranularity' - Sets the AWS cost granularity to @MONTHLY@ , @DAILY@ , or @HOURLY@ . If @Granularity@ isn't set, the response object doesn't include the @Granularity@ , @MONTHLY@ , @DAILY@ , or @HOURLY@ .
--
-- * 'gcauwrNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gcauwrMetrics' - Which metrics are returned in the query. For more information about blended and unblended rates, see <http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/ Why does the "blended" annotation appear on some line items in my bill?> .  Valid values are @AmortizedCost@ , @BlendedCost@ , @NetAmortizedCost@ , @NetUnblendedCost@ , @NormalizedUsageAmount@ , @UnblendedCost@ , and @UsageQuantity@ .  @Metrics@ is required for @GetCostAndUsageWithResources@ requests.
--
-- * 'gcauwrGroupBy' - You can group Amazon Web Services costs using up to two different groups: @DIMENSION@ , @TAG@ , @COST_CATEGORY@ .
--
-- * 'gcauwrTimePeriod' - Sets the start and end dates for retrieving Amazon Web Services costs. The range must be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
--
-- * 'gcauwrFilter' - Filters Amazon Web Services costs by different dimensions. For example, you can specify @SERVICE@ and @LINKED_ACCOUNT@ and get the costs that are associated with that account's usage of that service. You can nest @Expression@ objects to define any combination of dimension filters. For more information, see <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> .  The @GetCostAndUsageWithResources@ operation requires that you either group by or filter by a @ResourceId@ . It requires the <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> @"SERVICE = Amazon Elastic Compute Cloud - Compute"@ in the filter.
getCostAndUsageWithResources ::
  -- | 'gcauwrTimePeriod'
  DateInterval ->
  -- | 'gcauwrFilter'
  Expression ->
  GetCostAndUsageWithResources
getCostAndUsageWithResources pTimePeriod_ pFilter_ =
  GetCostAndUsageWithResources'
    { _gcauwrGranularity =
        Nothing,
      _gcauwrNextPageToken = Nothing,
      _gcauwrMetrics = Nothing,
      _gcauwrGroupBy = Nothing,
      _gcauwrTimePeriod = pTimePeriod_,
      _gcauwrFilter = pFilter_
    }

-- | Sets the AWS cost granularity to @MONTHLY@ , @DAILY@ , or @HOURLY@ . If @Granularity@ isn't set, the response object doesn't include the @Granularity@ , @MONTHLY@ , @DAILY@ , or @HOURLY@ .
gcauwrGranularity :: Lens' GetCostAndUsageWithResources (Maybe Granularity)
gcauwrGranularity = lens _gcauwrGranularity (\s a -> s {_gcauwrGranularity = a})

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gcauwrNextPageToken :: Lens' GetCostAndUsageWithResources (Maybe Text)
gcauwrNextPageToken = lens _gcauwrNextPageToken (\s a -> s {_gcauwrNextPageToken = a})

-- | Which metrics are returned in the query. For more information about blended and unblended rates, see <http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/ Why does the "blended" annotation appear on some line items in my bill?> .  Valid values are @AmortizedCost@ , @BlendedCost@ , @NetAmortizedCost@ , @NetUnblendedCost@ , @NormalizedUsageAmount@ , @UnblendedCost@ , and @UsageQuantity@ .  @Metrics@ is required for @GetCostAndUsageWithResources@ requests.
gcauwrMetrics :: Lens' GetCostAndUsageWithResources [Text]
gcauwrMetrics = lens _gcauwrMetrics (\s a -> s {_gcauwrMetrics = a}) . _Default . _Coerce

-- | You can group Amazon Web Services costs using up to two different groups: @DIMENSION@ , @TAG@ , @COST_CATEGORY@ .
gcauwrGroupBy :: Lens' GetCostAndUsageWithResources [GroupDefinition]
gcauwrGroupBy = lens _gcauwrGroupBy (\s a -> s {_gcauwrGroupBy = a}) . _Default . _Coerce

-- | Sets the start and end dates for retrieving Amazon Web Services costs. The range must be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
gcauwrTimePeriod :: Lens' GetCostAndUsageWithResources DateInterval
gcauwrTimePeriod = lens _gcauwrTimePeriod (\s a -> s {_gcauwrTimePeriod = a})

-- | Filters Amazon Web Services costs by different dimensions. For example, you can specify @SERVICE@ and @LINKED_ACCOUNT@ and get the costs that are associated with that account's usage of that service. You can nest @Expression@ objects to define any combination of dimension filters. For more information, see <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> .  The @GetCostAndUsageWithResources@ operation requires that you either group by or filter by a @ResourceId@ . It requires the <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> @"SERVICE = Amazon Elastic Compute Cloud - Compute"@ in the filter.
gcauwrFilter :: Lens' GetCostAndUsageWithResources Expression
gcauwrFilter = lens _gcauwrFilter (\s a -> s {_gcauwrFilter = a})

instance AWSRequest GetCostAndUsageWithResources where
  type
    Rs GetCostAndUsageWithResources =
      GetCostAndUsageWithResourcesResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetCostAndUsageWithResourcesResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "ResultsByTime" .!@ mempty)
            <*> (x .?> "DimensionValueAttributes" .!@ mempty)
            <*> (x .?> "GroupDefinitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCostAndUsageWithResources

instance NFData GetCostAndUsageWithResources

instance ToHeaders GetCostAndUsageWithResources where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetCostAndUsageWithResources" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCostAndUsageWithResources where
  toJSON GetCostAndUsageWithResources' {..} =
    object
      ( catMaybes
          [ ("Granularity" .=) <$> _gcauwrGranularity,
            ("NextPageToken" .=) <$> _gcauwrNextPageToken,
            ("Metrics" .=) <$> _gcauwrMetrics,
            ("GroupBy" .=) <$> _gcauwrGroupBy,
            Just ("TimePeriod" .= _gcauwrTimePeriod),
            Just ("Filter" .= _gcauwrFilter)
          ]
      )

instance ToPath GetCostAndUsageWithResources where
  toPath = const "/"

instance ToQuery GetCostAndUsageWithResources where
  toQuery = const mempty

-- | /See:/ 'getCostAndUsageWithResourcesResponse' smart constructor.
data GetCostAndUsageWithResourcesResponse = GetCostAndUsageWithResourcesResponse'
  { _gcauwrrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _gcauwrrrsResultsByTime ::
      !( Maybe
           [ResultByTime]
       ),
    _gcauwrrrsDimensionValueAttributes ::
      !( Maybe
           [DimensionValuesWithAttributes]
       ),
    _gcauwrrrsGroupDefinitions ::
      !( Maybe
           [GroupDefinition]
       ),
    _gcauwrrrsResponseStatus ::
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

-- | Creates a value of 'GetCostAndUsageWithResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcauwrrrsNextPageToken' - The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gcauwrrrsResultsByTime' - The time period that is covered by the results in the response.
--
-- * 'gcauwrrrsDimensionValueAttributes' - The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.
--
-- * 'gcauwrrrsGroupDefinitions' - The groups that are specified by the @Filter@ or @GroupBy@ parameters in the request.
--
-- * 'gcauwrrrsResponseStatus' - -- | The response status code.
getCostAndUsageWithResourcesResponse ::
  -- | 'gcauwrrrsResponseStatus'
  Int ->
  GetCostAndUsageWithResourcesResponse
getCostAndUsageWithResourcesResponse pResponseStatus_ =
  GetCostAndUsageWithResourcesResponse'
    { _gcauwrrrsNextPageToken =
        Nothing,
      _gcauwrrrsResultsByTime = Nothing,
      _gcauwrrrsDimensionValueAttributes =
        Nothing,
      _gcauwrrrsGroupDefinitions = Nothing,
      _gcauwrrrsResponseStatus =
        pResponseStatus_
    }

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gcauwrrrsNextPageToken :: Lens' GetCostAndUsageWithResourcesResponse (Maybe Text)
gcauwrrrsNextPageToken = lens _gcauwrrrsNextPageToken (\s a -> s {_gcauwrrrsNextPageToken = a})

-- | The time period that is covered by the results in the response.
gcauwrrrsResultsByTime :: Lens' GetCostAndUsageWithResourcesResponse [ResultByTime]
gcauwrrrsResultsByTime = lens _gcauwrrrsResultsByTime (\s a -> s {_gcauwrrrsResultsByTime = a}) . _Default . _Coerce

-- | The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.
gcauwrrrsDimensionValueAttributes :: Lens' GetCostAndUsageWithResourcesResponse [DimensionValuesWithAttributes]
gcauwrrrsDimensionValueAttributes = lens _gcauwrrrsDimensionValueAttributes (\s a -> s {_gcauwrrrsDimensionValueAttributes = a}) . _Default . _Coerce

-- | The groups that are specified by the @Filter@ or @GroupBy@ parameters in the request.
gcauwrrrsGroupDefinitions :: Lens' GetCostAndUsageWithResourcesResponse [GroupDefinition]
gcauwrrrsGroupDefinitions = lens _gcauwrrrsGroupDefinitions (\s a -> s {_gcauwrrrsGroupDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
gcauwrrrsResponseStatus :: Lens' GetCostAndUsageWithResourcesResponse Int
gcauwrrrsResponseStatus = lens _gcauwrrrsResponseStatus (\s a -> s {_gcauwrrrsResponseStatus = a})

instance NFData GetCostAndUsageWithResourcesResponse
