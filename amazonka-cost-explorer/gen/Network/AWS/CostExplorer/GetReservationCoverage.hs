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
-- Module      : Network.AWS.CostExplorer.GetReservationCoverage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data about reservation usage by the following dimensions:
--
--
--     * AZ
--
--     * CACHE_ENGINE
--
--     * DATABASE_ENGINE
--
--     * DEPLOYMENT_OPTION
--
--     * INSTANCE_TYPE
--
--     * LINKED_ACCOUNT
--
--     * OPERATING_SYSTEM
--
--     * PLATFORM
--
--     * REGION
--
--     * SERVICE
--
--     * TAG
--
--     * TENANCY
--
--
--
-- To determine valid values for a dimension, use the @GetDimensionValues@ operation.
module Network.AWS.CostExplorer.GetReservationCoverage
  ( -- * Creating a Request
    getReservationCoverage,
    GetReservationCoverage,

    -- * Request Lenses
    grcGranularity,
    grcMaxResults,
    grcNextPageToken,
    grcMetrics,
    grcGroupBy,
    grcSortBy,
    grcFilter,
    grcTimePeriod,

    -- * Destructuring the Response
    getReservationCoverageResponse,
    GetReservationCoverageResponse,

    -- * Response Lenses
    grcrrsTotal,
    grcrrsNextPageToken,
    grcrrsResponseStatus,
    grcrrsCoveragesByTime,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | You can use the following request parameters to query for how much of your instance usage a reservation covered.
--
--
--
-- /See:/ 'getReservationCoverage' smart constructor.
data GetReservationCoverage = GetReservationCoverage'
  { _grcGranularity ::
      !(Maybe Granularity),
    _grcMaxResults ::
      !(Maybe Nat),
    _grcNextPageToken ::
      !(Maybe Text),
    _grcMetrics ::
      !(Maybe [Text]),
    _grcGroupBy ::
      !( Maybe
           [GroupDefinition]
       ),
    _grcSortBy ::
      !(Maybe SortDefinition),
    _grcFilter ::
      !(Maybe Expression),
    _grcTimePeriod ::
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

-- | Creates a value of 'GetReservationCoverage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grcGranularity' - The granularity of the AWS cost data for the reservation. Valid values are @MONTHLY@ and @DAILY@ . If @GroupBy@ is set, @Granularity@ can't be set. If @Granularity@ isn't set, the response object doesn't include @Granularity@ , either @MONTHLY@ or @DAILY@ . The @GetReservationCoverage@ operation supports only @DAILY@ and @MONTHLY@ granularities.
--
-- * 'grcMaxResults' - The maximum number of objects that you returned for this request. If more objects are available, in the response, AWS provides a NextPageToken value that you can use in a subsequent call to get the next batch of objects.
--
-- * 'grcNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'grcMetrics' - The measurement that you want your reservation coverage reported in. Valid values are @Hour@ , @Unit@ , and @Cost@ . You can use multiple values in a request.
--
-- * 'grcGroupBy' - You can group the data by the following attributes:     * AZ     * CACHE_ENGINE     * DATABASE_ENGINE     * DEPLOYMENT_OPTION     * INSTANCE_TYPE     * LINKED_ACCOUNT     * OPERATING_SYSTEM     * PLATFORM     * REGION     * TENANCY
--
-- * 'grcSortBy' - The value by which you want to sort the data. The following values are supported for @Key@ :     * @OnDemandCost@      * @CoverageHoursPercentage@      * @OnDemandHours@      * @ReservedHours@      * @TotalRunningHours@      * @CoverageNormalizedUnitsPercentage@      * @OnDemandNormalizedUnits@      * @ReservedNormalizedUnits@      * @TotalRunningNormalizedUnits@      * @Time@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
--
-- * 'grcFilter' - Filters utilization data by dimensions. You can filter by the following dimensions:     * AZ     * CACHE_ENGINE     * DATABASE_ENGINE     * DEPLOYMENT_OPTION     * INSTANCE_TYPE     * LINKED_ACCOUNT     * OPERATING_SYSTEM     * PLATFORM     * REGION     * SERVICE     * TAG     * TENANCY @GetReservationCoverage@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension. You can nest only one level deep. If there are multiple values for a dimension, they are OR'd together. If you don't provide a @SERVICE@ filter, Cost Explorer defaults to EC2. Cost category is also supported.
--
-- * 'grcTimePeriod' - The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
getReservationCoverage ::
  -- | 'grcTimePeriod'
  DateInterval ->
  GetReservationCoverage
getReservationCoverage pTimePeriod_ =
  GetReservationCoverage'
    { _grcGranularity = Nothing,
      _grcMaxResults = Nothing,
      _grcNextPageToken = Nothing,
      _grcMetrics = Nothing,
      _grcGroupBy = Nothing,
      _grcSortBy = Nothing,
      _grcFilter = Nothing,
      _grcTimePeriod = pTimePeriod_
    }

-- | The granularity of the AWS cost data for the reservation. Valid values are @MONTHLY@ and @DAILY@ . If @GroupBy@ is set, @Granularity@ can't be set. If @Granularity@ isn't set, the response object doesn't include @Granularity@ , either @MONTHLY@ or @DAILY@ . The @GetReservationCoverage@ operation supports only @DAILY@ and @MONTHLY@ granularities.
grcGranularity :: Lens' GetReservationCoverage (Maybe Granularity)
grcGranularity = lens _grcGranularity (\s a -> s {_grcGranularity = a})

-- | The maximum number of objects that you returned for this request. If more objects are available, in the response, AWS provides a NextPageToken value that you can use in a subsequent call to get the next batch of objects.
grcMaxResults :: Lens' GetReservationCoverage (Maybe Natural)
grcMaxResults = lens _grcMaxResults (\s a -> s {_grcMaxResults = a}) . mapping _Nat

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
grcNextPageToken :: Lens' GetReservationCoverage (Maybe Text)
grcNextPageToken = lens _grcNextPageToken (\s a -> s {_grcNextPageToken = a})

-- | The measurement that you want your reservation coverage reported in. Valid values are @Hour@ , @Unit@ , and @Cost@ . You can use multiple values in a request.
grcMetrics :: Lens' GetReservationCoverage [Text]
grcMetrics = lens _grcMetrics (\s a -> s {_grcMetrics = a}) . _Default . _Coerce

-- | You can group the data by the following attributes:     * AZ     * CACHE_ENGINE     * DATABASE_ENGINE     * DEPLOYMENT_OPTION     * INSTANCE_TYPE     * LINKED_ACCOUNT     * OPERATING_SYSTEM     * PLATFORM     * REGION     * TENANCY
grcGroupBy :: Lens' GetReservationCoverage [GroupDefinition]
grcGroupBy = lens _grcGroupBy (\s a -> s {_grcGroupBy = a}) . _Default . _Coerce

-- | The value by which you want to sort the data. The following values are supported for @Key@ :     * @OnDemandCost@      * @CoverageHoursPercentage@      * @OnDemandHours@      * @ReservedHours@      * @TotalRunningHours@      * @CoverageNormalizedUnitsPercentage@      * @OnDemandNormalizedUnits@      * @ReservedNormalizedUnits@      * @TotalRunningNormalizedUnits@      * @Time@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
grcSortBy :: Lens' GetReservationCoverage (Maybe SortDefinition)
grcSortBy = lens _grcSortBy (\s a -> s {_grcSortBy = a})

-- | Filters utilization data by dimensions. You can filter by the following dimensions:     * AZ     * CACHE_ENGINE     * DATABASE_ENGINE     * DEPLOYMENT_OPTION     * INSTANCE_TYPE     * LINKED_ACCOUNT     * OPERATING_SYSTEM     * PLATFORM     * REGION     * SERVICE     * TAG     * TENANCY @GetReservationCoverage@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension. You can nest only one level deep. If there are multiple values for a dimension, they are OR'd together. If you don't provide a @SERVICE@ filter, Cost Explorer defaults to EC2. Cost category is also supported.
grcFilter :: Lens' GetReservationCoverage (Maybe Expression)
grcFilter = lens _grcFilter (\s a -> s {_grcFilter = a})

-- | The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
grcTimePeriod :: Lens' GetReservationCoverage DateInterval
grcTimePeriod = lens _grcTimePeriod (\s a -> s {_grcTimePeriod = a})

instance AWSRequest GetReservationCoverage where
  type
    Rs GetReservationCoverage =
      GetReservationCoverageResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetReservationCoverageResponse'
            <$> (x .?> "Total")
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "CoveragesByTime" .!@ mempty)
      )

