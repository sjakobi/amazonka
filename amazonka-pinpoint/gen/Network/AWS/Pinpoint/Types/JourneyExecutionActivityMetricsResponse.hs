{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.JourneyExecutionActivityMetricsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneyExecutionActivityMetricsResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey activity, and provides information about that query.
--
--
--
-- /See:/ 'journeyExecutionActivityMetricsResponse' smart constructor.
data JourneyExecutionActivityMetricsResponse = JourneyExecutionActivityMetricsResponse'
  { _jeamrMetrics ::
      !( Map
           Text
           Text
       ),
    _jeamrJourneyId ::
      !Text,
    _jeamrLastEvaluatedTime ::
      !Text,
    _jeamrJourneyActivityId ::
      !Text,
    _jeamrActivityType ::
      !Text,
    _jeamrApplicationId ::
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

-- | Creates a value of 'JourneyExecutionActivityMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeamrMetrics' - A JSON object that contains the results of the query. The results vary depending on the type of activity (ActivityType). For information about the structure and contents of the results, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
--
-- * 'jeamrJourneyId' - The unique identifier for the journey that the metric applies to.
--
-- * 'jeamrLastEvaluatedTime' - The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the execution status of the activity and updated the data for the metric.
--
-- * 'jeamrJourneyActivityId' - The unique identifier for the activity that the metric applies to.
--
-- * 'jeamrActivityType' - The type of activity that the metric applies to. Possible values are:     * CONDITIONAL_SPLIT - For a yes/no split activity, which is an activity that sends participants down one of two paths in a journey.     * HOLDOUT - For a holdout activity, which is an activity that stops a journey for a specified percentage of participants.     * MESSAGE - For an email activity, which is an activity that sends an email message to participants.     * MULTI_CONDITIONAL_SPLIT - For a multivariate split activity, which is an activity that sends participants down one of as many as five paths in a journey.     * RANDOM_SPLIT - For a random split activity, which is an activity that sends specified percentages of participants down one of as many as five paths in a journey.     * WAIT - For a wait activity, which is an activity that waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.
--
-- * 'jeamrApplicationId' - The unique identifier for the application that the metric applies to.
journeyExecutionActivityMetricsResponse ::
  -- | 'jeamrJourneyId'
  Text ->
  -- | 'jeamrLastEvaluatedTime'
  Text ->
  -- | 'jeamrJourneyActivityId'
  Text ->
  -- | 'jeamrActivityType'
  Text ->
  -- | 'jeamrApplicationId'
  Text ->
  JourneyExecutionActivityMetricsResponse
journeyExecutionActivityMetricsResponse
  pJourneyId_
  pLastEvaluatedTime_
  pJourneyActivityId_
  pActivityType_
  pApplicationId_ =
    JourneyExecutionActivityMetricsResponse'
      { _jeamrMetrics =
          mempty,
        _jeamrJourneyId = pJourneyId_,
        _jeamrLastEvaluatedTime =
          pLastEvaluatedTime_,
        _jeamrJourneyActivityId =
          pJourneyActivityId_,
        _jeamrActivityType =
          pActivityType_,
        _jeamrApplicationId =
          pApplicationId_
      }

-- | A JSON object that contains the results of the query. The results vary depending on the type of activity (ActivityType). For information about the structure and contents of the results, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
jeamrMetrics :: Lens' JourneyExecutionActivityMetricsResponse (HashMap Text Text)
jeamrMetrics = lens _jeamrMetrics (\s a -> s {_jeamrMetrics = a}) . _Map

-- | The unique identifier for the journey that the metric applies to.
jeamrJourneyId :: Lens' JourneyExecutionActivityMetricsResponse Text
jeamrJourneyId = lens _jeamrJourneyId (\s a -> s {_jeamrJourneyId = a})

-- | The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the execution status of the activity and updated the data for the metric.
jeamrLastEvaluatedTime :: Lens' JourneyExecutionActivityMetricsResponse Text
jeamrLastEvaluatedTime = lens _jeamrLastEvaluatedTime (\s a -> s {_jeamrLastEvaluatedTime = a})

-- | The unique identifier for the activity that the metric applies to.
jeamrJourneyActivityId :: Lens' JourneyExecutionActivityMetricsResponse Text
jeamrJourneyActivityId = lens _jeamrJourneyActivityId (\s a -> s {_jeamrJourneyActivityId = a})

-- | The type of activity that the metric applies to. Possible values are:     * CONDITIONAL_SPLIT - For a yes/no split activity, which is an activity that sends participants down one of two paths in a journey.     * HOLDOUT - For a holdout activity, which is an activity that stops a journey for a specified percentage of participants.     * MESSAGE - For an email activity, which is an activity that sends an email message to participants.     * MULTI_CONDITIONAL_SPLIT - For a multivariate split activity, which is an activity that sends participants down one of as many as five paths in a journey.     * RANDOM_SPLIT - For a random split activity, which is an activity that sends specified percentages of participants down one of as many as five paths in a journey.     * WAIT - For a wait activity, which is an activity that waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.
jeamrActivityType :: Lens' JourneyExecutionActivityMetricsResponse Text
jeamrActivityType = lens _jeamrActivityType (\s a -> s {_jeamrActivityType = a})

-- | The unique identifier for the application that the metric applies to.
jeamrApplicationId :: Lens' JourneyExecutionActivityMetricsResponse Text
jeamrApplicationId = lens _jeamrApplicationId (\s a -> s {_jeamrApplicationId = a})

instance
  FromJSON
    JourneyExecutionActivityMetricsResponse
  where
  parseJSON =
    withObject
      "JourneyExecutionActivityMetricsResponse"
      ( \x ->
          JourneyExecutionActivityMetricsResponse'
            <$> (x .:? "Metrics" .!= mempty)
            <*> (x .: "JourneyId")
            <*> (x .: "LastEvaluatedTime")
            <*> (x .: "JourneyActivityId")
            <*> (x .: "ActivityType")
            <*> (x .: "ApplicationId")
      )

instance
  Hashable
    JourneyExecutionActivityMetricsResponse

instance
  NFData
    JourneyExecutionActivityMetricsResponse
