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
-- Module      : Network.AWS.CostExplorer.GetSavingsPlansCoverage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:
--
--
--     * @LINKED_ACCOUNT@
--
--     * @REGION@
--
--     * @SERVICE@
--
--     * @INSTANCE_FAMILY@
--
--
--
-- To determine valid values for a dimension, use the @GetDimensionValues@ operation.
module Network.AWS.CostExplorer.GetSavingsPlansCoverage
  ( -- * Creating a Request
    getSavingsPlansCoverage,
    GetSavingsPlansCoverage,

    -- * Request Lenses
    gspcNextToken,
    gspcGranularity,
    gspcMaxResults,
    gspcMetrics,
    gspcGroupBy,
    gspcSortBy,
    gspcFilter,
    gspcTimePeriod,

    -- * Destructuring the Response
    getSavingsPlansCoverageResponse,
    GetSavingsPlansCoverageResponse,

    -- * Response Lenses
    gspcrrsNextToken,
    gspcrrsResponseStatus,
    gspcrrsSavingsPlansCoverages,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSavingsPlansCoverage' smart constructor.
data GetSavingsPlansCoverage = GetSavingsPlansCoverage'
  { _gspcNextToken ::
      !(Maybe Text),
    _gspcGranularity ::
      !(Maybe Granularity),
    _gspcMaxResults ::
      !(Maybe Nat),
    _gspcMetrics ::
      !(Maybe [Text]),
    _gspcGroupBy ::
      !( Maybe
           [GroupDefinition]
       ),
    _gspcSortBy ::
      !(Maybe SortDefinition),
    _gspcFilter ::
      !(Maybe Expression),
    _gspcTimePeriod ::
      !DateInterval
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSavingsPlansCoverage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gspcNextToken' - The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gspcGranularity' - The granularity of the Amazon Web Services cost data for your Savings Plans. @Granularity@ can't be set if @GroupBy@ is set. The @GetSavingsPlansCoverage@ operation supports only @DAILY@ and @MONTHLY@ granularities.
--
-- * 'gspcMaxResults' - The number of items to be returned in a response. The default is @20@ , with a minimum value of @1@ .
--
-- * 'gspcMetrics' - The measurement that you want your Savings Plans coverage reported in. The only valid value is @SpendCoveredBySavingsPlans@ .
--
-- * 'gspcGroupBy' - You can group the data using the attributes @INSTANCE_FAMILY@ , @REGION@ , or @SERVICE@ .
--
-- * 'gspcSortBy' - The value by which you want to sort the data. The following values are supported for @Key@ :     * @SpendCoveredBySavingsPlan@      * @OnDemandCost@      * @CoveragePercentage@      * @TotalCost@      * @InstanceFamily@      * @Region@      * @Service@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
--
-- * 'gspcFilter' - Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans usage with the following dimensions:     * @LINKED_ACCOUNT@      * @REGION@      * @SERVICE@      * @INSTANCE_FAMILY@  @GetSavingsPlansCoverage@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension. If there are multiple values for a dimension, they are OR'd together. Cost category is also supported.
--
-- * 'gspcTimePeriod' - The time period that you want the usage and costs for. The @Start@ date must be within 13 months. The @End@ date must be after the @Start@ date, and before the current date. Future dates can't be used as an @End@ date.
getSavingsPlansCoverage ::
  -- | 'gspcTimePeriod'
  DateInterval ->
  GetSavingsPlansCoverage
getSavingsPlansCoverage pTimePeriod_ =
  GetSavingsPlansCoverage'
    { _gspcNextToken = Nothing,
      _gspcGranularity = Nothing,
      _gspcMaxResults = Nothing,
      _gspcMetrics = Nothing,
      _gspcGroupBy = Nothing,
      _gspcSortBy = Nothing,
      _gspcFilter = Nothing,
      _gspcTimePeriod = pTimePeriod_
    }

-- | The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
gspcNextToken :: Lens' GetSavingsPlansCoverage (Maybe Text)
gspcNextToken = lens _gspcNextToken (\s a -> s {_gspcNextToken = a})

-- | The granularity of the Amazon Web Services cost data for your Savings Plans. @Granularity@ can't be set if @GroupBy@ is set. The @GetSavingsPlansCoverage@ operation supports only @DAILY@ and @MONTHLY@ granularities.
gspcGranularity :: Lens' GetSavingsPlansCoverage (Maybe Granularity)
gspcGranularity = lens _gspcGranularity (\s a -> s {_gspcGranularity = a})

-- | The number of items to be returned in a response. The default is @20@ , with a minimum value of @1@ .
gspcMaxResults :: Lens' GetSavingsPlansCoverage (Maybe Natural)
gspcMaxResults = lens _gspcMaxResults (\s a -> s {_gspcMaxResults = a}) . mapping _Nat

-- | The measurement that you want your Savings Plans coverage reported in. The only valid value is @SpendCoveredBySavingsPlans@ .
gspcMetrics :: Lens' GetSavingsPlansCoverage [Text]
gspcMetrics = lens _gspcMetrics (\s a -> s {_gspcMetrics = a}) . _Default . _Coerce

-- | You can group the data using the attributes @INSTANCE_FAMILY@ , @REGION@ , or @SERVICE@ .
gspcGroupBy :: Lens' GetSavingsPlansCoverage [GroupDefinition]
gspcGroupBy = lens _gspcGroupBy (\s a -> s {_gspcGroupBy = a}) . _Default . _Coerce

-- | The value by which you want to sort the data. The following values are supported for @Key@ :     * @SpendCoveredBySavingsPlan@      * @OnDemandCost@      * @CoveragePercentage@      * @TotalCost@      * @InstanceFamily@      * @Region@      * @Service@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
gspcSortBy :: Lens' GetSavingsPlansCoverage (Maybe SortDefinition)
gspcSortBy = lens _gspcSortBy (\s a -> s {_gspcSortBy = a})

-- | Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans usage with the following dimensions:     * @LINKED_ACCOUNT@      * @REGION@      * @SERVICE@      * @INSTANCE_FAMILY@  @GetSavingsPlansCoverage@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension. If there are multiple values for a dimension, they are OR'd together. Cost category is also supported.
gspcFilter :: Lens' GetSavingsPlansCoverage (Maybe Expression)
gspcFilter = lens _gspcFilter (\s a -> s {_gspcFilter = a})

-- | The time period that you want the usage and costs for. The @Start@ date must be within 13 months. The @End@ date must be after the @Start@ date, and before the current date. Future dates can't be used as an @End@ date.
gspcTimePeriod :: Lens' GetSavingsPlansCoverage DateInterval
gspcTimePeriod = lens _gspcTimePeriod (\s a -> s {_gspcTimePeriod = a})

instance AWSRequest GetSavingsPlansCoverage where
  type
    Rs GetSavingsPlansCoverage =
      GetSavingsPlansCoverageResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetSavingsPlansCoverageResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "SavingsPlansCoverages" .!@ mempty)
      )

