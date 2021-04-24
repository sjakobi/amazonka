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
-- Module      : Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the forecast data for a scalable resource.
--
--
-- Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days.
module Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData
  ( -- * Creating a Request
    getScalingPlanResourceForecastData,
    GetScalingPlanResourceForecastData,

    -- * Request Lenses
    gsprfdScalingPlanName,
    gsprfdScalingPlanVersion,
    gsprfdServiceNamespace,
    gsprfdResourceId,
    gsprfdScalableDimension,
    gsprfdForecastDataType,
    gsprfdStartTime,
    gsprfdEndTime,

    -- * Destructuring the Response
    getScalingPlanResourceForecastDataResponse,
    GetScalingPlanResourceForecastDataResponse,

    -- * Response Lenses
    gsprfdrrsResponseStatus,
    gsprfdrrsDatapoints,
  )
where

import Network.AWS.AutoScalingPlans.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getScalingPlanResourceForecastData' smart constructor.
data GetScalingPlanResourceForecastData = GetScalingPlanResourceForecastData'
  { _gsprfdScalingPlanName ::
      !Text,
    _gsprfdScalingPlanVersion ::
      !Integer,
    _gsprfdServiceNamespace ::
      !ServiceNamespace,
    _gsprfdResourceId ::
      !Text,
    _gsprfdScalableDimension ::
      !ScalableDimension,
    _gsprfdForecastDataType ::
      !ForecastDataType,
    _gsprfdStartTime ::
      !POSIX,
    _gsprfdEndTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetScalingPlanResourceForecastData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsprfdScalingPlanName' - The name of the scaling plan.
--
-- * 'gsprfdScalingPlanVersion' - The version number of the scaling plan. Currently, the only valid value is @1@ .
--
-- * 'gsprfdServiceNamespace' - The namespace of the AWS service. The only valid value is @autoscaling@ .
--
-- * 'gsprfdResourceId' - The ID of the resource. This string consists of a prefix (@autoScalingGroup@ ) followed by the name of a specified Auto Scaling group (@my-asg@ ). Example: @autoScalingGroup/my-asg@ .
--
-- * 'gsprfdScalableDimension' - The scalable dimension for the resource. The only valid value is @autoscaling:autoScalingGroup:DesiredCapacity@ .
--
-- * 'gsprfdForecastDataType' - The type of forecast data to get.     * @LoadForecast@ : The load metric forecast.      * @CapacityForecast@ : The capacity forecast.      * @ScheduledActionMinCapacity@ : The minimum capacity for each scheduled scaling action. This data is calculated as the larger of two values: the capacity forecast or the minimum capacity in the scaling instruction.     * @ScheduledActionMaxCapacity@ : The maximum capacity for each scheduled scaling action. The calculation used is determined by the predictive scaling maximum capacity behavior setting in the scaling instruction.
--
-- * 'gsprfdStartTime' - The inclusive start time of the time range for the forecast data to get. The date and time can be at most 56 days before the current date and time.
--
-- * 'gsprfdEndTime' - The exclusive end time of the time range for the forecast data to get. The maximum time duration between the start and end time is seven days.  Although this parameter can accept a date and time that is more than two days in the future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for periods of two days in advance.
getScalingPlanResourceForecastData ::
  -- | 'gsprfdScalingPlanName'
  Text ->
  -- | 'gsprfdScalingPlanVersion'
  Integer ->
  -- | 'gsprfdServiceNamespace'
  ServiceNamespace ->
  -- | 'gsprfdResourceId'
  Text ->
  -- | 'gsprfdScalableDimension'
  ScalableDimension ->
  -- | 'gsprfdForecastDataType'
  ForecastDataType ->
  -- | 'gsprfdStartTime'
  UTCTime ->
  -- | 'gsprfdEndTime'
  UTCTime ->
  GetScalingPlanResourceForecastData
getScalingPlanResourceForecastData
  pScalingPlanName_
  pScalingPlanVersion_
  pServiceNamespace_
  pResourceId_
  pScalableDimension_
  pForecastDataType_
  pStartTime_
  pEndTime_ =
    GetScalingPlanResourceForecastData'
      { _gsprfdScalingPlanName =
          pScalingPlanName_,
        _gsprfdScalingPlanVersion =
          pScalingPlanVersion_,
        _gsprfdServiceNamespace =
          pServiceNamespace_,
        _gsprfdResourceId = pResourceId_,
        _gsprfdScalableDimension =
          pScalableDimension_,
        _gsprfdForecastDataType =
          pForecastDataType_,
        _gsprfdStartTime = _Time # pStartTime_,
        _gsprfdEndTime = _Time # pEndTime_
      }

-- | The name of the scaling plan.
gsprfdScalingPlanName :: Lens' GetScalingPlanResourceForecastData Text
gsprfdScalingPlanName = lens _gsprfdScalingPlanName (\s a -> s {_gsprfdScalingPlanName = a})

-- | The version number of the scaling plan. Currently, the only valid value is @1@ .
gsprfdScalingPlanVersion :: Lens' GetScalingPlanResourceForecastData Integer
gsprfdScalingPlanVersion = lens _gsprfdScalingPlanVersion (\s a -> s {_gsprfdScalingPlanVersion = a})

-- | The namespace of the AWS service. The only valid value is @autoscaling@ .
gsprfdServiceNamespace :: Lens' GetScalingPlanResourceForecastData ServiceNamespace
gsprfdServiceNamespace = lens _gsprfdServiceNamespace (\s a -> s {_gsprfdServiceNamespace = a})

-- | The ID of the resource. This string consists of a prefix (@autoScalingGroup@ ) followed by the name of a specified Auto Scaling group (@my-asg@ ). Example: @autoScalingGroup/my-asg@ .
gsprfdResourceId :: Lens' GetScalingPlanResourceForecastData Text
gsprfdResourceId = lens _gsprfdResourceId (\s a -> s {_gsprfdResourceId = a})

-- | The scalable dimension for the resource. The only valid value is @autoscaling:autoScalingGroup:DesiredCapacity@ .
gsprfdScalableDimension :: Lens' GetScalingPlanResourceForecastData ScalableDimension
gsprfdScalableDimension = lens _gsprfdScalableDimension (\s a -> s {_gsprfdScalableDimension = a})

-- | The type of forecast data to get.     * @LoadForecast@ : The load metric forecast.      * @CapacityForecast@ : The capacity forecast.      * @ScheduledActionMinCapacity@ : The minimum capacity for each scheduled scaling action. This data is calculated as the larger of two values: the capacity forecast or the minimum capacity in the scaling instruction.     * @ScheduledActionMaxCapacity@ : The maximum capacity for each scheduled scaling action. The calculation used is determined by the predictive scaling maximum capacity behavior setting in the scaling instruction.
gsprfdForecastDataType :: Lens' GetScalingPlanResourceForecastData ForecastDataType
gsprfdForecastDataType = lens _gsprfdForecastDataType (\s a -> s {_gsprfdForecastDataType = a})

-- | The inclusive start time of the time range for the forecast data to get. The date and time can be at most 56 days before the current date and time.
gsprfdStartTime :: Lens' GetScalingPlanResourceForecastData UTCTime
gsprfdStartTime = lens _gsprfdStartTime (\s a -> s {_gsprfdStartTime = a}) . _Time

-- | The exclusive end time of the time range for the forecast data to get. The maximum time duration between the start and end time is seven days.  Although this parameter can accept a date and time that is more than two days in the future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for periods of two days in advance.
gsprfdEndTime :: Lens' GetScalingPlanResourceForecastData UTCTime
gsprfdEndTime = lens _gsprfdEndTime (\s a -> s {_gsprfdEndTime = a}) . _Time

instance
  AWSRequest
    GetScalingPlanResourceForecastData
  where
  type
    Rs GetScalingPlanResourceForecastData =
      GetScalingPlanResourceForecastDataResponse
  request = postJSON autoScalingPlans
  response =
    receiveJSON
      ( \s h x ->
          GetScalingPlanResourceForecastDataResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "Datapoints" .!@ mempty)
      )

