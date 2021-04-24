{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ApplicationDateRangeKpiResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ApplicationDateRangeKpiResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.BaseKpiResult
import Network.AWS.Prelude

-- | Provides the results of a query that retrieved the data for a standard metric that applies to an application, and provides information about that query.
--
--
--
-- /See:/ 'applicationDateRangeKpiResponse' smart constructor.
data ApplicationDateRangeKpiResponse = ApplicationDateRangeKpiResponse'
  { _adrkrNextToken ::
      !( Maybe
           Text
       ),
    _adrkrKpiResult ::
      !BaseKpiResult,
    _adrkrKpiName ::
      !Text,
    _adrkrEndTime ::
      !POSIX,
    _adrkrStartTime ::
      !POSIX,
    _adrkrApplicationId ::
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

-- | Creates a value of 'ApplicationDateRangeKpiResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrkrNextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Application Metrics resource because the resource returns all results in a single page.
--
-- * 'adrkrKpiResult' - An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
--
-- * 'adrkrKpiName' - The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
--
-- * 'adrkrEndTime' - The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- * 'adrkrStartTime' - The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- * 'adrkrApplicationId' - The unique identifier for the application that the metric applies to.
applicationDateRangeKpiResponse ::
  -- | 'adrkrKpiResult'
  BaseKpiResult ->
  -- | 'adrkrKpiName'
  Text ->
  -- | 'adrkrEndTime'
  UTCTime ->
  -- | 'adrkrStartTime'
  UTCTime ->
  -- | 'adrkrApplicationId'
  Text ->
  ApplicationDateRangeKpiResponse
applicationDateRangeKpiResponse
  pKpiResult_
  pKpiName_
  pEndTime_
  pStartTime_
  pApplicationId_ =
    ApplicationDateRangeKpiResponse'
      { _adrkrNextToken =
          Nothing,
        _adrkrKpiResult = pKpiResult_,
        _adrkrKpiName = pKpiName_,
        _adrkrEndTime = _Time # pEndTime_,
        _adrkrStartTime = _Time # pStartTime_,
        _adrkrApplicationId = pApplicationId_
      }

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Application Metrics resource because the resource returns all results in a single page.
adrkrNextToken :: Lens' ApplicationDateRangeKpiResponse (Maybe Text)
adrkrNextToken = lens _adrkrNextToken (\s a -> s {_adrkrNextToken = a})

-- | An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
adrkrKpiResult :: Lens' ApplicationDateRangeKpiResponse BaseKpiResult
adrkrKpiResult = lens _adrkrKpiResult (\s a -> s {_adrkrKpiResult = a})

-- | The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
adrkrKpiName :: Lens' ApplicationDateRangeKpiResponse Text
adrkrKpiName = lens _adrkrKpiName (\s a -> s {_adrkrKpiName = a})

-- | The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
adrkrEndTime :: Lens' ApplicationDateRangeKpiResponse UTCTime
adrkrEndTime = lens _adrkrEndTime (\s a -> s {_adrkrEndTime = a}) . _Time

-- | The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
adrkrStartTime :: Lens' ApplicationDateRangeKpiResponse UTCTime
adrkrStartTime = lens _adrkrStartTime (\s a -> s {_adrkrStartTime = a}) . _Time

-- | The unique identifier for the application that the metric applies to.
adrkrApplicationId :: Lens' ApplicationDateRangeKpiResponse Text
adrkrApplicationId = lens _adrkrApplicationId (\s a -> s {_adrkrApplicationId = a})

instance FromJSON ApplicationDateRangeKpiResponse where
  parseJSON =
    withObject
      "ApplicationDateRangeKpiResponse"
      ( \x ->
          ApplicationDateRangeKpiResponse'
            <$> (x .:? "NextToken")
            <*> (x .: "KpiResult")
            <*> (x .: "KpiName")
            <*> (x .: "EndTime")
            <*> (x .: "StartTime")
            <*> (x .: "ApplicationId")
      )

instance Hashable ApplicationDateRangeKpiResponse

instance NFData ApplicationDateRangeKpiResponse
