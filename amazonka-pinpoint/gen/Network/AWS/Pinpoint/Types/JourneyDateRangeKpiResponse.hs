{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.JourneyDateRangeKpiResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneyDateRangeKpiResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.BaseKpiResult
import Network.AWS.Prelude

-- | Provides the results of a query that retrieved the data for a standard engagement metric that applies to a journey, and provides information about that query.
--
--
--
-- /See:/ 'journeyDateRangeKpiResponse' smart constructor.
data JourneyDateRangeKpiResponse = JourneyDateRangeKpiResponse'
  { _jdrkrNextToken ::
      !(Maybe Text),
    _jdrkrKpiResult ::
      !BaseKpiResult,
    _jdrkrKpiName ::
      !Text,
    _jdrkrJourneyId ::
      !Text,
    _jdrkrEndTime ::
      !POSIX,
    _jdrkrStartTime ::
      !POSIX,
    _jdrkrApplicationId ::
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

-- | Creates a value of 'JourneyDateRangeKpiResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jdrkrNextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Journey Engagement Metrics resource because the resource returns all results in a single page.
--
-- * 'jdrkrKpiResult' - An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
--
-- * 'jdrkrKpiName' - The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
--
-- * 'jdrkrJourneyId' - The unique identifier for the journey that the metric applies to.
--
-- * 'jdrkrEndTime' - The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- * 'jdrkrStartTime' - The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- * 'jdrkrApplicationId' - The unique identifier for the application that the metric applies to.
journeyDateRangeKpiResponse ::
  -- | 'jdrkrKpiResult'
  BaseKpiResult ->
  -- | 'jdrkrKpiName'
  Text ->
  -- | 'jdrkrJourneyId'
  Text ->
  -- | 'jdrkrEndTime'
  UTCTime ->
  -- | 'jdrkrStartTime'
  UTCTime ->
  -- | 'jdrkrApplicationId'
  Text ->
  JourneyDateRangeKpiResponse
journeyDateRangeKpiResponse
  pKpiResult_
  pKpiName_
  pJourneyId_
  pEndTime_
  pStartTime_
  pApplicationId_ =
    JourneyDateRangeKpiResponse'
      { _jdrkrNextToken =
          Nothing,
        _jdrkrKpiResult = pKpiResult_,
        _jdrkrKpiName = pKpiName_,
        _jdrkrJourneyId = pJourneyId_,
        _jdrkrEndTime = _Time # pEndTime_,
        _jdrkrStartTime = _Time # pStartTime_,
        _jdrkrApplicationId = pApplicationId_
      }

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Journey Engagement Metrics resource because the resource returns all results in a single page.
jdrkrNextToken :: Lens' JourneyDateRangeKpiResponse (Maybe Text)
jdrkrNextToken = lens _jdrkrNextToken (\s a -> s {_jdrkrNextToken = a})

-- | An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
jdrkrKpiResult :: Lens' JourneyDateRangeKpiResponse BaseKpiResult
jdrkrKpiResult = lens _jdrkrKpiResult (\s a -> s {_jdrkrKpiResult = a})

-- | The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
jdrkrKpiName :: Lens' JourneyDateRangeKpiResponse Text
jdrkrKpiName = lens _jdrkrKpiName (\s a -> s {_jdrkrKpiName = a})

-- | The unique identifier for the journey that the metric applies to.
jdrkrJourneyId :: Lens' JourneyDateRangeKpiResponse Text
jdrkrJourneyId = lens _jdrkrJourneyId (\s a -> s {_jdrkrJourneyId = a})

-- | The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
jdrkrEndTime :: Lens' JourneyDateRangeKpiResponse UTCTime
jdrkrEndTime = lens _jdrkrEndTime (\s a -> s {_jdrkrEndTime = a}) . _Time

-- | The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
jdrkrStartTime :: Lens' JourneyDateRangeKpiResponse UTCTime
jdrkrStartTime = lens _jdrkrStartTime (\s a -> s {_jdrkrStartTime = a}) . _Time

-- | The unique identifier for the application that the metric applies to.
jdrkrApplicationId :: Lens' JourneyDateRangeKpiResponse Text
jdrkrApplicationId = lens _jdrkrApplicationId (\s a -> s {_jdrkrApplicationId = a})

instance FromJSON JourneyDateRangeKpiResponse where
  parseJSON =
    withObject
      "JourneyDateRangeKpiResponse"
      ( \x ->
          JourneyDateRangeKpiResponse'
            <$> (x .:? "NextToken")
            <*> (x .: "KpiResult")
            <*> (x .: "KpiName")
            <*> (x .: "JourneyId")
            <*> (x .: "EndTime")
            <*> (x .: "StartTime")
            <*> (x .: "ApplicationId")
      )

instance Hashable JourneyDateRangeKpiResponse

instance NFData JourneyDateRangeKpiResponse