instance Hashable GetScalingPlanResourceForecastData

instance NFData GetScalingPlanResourceForecastData

instance ToHeaders GetScalingPlanResourceForecastData where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AnyScaleScalingPlannerFrontendService.GetScalingPlanResourceForecastData" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetScalingPlanResourceForecastData where
  toJSON GetScalingPlanResourceForecastData' {..} =
    object
      ( catMaybes
          [ Just ("ScalingPlanName" .= _gsprfdScalingPlanName),
            Just
              ("ScalingPlanVersion" .= _gsprfdScalingPlanVersion),
            Just ("ServiceNamespace" .= _gsprfdServiceNamespace),
            Just ("ResourceId" .= _gsprfdResourceId),
            Just
              ("ScalableDimension" .= _gsprfdScalableDimension),
            Just ("ForecastDataType" .= _gsprfdForecastDataType),
            Just ("StartTime" .= _gsprfdStartTime),
            Just ("EndTime" .= _gsprfdEndTime)
          ]
      )

instance ToPath GetScalingPlanResourceForecastData where
  toPath = const "/"

instance ToQuery GetScalingPlanResourceForecastData where
  toQuery = const mempty

-- | /See:/ 'getScalingPlanResourceForecastDataResponse' smart constructor.
data GetScalingPlanResourceForecastDataResponse = GetScalingPlanResourceForecastDataResponse'
  { _gsprfdrrsResponseStatus ::
      !Int,
    _gsprfdrrsDatapoints ::
      ![Datapoint]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetScalingPlanResourceForecastDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsprfdrrsResponseStatus' - -- | The response status code.
--
-- * 'gsprfdrrsDatapoints' - The data points to return.
getScalingPlanResourceForecastDataResponse ::
  -- | 'gsprfdrrsResponseStatus'
  Int ->
  GetScalingPlanResourceForecastDataResponse
getScalingPlanResourceForecastDataResponse
  pResponseStatus_ =
    GetScalingPlanResourceForecastDataResponse'
      { _gsprfdrrsResponseStatus =
          pResponseStatus_,
        _gsprfdrrsDatapoints = mempty
      }

-- | -- | The response status code.
gsprfdrrsResponseStatus :: Lens' GetScalingPlanResourceForecastDataResponse Int
gsprfdrrsResponseStatus = lens _gsprfdrrsResponseStatus (\s a -> s {_gsprfdrrsResponseStatus = a})

-- | The data points to return.
gsprfdrrsDatapoints :: Lens' GetScalingPlanResourceForecastDataResponse [Datapoint]
gsprfdrrsDatapoints = lens _gsprfdrrsDatapoints (\s a -> s {_gsprfdrrsDatapoints = a}) . _Coerce

instance
  NFData
    GetScalingPlanResourceForecastDataResponse
