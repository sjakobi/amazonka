{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.InsightSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.AnomalousService
import Network.AWS.XRay.Types.InsightCategory
import Network.AWS.XRay.Types.InsightState
import Network.AWS.XRay.Types.RequestImpactStatistics
import Network.AWS.XRay.Types.ServiceId

-- | Information that describes an insight.
--
--
--
-- /See:/ 'insightSummary' smart constructor.
data InsightSummary = InsightSummary'
  { _isClientRequestImpactStatistics ::
      !(Maybe RequestImpactStatistics),
    _isRootCauseServiceRequestImpactStatistics ::
      !(Maybe RequestImpactStatistics),
    _isLastUpdateTime :: !(Maybe POSIX),
    _isGroupName :: !(Maybe Text),
    _isStartTime :: !(Maybe POSIX),
    _isEndTime :: !(Maybe POSIX),
    _isRootCauseServiceId ::
      !(Maybe ServiceId),
    _isState :: !(Maybe InsightState),
    _isSummary :: !(Maybe Text),
    _isTopAnomalousServices ::
      !(Maybe [AnomalousService]),
    _isCategories ::
      !(Maybe [InsightCategory]),
    _isInsightId :: !(Maybe Text),
    _isGroupARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InsightSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isClientRequestImpactStatistics' - The impact statistics of the client side service. This includes the number of requests to the client service and whether the requests were faults or okay.
--
-- * 'isRootCauseServiceRequestImpactStatistics' - The impact statistics of the root cause service. This includes the number of requests to the client service and whether the requests were faults or okay.
--
-- * 'isLastUpdateTime' - The time, in Unix seconds, that the insight was last updated.
--
-- * 'isGroupName' - The name of the group that the insight belongs to.
--
-- * 'isStartTime' - The time, in Unix seconds, at which the insight began.
--
-- * 'isEndTime' - The time, in Unix seconds, at which the insight ended.
--
-- * 'isRootCauseServiceId' - Undocumented member.
--
-- * 'isState' - The current state of the insight.
--
-- * 'isSummary' - A brief description of the insight.
--
-- * 'isTopAnomalousServices' - The service within the insight that is most impacted by the incident.
--
-- * 'isCategories' - Categories The categories that label and describe the type of insight.
--
-- * 'isInsightId' - The insights unique identifier.
--
-- * 'isGroupARN' - The Amazon Resource Name (ARN) of the group that the insight belongs to.
insightSummary ::
  InsightSummary
insightSummary =
  InsightSummary'
    { _isClientRequestImpactStatistics =
        Nothing,
      _isRootCauseServiceRequestImpactStatistics = Nothing,
      _isLastUpdateTime = Nothing,
      _isGroupName = Nothing,
      _isStartTime = Nothing,
      _isEndTime = Nothing,
      _isRootCauseServiceId = Nothing,
      _isState = Nothing,
      _isSummary = Nothing,
      _isTopAnomalousServices = Nothing,
      _isCategories = Nothing,
      _isInsightId = Nothing,
      _isGroupARN = Nothing
    }

-- | The impact statistics of the client side service. This includes the number of requests to the client service and whether the requests were faults or okay.
isClientRequestImpactStatistics :: Lens' InsightSummary (Maybe RequestImpactStatistics)
isClientRequestImpactStatistics = lens _isClientRequestImpactStatistics (\s a -> s {_isClientRequestImpactStatistics = a})

-- | The impact statistics of the root cause service. This includes the number of requests to the client service and whether the requests were faults or okay.
isRootCauseServiceRequestImpactStatistics :: Lens' InsightSummary (Maybe RequestImpactStatistics)
isRootCauseServiceRequestImpactStatistics = lens _isRootCauseServiceRequestImpactStatistics (\s a -> s {_isRootCauseServiceRequestImpactStatistics = a})

-- | The time, in Unix seconds, that the insight was last updated.
isLastUpdateTime :: Lens' InsightSummary (Maybe UTCTime)
isLastUpdateTime = lens _isLastUpdateTime (\s a -> s {_isLastUpdateTime = a}) . mapping _Time

-- | The name of the group that the insight belongs to.
isGroupName :: Lens' InsightSummary (Maybe Text)
isGroupName = lens _isGroupName (\s a -> s {_isGroupName = a})

-- | The time, in Unix seconds, at which the insight began.
isStartTime :: Lens' InsightSummary (Maybe UTCTime)
isStartTime = lens _isStartTime (\s a -> s {_isStartTime = a}) . mapping _Time

-- | The time, in Unix seconds, at which the insight ended.
isEndTime :: Lens' InsightSummary (Maybe UTCTime)
isEndTime = lens _isEndTime (\s a -> s {_isEndTime = a}) . mapping _Time

-- | Undocumented member.
isRootCauseServiceId :: Lens' InsightSummary (Maybe ServiceId)
isRootCauseServiceId = lens _isRootCauseServiceId (\s a -> s {_isRootCauseServiceId = a})

-- | The current state of the insight.
isState :: Lens' InsightSummary (Maybe InsightState)
isState = lens _isState (\s a -> s {_isState = a})

-- | A brief description of the insight.
isSummary :: Lens' InsightSummary (Maybe Text)
isSummary = lens _isSummary (\s a -> s {_isSummary = a})

-- | The service within the insight that is most impacted by the incident.
isTopAnomalousServices :: Lens' InsightSummary [AnomalousService]
isTopAnomalousServices = lens _isTopAnomalousServices (\s a -> s {_isTopAnomalousServices = a}) . _Default . _Coerce

-- | Categories The categories that label and describe the type of insight.
isCategories :: Lens' InsightSummary [InsightCategory]
isCategories = lens _isCategories (\s a -> s {_isCategories = a}) . _Default . _Coerce

-- | The insights unique identifier.
isInsightId :: Lens' InsightSummary (Maybe Text)
isInsightId = lens _isInsightId (\s a -> s {_isInsightId = a})

-- | The Amazon Resource Name (ARN) of the group that the insight belongs to.
isGroupARN :: Lens' InsightSummary (Maybe Text)
isGroupARN = lens _isGroupARN (\s a -> s {_isGroupARN = a})

instance FromJSON InsightSummary where
  parseJSON =
    withObject
      "InsightSummary"
      ( \x ->
          InsightSummary'
            <$> (x .:? "ClientRequestImpactStatistics")
            <*> (x .:? "RootCauseServiceRequestImpactStatistics")
            <*> (x .:? "LastUpdateTime")
            <*> (x .:? "GroupName")
            <*> (x .:? "StartTime")
            <*> (x .:? "EndTime")
            <*> (x .:? "RootCauseServiceId")
            <*> (x .:? "State")
            <*> (x .:? "Summary")
            <*> (x .:? "TopAnomalousServices" .!= mempty)
            <*> (x .:? "Categories" .!= mempty)
            <*> (x .:? "InsightId")
            <*> (x .:? "GroupARN")
      )

instance Hashable InsightSummary

instance NFData InsightSummary
