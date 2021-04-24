{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.JourneyExecutionMetricsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneyExecutionMetricsResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey, and provides information about that query.
--
--
--
-- /See:/ 'journeyExecutionMetricsResponse' smart constructor.
data JourneyExecutionMetricsResponse = JourneyExecutionMetricsResponse'
  { _jemrMetrics ::
      !( Map
           Text
           Text
       ),
    _jemrJourneyId ::
      !Text,
    _jemrLastEvaluatedTime ::
      !Text,
    _jemrApplicationId ::
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

-- | Creates a value of 'JourneyExecutionMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jemrMetrics' - A JSON object that contains the results of the query. For information about the structure and contents of the results, see the <https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
--
-- * 'jemrJourneyId' - The unique identifier for the journey that the metric applies to.
--
-- * 'jemrLastEvaluatedTime' - The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the journey and updated the data for the metric.
--
-- * 'jemrApplicationId' - The unique identifier for the application that the metric applies to.
journeyExecutionMetricsResponse ::
  -- | 'jemrJourneyId'
  Text ->
  -- | 'jemrLastEvaluatedTime'
  Text ->
  -- | 'jemrApplicationId'
  Text ->
  JourneyExecutionMetricsResponse
journeyExecutionMetricsResponse
  pJourneyId_
  pLastEvaluatedTime_
  pApplicationId_ =
    JourneyExecutionMetricsResponse'
      { _jemrMetrics =
          mempty,
        _jemrJourneyId = pJourneyId_,
        _jemrLastEvaluatedTime =
          pLastEvaluatedTime_,
        _jemrApplicationId = pApplicationId_
      }

-- | A JSON object that contains the results of the query. For information about the structure and contents of the results, see the <https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
jemrMetrics :: Lens' JourneyExecutionMetricsResponse (HashMap Text Text)
jemrMetrics = lens _jemrMetrics (\s a -> s {_jemrMetrics = a}) . _Map

-- | The unique identifier for the journey that the metric applies to.
jemrJourneyId :: Lens' JourneyExecutionMetricsResponse Text
jemrJourneyId = lens _jemrJourneyId (\s a -> s {_jemrJourneyId = a})

-- | The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the journey and updated the data for the metric.
jemrLastEvaluatedTime :: Lens' JourneyExecutionMetricsResponse Text
jemrLastEvaluatedTime = lens _jemrLastEvaluatedTime (\s a -> s {_jemrLastEvaluatedTime = a})

-- | The unique identifier for the application that the metric applies to.
jemrApplicationId :: Lens' JourneyExecutionMetricsResponse Text
jemrApplicationId = lens _jemrApplicationId (\s a -> s {_jemrApplicationId = a})

instance FromJSON JourneyExecutionMetricsResponse where
  parseJSON =
    withObject
      "JourneyExecutionMetricsResponse"
      ( \x ->
          JourneyExecutionMetricsResponse'
            <$> (x .:? "Metrics" .!= mempty)
            <*> (x .: "JourneyId")
            <*> (x .: "LastEvaluatedTime")
            <*> (x .: "ApplicationId")
      )

instance Hashable JourneyExecutionMetricsResponse

instance NFData JourneyExecutionMetricsResponse
