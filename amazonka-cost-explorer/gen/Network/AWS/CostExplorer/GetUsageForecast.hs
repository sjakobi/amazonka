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
-- Module      : Network.AWS.CostExplorer.GetUsageForecast
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage.
module Network.AWS.CostExplorer.GetUsageForecast
  ( -- * Creating a Request
    getUsageForecast,
    GetUsageForecast,

    -- * Request Lenses
    gufPredictionIntervalLevel,
    gufFilter,
    gufTimePeriod,
    gufMetric,
    gufGranularity,

    -- * Destructuring the Response
    getUsageForecastResponse,
    GetUsageForecastResponse,

    -- * Response Lenses
    gufrrsForecastResultsByTime,
    gufrrsTotal,
    gufrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getUsageForecast' smart constructor.
data GetUsageForecast = GetUsageForecast'
  { _gufPredictionIntervalLevel ::
      !(Maybe Nat),
    _gufFilter :: !(Maybe Expression),
    _gufTimePeriod :: !DateInterval,
    _gufMetric :: !Metric,
    _gufGranularity :: !Granularity
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUsageForecast' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gufPredictionIntervalLevel' - Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value falling in the prediction interval. Higher confidence levels result in wider prediction intervals.
--
-- * 'gufFilter' - The filters that you want to use to filter your forecast. The @GetUsageForecast@ API supports filtering by the following dimensions:     * @AZ@      * @INSTANCE_TYPE@      * @LINKED_ACCOUNT@      * @LINKED_ACCOUNT_NAME@      * @OPERATION@      * @PURCHASE_TYPE@      * @REGION@      * @SERVICE@      * @USAGE_TYPE@      * @USAGE_TYPE_GROUP@      * @RECORD_TYPE@      * @OPERATING_SYSTEM@      * @TENANCY@      * @SCOPE@      * @PLATFORM@      * @SUBSCRIPTION_ID@      * @LEGAL_ENTITY_NAME@      * @DEPLOYMENT_OPTION@      * @DATABASE_ENGINE@      * @INSTANCE_TYPE_FAMILY@      * @BILLING_ENTITY@      * @RESERVATION_ID@      * @SAVINGS_PLAN_ARN@
--
-- * 'gufTimePeriod' - The start and end dates of the period that you want to retrieve usage forecast for. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ . The start date must be equal to or later than the current date to avoid a validation error.
--
-- * 'gufMetric' - Which metric Cost Explorer uses to create your forecast. Valid values for a @GetUsageForecast@ call are the following:     * USAGE_QUANTITY     * NORMALIZED_USAGE_AMOUNT
--
-- * 'gufGranularity' - How granular you want the forecast to be. You can get 3 months of @DAILY@ forecasts or 12 months of @MONTHLY@ forecasts. The @GetUsageForecast@ operation supports only @DAILY@ and @MONTHLY@ granularities.
getUsageForecast ::
  -- | 'gufTimePeriod'
  DateInterval ->
  -- | 'gufMetric'
  Metric ->
  -- | 'gufGranularity'
  Granularity ->
  GetUsageForecast
getUsageForecast pTimePeriod_ pMetric_ pGranularity_ =
  GetUsageForecast'
    { _gufPredictionIntervalLevel =
        Nothing,
      _gufFilter = Nothing,
      _gufTimePeriod = pTimePeriod_,
      _gufMetric = pMetric_,
      _gufGranularity = pGranularity_
    }

-- | Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value falling in the prediction interval. Higher confidence levels result in wider prediction intervals.
gufPredictionIntervalLevel :: Lens' GetUsageForecast (Maybe Natural)
gufPredictionIntervalLevel = lens _gufPredictionIntervalLevel (\s a -> s {_gufPredictionIntervalLevel = a}) . mapping _Nat

-- | The filters that you want to use to filter your forecast. The @GetUsageForecast@ API supports filtering by the following dimensions:     * @AZ@      * @INSTANCE_TYPE@      * @LINKED_ACCOUNT@      * @LINKED_ACCOUNT_NAME@      * @OPERATION@      * @PURCHASE_TYPE@      * @REGION@      * @SERVICE@      * @USAGE_TYPE@      * @USAGE_TYPE_GROUP@      * @RECORD_TYPE@      * @OPERATING_SYSTEM@      * @TENANCY@      * @SCOPE@      * @PLATFORM@      * @SUBSCRIPTION_ID@      * @LEGAL_ENTITY_NAME@      * @DEPLOYMENT_OPTION@      * @DATABASE_ENGINE@      * @INSTANCE_TYPE_FAMILY@      * @BILLING_ENTITY@      * @RESERVATION_ID@      * @SAVINGS_PLAN_ARN@
gufFilter :: Lens' GetUsageForecast (Maybe Expression)
gufFilter = lens _gufFilter (\s a -> s {_gufFilter = a})

-- | The start and end dates of the period that you want to retrieve usage forecast for. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ . The start date must be equal to or later than the current date to avoid a validation error.
gufTimePeriod :: Lens' GetUsageForecast DateInterval
gufTimePeriod = lens _gufTimePeriod (\s a -> s {_gufTimePeriod = a})

-- | Which metric Cost Explorer uses to create your forecast. Valid values for a @GetUsageForecast@ call are the following:     * USAGE_QUANTITY     * NORMALIZED_USAGE_AMOUNT
gufMetric :: Lens' GetUsageForecast Metric
gufMetric = lens _gufMetric (\s a -> s {_gufMetric = a})

-- | How granular you want the forecast to be. You can get 3 months of @DAILY@ forecasts or 12 months of @MONTHLY@ forecasts. The @GetUsageForecast@ operation supports only @DAILY@ and @MONTHLY@ granularities.
gufGranularity :: Lens' GetUsageForecast Granularity
gufGranularity = lens _gufGranularity (\s a -> s {_gufGranularity = a})

instance AWSRequest GetUsageForecast where
  type Rs GetUsageForecast = GetUsageForecastResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetUsageForecastResponse'
            <$> (x .?> "ForecastResultsByTime" .!@ mempty)
            <*> (x .?> "Total")
            <*> (pure (fromEnum s))
      )

instance Hashable GetUsageForecast

instance NFData GetUsageForecast

instance ToHeaders GetUsageForecast where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetUsageForecast" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetUsageForecast where
  toJSON GetUsageForecast' {..} =
    object
      ( catMaybes
          [ ("PredictionIntervalLevel" .=)
              <$> _gufPredictionIntervalLevel,
            ("Filter" .=) <$> _gufFilter,
            Just ("TimePeriod" .= _gufTimePeriod),
            Just ("Metric" .= _gufMetric),
            Just ("Granularity" .= _gufGranularity)
          ]
      )

instance ToPath GetUsageForecast where
  toPath = const "/"

instance ToQuery GetUsageForecast where
  toQuery = const mempty

-- | /See:/ 'getUsageForecastResponse' smart constructor.
data GetUsageForecastResponse = GetUsageForecastResponse'
  { _gufrrsForecastResultsByTime ::
      !( Maybe
           [ForecastResult]
       ),
    _gufrrsTotal ::
      !(Maybe MetricValue),
    _gufrrsResponseStatus ::
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

-- | Creates a value of 'GetUsageForecastResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gufrrsForecastResultsByTime' - The forecasts for your query, in order. For @DAILY@ forecasts, this is a list of days. For @MONTHLY@ forecasts, this is a list of months.
--
-- * 'gufrrsTotal' - How much you're forecasted to use over the forecast period.
--
-- * 'gufrrsResponseStatus' - -- | The response status code.
getUsageForecastResponse ::
  -- | 'gufrrsResponseStatus'
  Int ->
  GetUsageForecastResponse
getUsageForecastResponse pResponseStatus_ =
  GetUsageForecastResponse'
    { _gufrrsForecastResultsByTime =
        Nothing,
      _gufrrsTotal = Nothing,
      _gufrrsResponseStatus = pResponseStatus_
    }

-- | The forecasts for your query, in order. For @DAILY@ forecasts, this is a list of days. For @MONTHLY@ forecasts, this is a list of months.
gufrrsForecastResultsByTime :: Lens' GetUsageForecastResponse [ForecastResult]
gufrrsForecastResultsByTime = lens _gufrrsForecastResultsByTime (\s a -> s {_gufrrsForecastResultsByTime = a}) . _Default . _Coerce

-- | How much you're forecasted to use over the forecast period.
gufrrsTotal :: Lens' GetUsageForecastResponse (Maybe MetricValue)
gufrrsTotal = lens _gufrrsTotal (\s a -> s {_gufrrsTotal = a})

-- | -- | The response status code.
gufrrsResponseStatus :: Lens' GetUsageForecastResponse Int
gufrrsResponseStatus = lens _gufrrsResponseStatus (\s a -> s {_gufrrsResponseStatus = a})

instance NFData GetUsageForecastResponse