instance Hashable GetReservationCoverage

instance NFData GetReservationCoverage

instance ToHeaders GetReservationCoverage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetReservationCoverage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetReservationCoverage where
  toJSON GetReservationCoverage' {..} =
    object
      ( catMaybes
          [ ("Granularity" .=) <$> _grcGranularity,
            ("MaxResults" .=) <$> _grcMaxResults,
            ("NextPageToken" .=) <$> _grcNextPageToken,
            ("Metrics" .=) <$> _grcMetrics,
            ("GroupBy" .=) <$> _grcGroupBy,
            ("SortBy" .=) <$> _grcSortBy,
            ("Filter" .=) <$> _grcFilter,
            Just ("TimePeriod" .= _grcTimePeriod)
          ]
      )

instance ToPath GetReservationCoverage where
  toPath = const "/"

instance ToQuery GetReservationCoverage where
  toQuery = const mempty

-- | /See:/ 'getReservationCoverageResponse' smart constructor.
data GetReservationCoverageResponse = GetReservationCoverageResponse'
  { _grcrrsTotal ::
      !( Maybe
           Coverage
       ),
    _grcrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grcrrsResponseStatus ::
      !Int,
    _grcrrsCoveragesByTime ::
      ![CoverageByTime]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReservationCoverageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grcrrsTotal' - The total amount of instance usage that a reservation covered.
--
-- * 'grcrrsNextPageToken' - The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'grcrrsResponseStatus' - -- | The response status code.
--
-- * 'grcrrsCoveragesByTime' - The amount of time that your reservations covered.
getReservationCoverageResponse ::
  -- | 'grcrrsResponseStatus'
  Int ->
  GetReservationCoverageResponse
getReservationCoverageResponse pResponseStatus_ =
  GetReservationCoverageResponse'
    { _grcrrsTotal =
        Nothing,
      _grcrrsNextPageToken = Nothing,
      _grcrrsResponseStatus = pResponseStatus_,
      _grcrrsCoveragesByTime = mempty
    }

-- | The total amount of instance usage that a reservation covered.
grcrrsTotal :: Lens' GetReservationCoverageResponse (Maybe Coverage)
grcrrsTotal = lens _grcrrsTotal (\s a -> s {_grcrrsTotal = a})

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
grcrrsNextPageToken :: Lens' GetReservationCoverageResponse (Maybe Text)
grcrrsNextPageToken = lens _grcrrsNextPageToken (\s a -> s {_grcrrsNextPageToken = a})

-- | -- | The response status code.
grcrrsResponseStatus :: Lens' GetReservationCoverageResponse Int
grcrrsResponseStatus = lens _grcrrsResponseStatus (\s a -> s {_grcrrsResponseStatus = a})

-- | The amount of time that your reservations covered.
grcrrsCoveragesByTime :: Lens' GetReservationCoverageResponse [CoverageByTime]
grcrrsCoveragesByTime = lens _grcrrsCoveragesByTime (\s a -> s {_grcrrsCoveragesByTime = a}) . _Coerce

instance NFData GetReservationCoverageResponse
