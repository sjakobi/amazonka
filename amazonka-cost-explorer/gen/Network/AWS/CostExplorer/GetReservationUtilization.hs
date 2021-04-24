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
-- Module      : Network.AWS.CostExplorer.GetReservationUtilization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the reservation utilization for your account. Management account in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use @GetDimensionValues@ to determine the possible dimension values. Currently, you can group only by @SUBSCRIPTION_ID@ .
module Network.AWS.CostExplorer.GetReservationUtilization
  ( -- * Creating a Request
    getReservationUtilization,
    GetReservationUtilization,

    -- * Request Lenses
    gruGranularity,
    gruMaxResults,
    gruNextPageToken,
    gruGroupBy,
    gruSortBy,
    gruFilter,
    gruTimePeriod,

    -- * Destructuring the Response
    getReservationUtilizationResponse,
    GetReservationUtilizationResponse,

    -- * Response Lenses
    grurrsTotal,
    grurrsNextPageToken,
    grurrsResponseStatus,
    grurrsUtilizationsByTime,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getReservationUtilization' smart constructor.
data GetReservationUtilization = GetReservationUtilization'
  { _gruGranularity ::
      !( Maybe
           Granularity
       ),
    _gruMaxResults ::
      !(Maybe Nat),
    _gruNextPageToken ::
      !(Maybe Text),
    _gruGroupBy ::
      !( Maybe
           [GroupDefinition]
       ),
    _gruSortBy ::
      !( Maybe
           SortDefinition
       ),
    _gruFilter ::
      !(Maybe Expression),
    _gruTimePeriod ::
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

-- | Creates a value of 'GetReservationUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gruGranularity' - If @GroupBy@ is set, @Granularity@ can't be set. If @Granularity@ isn't set, the response object doesn't include @Granularity@ , either @MONTHLY@ or @DAILY@ . If both @GroupBy@ and @Granularity@ aren't set, @GetReservationUtilization@ defaults to @DAILY@ . The @GetReservationUtilization@ operation supports only @DAILY@ and @MONTHLY@ granularities.
--
-- * 'gruMaxResults' - The maximum number of objects that you returned for this request. If more objects are available, in the response, AWS provides a NextPageToken value that you can use in a subsequent call to get the next batch of objects.
--
-- * 'gruNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gruGroupBy' - Groups only by @SUBSCRIPTION_ID@ . Metadata is included.
--
-- * 'gruSortBy' - The value by which you want to sort the data. The following values are supported for @Key@ :     * @UtilizationPercentage@      * @UtilizationPercentageInUnits@      * @PurchasedHours@      * @PurchasedUnits@      * @TotalActualHours@      * @TotalActualUnits@      * @UnusedHours@      * @UnusedUnits@      * @OnDemandCostOfRIHoursUsed@      * @NetRISavings@      * @TotalPotentialRISavings@      * @AmortizedUpfrontFee@      * @AmortizedRecurringFee@      * @TotalAmortizedFee@      * @RICostForUnusedHours@      * @RealizedSavings@      * @UnrealizedSavings@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
--
-- * 'gruFilter' - Filters utilization data by dimensions. You can filter by the following dimensions:     * AZ     * CACHE_ENGINE     * DEPLOYMENT_OPTION     * INSTANCE_TYPE     * LINKED_ACCOUNT     * OPERATING_SYSTEM     * PLATFORM     * REGION     * SERVICE     * SCOPE     * TENANCY @GetReservationUtilization@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.
--
-- * 'gruTimePeriod' - Sets the start and end dates for retrieving RI utilization. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
getReservationUtilization ::
  -- | 'gruTimePeriod'
  DateInterval ->
  GetReservationUtilization
getReservationUtilization pTimePeriod_ =
  GetReservationUtilization'
    { _gruGranularity =
        Nothing,
      _gruMaxResults = Nothing,
      _gruNextPageToken = Nothing,
      _gruGroupBy = Nothing,
      _gruSortBy = Nothing,
      _gruFilter = Nothing,
      _gruTimePeriod = pTimePeriod_
    }

-- | If @GroupBy@ is set, @Granularity@ can't be set. If @Granularity@ isn't set, the response object doesn't include @Granularity@ , either @MONTHLY@ or @DAILY@ . If both @GroupBy@ and @Granularity@ aren't set, @GetReservationUtilization@ defaults to @DAILY@ . The @GetReservationUtilization@ operation supports only @DAILY@ and @MONTHLY@ granularities.
gruGranularity :: Lens' GetReservationUtilization (Maybe Granularity)
gruGranularity = lens _gruGranularity (\s a -> s {_gruGranularity = a})

-- | The maximum number of objects that you returned for this request. If more objects are available, in the response, AWS provides a NextPageToken value that you can use in a subsequent call to get the next batch of objects.
gruMaxResults :: Lens' GetReservationUtilization (Maybe Natural)
gruMaxResults = lens _gruMaxResults (\s a -> s {_gruMaxResults = a}) . mapping _Nat

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gruNextPageToken :: Lens' GetReservationUtilization (Maybe Text)
gruNextPageToken = lens _gruNextPageToken (\s a -> s {_gruNextPageToken = a})

-- | Groups only by @SUBSCRIPTION_ID@ . Metadata is included.
gruGroupBy :: Lens' GetReservationUtilization [GroupDefinition]
gruGroupBy = lens _gruGroupBy (\s a -> s {_gruGroupBy = a}) . _Default . _Coerce

-- | The value by which you want to sort the data. The following values are supported for @Key@ :     * @UtilizationPercentage@      * @UtilizationPercentageInUnits@      * @PurchasedHours@      * @PurchasedUnits@      * @TotalActualHours@      * @TotalActualUnits@      * @UnusedHours@      * @UnusedUnits@      * @OnDemandCostOfRIHoursUsed@      * @NetRISavings@      * @TotalPotentialRISavings@      * @AmortizedUpfrontFee@      * @AmortizedRecurringFee@      * @TotalAmortizedFee@      * @RICostForUnusedHours@      * @RealizedSavings@      * @UnrealizedSavings@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
gruSortBy :: Lens' GetReservationUtilization (Maybe SortDefinition)
gruSortBy = lens _gruSortBy (\s a -> s {_gruSortBy = a})

-- | Filters utilization data by dimensions. You can filter by the following dimensions:     * AZ     * CACHE_ENGINE     * DEPLOYMENT_OPTION     * INSTANCE_TYPE     * LINKED_ACCOUNT     * OPERATING_SYSTEM     * PLATFORM     * REGION     * SERVICE     * SCOPE     * TENANCY @GetReservationUtilization@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.
gruFilter :: Lens' GetReservationUtilization (Maybe Expression)
gruFilter = lens _gruFilter (\s a -> s {_gruFilter = a})

-- | Sets the start and end dates for retrieving RI utilization. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
gruTimePeriod :: Lens' GetReservationUtilization DateInterval
gruTimePeriod = lens _gruTimePeriod (\s a -> s {_gruTimePeriod = a})

instance AWSRequest GetReservationUtilization where
  type
    Rs GetReservationUtilization =
      GetReservationUtilizationResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetReservationUtilizationResponse'
            <$> (x .?> "Total")
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "UtilizationsByTime" .!@ mempty)
      )

