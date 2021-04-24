{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignDateRangeKpiResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignDateRangeKpiResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.BaseKpiResult
import Network.AWS.Prelude

-- | Provides the results of a query that retrieved the data for a standard metric that applies to a campaign, and provides information about that query.
--
--
--
-- /See:/ 'campaignDateRangeKpiResponse' smart constructor.
data CampaignDateRangeKpiResponse = CampaignDateRangeKpiResponse'
  { _cdrkrNextToken ::
      !(Maybe Text),
    _cdrkrKpiResult ::
      !BaseKpiResult,
    _cdrkrKpiName ::
      !Text,
    _cdrkrEndTime ::
      !POSIX,
    _cdrkrCampaignId ::
      !Text,
    _cdrkrStartTime ::
      !POSIX,
    _cdrkrApplicationId ::
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

-- | Creates a value of 'CampaignDateRangeKpiResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrkrNextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Campaign Metrics resource because the resource returns all results in a single page.
--
-- * 'cdrkrKpiResult' - An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
--
-- * 'cdrkrKpiName' - The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
--
-- * 'cdrkrEndTime' - The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- * 'cdrkrCampaignId' - The unique identifier for the campaign that the metric applies to.
--
-- * 'cdrkrStartTime' - The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- * 'cdrkrApplicationId' - The unique identifier for the application that the metric applies to.
campaignDateRangeKpiResponse ::
  -- | 'cdrkrKpiResult'
  BaseKpiResult ->
  -- | 'cdrkrKpiName'
  Text ->
  -- | 'cdrkrEndTime'
  UTCTime ->
  -- | 'cdrkrCampaignId'
  Text ->
  -- | 'cdrkrStartTime'
  UTCTime ->
  -- | 'cdrkrApplicationId'
  Text ->
  CampaignDateRangeKpiResponse
campaignDateRangeKpiResponse
  pKpiResult_
  pKpiName_
  pEndTime_
  pCampaignId_
  pStartTime_
  pApplicationId_ =
    CampaignDateRangeKpiResponse'
      { _cdrkrNextToken =
          Nothing,
        _cdrkrKpiResult = pKpiResult_,
        _cdrkrKpiName = pKpiName_,
        _cdrkrEndTime = _Time # pEndTime_,
        _cdrkrCampaignId = pCampaignId_,
        _cdrkrStartTime = _Time # pStartTime_,
        _cdrkrApplicationId = pApplicationId_
      }

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Campaign Metrics resource because the resource returns all results in a single page.
cdrkrNextToken :: Lens' CampaignDateRangeKpiResponse (Maybe Text)
cdrkrNextToken = lens _cdrkrNextToken (\s a -> s {_cdrkrNextToken = a})

-- | An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
cdrkrKpiResult :: Lens' CampaignDateRangeKpiResponse BaseKpiResult
cdrkrKpiResult = lens _cdrkrKpiResult (\s a -> s {_cdrkrKpiResult = a})

-- | The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
cdrkrKpiName :: Lens' CampaignDateRangeKpiResponse Text
cdrkrKpiName = lens _cdrkrKpiName (\s a -> s {_cdrkrKpiName = a})

-- | The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
cdrkrEndTime :: Lens' CampaignDateRangeKpiResponse UTCTime
cdrkrEndTime = lens _cdrkrEndTime (\s a -> s {_cdrkrEndTime = a}) . _Time

-- | The unique identifier for the campaign that the metric applies to.
cdrkrCampaignId :: Lens' CampaignDateRangeKpiResponse Text
cdrkrCampaignId = lens _cdrkrCampaignId (\s a -> s {_cdrkrCampaignId = a})

-- | The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
cdrkrStartTime :: Lens' CampaignDateRangeKpiResponse UTCTime
cdrkrStartTime = lens _cdrkrStartTime (\s a -> s {_cdrkrStartTime = a}) . _Time

-- | The unique identifier for the application that the metric applies to.
cdrkrApplicationId :: Lens' CampaignDateRangeKpiResponse Text
cdrkrApplicationId = lens _cdrkrApplicationId (\s a -> s {_cdrkrApplicationId = a})

instance FromJSON CampaignDateRangeKpiResponse where
  parseJSON =
    withObject
      "CampaignDateRangeKpiResponse"
      ( \x ->
          CampaignDateRangeKpiResponse'
            <$> (x .:? "NextToken")
            <*> (x .: "KpiResult")
            <*> (x .: "KpiName")
            <*> (x .: "EndTime")
            <*> (x .: "CampaignId")
            <*> (x .: "StartTime")
            <*> (x .: "ApplicationId")
      )

instance Hashable CampaignDateRangeKpiResponse

instance NFData CampaignDateRangeKpiResponse