instance Hashable GetSavingsPlansCoverage

instance NFData GetSavingsPlansCoverage

instance ToHeaders GetSavingsPlansCoverage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetSavingsPlansCoverage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSavingsPlansCoverage where
  toJSON GetSavingsPlansCoverage' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gspcNextToken,
            ("Granularity" .=) <$> _gspcGranularity,
            ("MaxResults" .=) <$> _gspcMaxResults,
            ("Metrics" .=) <$> _gspcMetrics,
            ("GroupBy" .=) <$> _gspcGroupBy,
            ("SortBy" .=) <$> _gspcSortBy,
            ("Filter" .=) <$> _gspcFilter,
            Just ("TimePeriod" .= _gspcTimePeriod)
          ]
      )

instance ToPath GetSavingsPlansCoverage where
  toPath = const "/"

instance ToQuery GetSavingsPlansCoverage where
  toQuery = const mempty

-- | /See:/ 'getSavingsPlansCoverageResponse' smart constructor.
data GetSavingsPlansCoverageResponse = GetSavingsPlansCoverageResponse'
  { _gspcrrsNextToken ::
      !( Maybe
           Text
       ),
    _gspcrrsResponseStatus ::
      !Int,
    _gspcrrsSavingsPlansCoverages ::
      ![SavingsPlansCoverage]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSavingsPlansCoverageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gspcrrsNextToken' - The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gspcrrsResponseStatus' - -- | The response status code.
--
-- * 'gspcrrsSavingsPlansCoverages' - The amount of spend that your Savings Plans covered.
getSavingsPlansCoverageResponse ::
  -- | 'gspcrrsResponseStatus'
  Int ->
  GetSavingsPlansCoverageResponse
getSavingsPlansCoverageResponse pResponseStatus_ =
  GetSavingsPlansCoverageResponse'
    { _gspcrrsNextToken =
        Nothing,
      _gspcrrsResponseStatus = pResponseStatus_,
      _gspcrrsSavingsPlansCoverages = mempty
    }

-- | The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
gspcrrsNextToken :: Lens' GetSavingsPlansCoverageResponse (Maybe Text)
gspcrrsNextToken = lens _gspcrrsNextToken (\s a -> s {_gspcrrsNextToken = a})

-- | -- | The response status code.
gspcrrsResponseStatus :: Lens' GetSavingsPlansCoverageResponse Int
gspcrrsResponseStatus = lens _gspcrrsResponseStatus (\s a -> s {_gspcrrsResponseStatus = a})

-- | The amount of spend that your Savings Plans covered.
gspcrrsSavingsPlansCoverages :: Lens' GetSavingsPlansCoverageResponse [SavingsPlansCoverage]
gspcrrsSavingsPlansCoverages = lens _gspcrrsSavingsPlansCoverages (\s a -> s {_gspcrrsSavingsPlansCoverages = a}) . _Coerce

instance NFData GetSavingsPlansCoverageResponse