instance Hashable GetReservationUtilization

instance NFData GetReservationUtilization

instance ToHeaders GetReservationUtilization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetReservationUtilization" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetReservationUtilization where
  toJSON GetReservationUtilization' {..} =
    object
      ( catMaybes
          [ ("Granularity" .=) <$> _gruGranularity,
            ("MaxResults" .=) <$> _gruMaxResults,
            ("NextPageToken" .=) <$> _gruNextPageToken,
            ("GroupBy" .=) <$> _gruGroupBy,
            ("SortBy" .=) <$> _gruSortBy,
            ("Filter" .=) <$> _gruFilter,
            Just ("TimePeriod" .= _gruTimePeriod)
          ]
      )

instance ToPath GetReservationUtilization where
  toPath = const "/"

instance ToQuery GetReservationUtilization where
  toQuery = const mempty

-- | /See:/ 'getReservationUtilizationResponse' smart constructor.
data GetReservationUtilizationResponse = GetReservationUtilizationResponse'
  { _grurrsTotal ::
      !( Maybe
           ReservationAggregates
       ),
    _grurrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grurrsResponseStatus ::
      !Int,
    _grurrsUtilizationsByTime ::
      ![UtilizationByTime]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReservationUtilizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grurrsTotal' - The total amount of time that you used your RIs.
--
-- * 'grurrsNextPageToken' - The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'grurrsResponseStatus' - -- | The response status code.
--
-- * 'grurrsUtilizationsByTime' - The amount of time that you used your RIs.
getReservationUtilizationResponse ::
  -- | 'grurrsResponseStatus'
  Int ->
  GetReservationUtilizationResponse
getReservationUtilizationResponse pResponseStatus_ =
  GetReservationUtilizationResponse'
    { _grurrsTotal =
        Nothing,
      _grurrsNextPageToken = Nothing,
      _grurrsResponseStatus = pResponseStatus_,
      _grurrsUtilizationsByTime = mempty
    }

-- | The total amount of time that you used your RIs.
grurrsTotal :: Lens' GetReservationUtilizationResponse (Maybe ReservationAggregates)
grurrsTotal = lens _grurrsTotal (\s a -> s {_grurrsTotal = a})

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
grurrsNextPageToken :: Lens' GetReservationUtilizationResponse (Maybe Text)
grurrsNextPageToken = lens _grurrsNextPageToken (\s a -> s {_grurrsNextPageToken = a})

-- | -- | The response status code.
grurrsResponseStatus :: Lens' GetReservationUtilizationResponse Int
grurrsResponseStatus = lens _grurrsResponseStatus (\s a -> s {_grurrsResponseStatus = a})

-- | The amount of time that you used your RIs.
grurrsUtilizationsByTime :: Lens' GetReservationUtilizationResponse [UtilizationByTime]
grurrsUtilizationsByTime = lens _grurrsUtilizationsByTime (\s a -> s {_grurrsUtilizationsByTime = a}) . _Coerce

instance NFData GetReservationUtilizationResponse
