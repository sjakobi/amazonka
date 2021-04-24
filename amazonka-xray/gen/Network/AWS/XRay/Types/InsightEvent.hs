{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.InsightEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightEvent where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.AnomalousService
import Network.AWS.XRay.Types.RequestImpactStatistics

-- | X-Ray reevaluates insights periodically until they are resolved, and records each intermediate state in an event. You can review incident events in the Impact Timeline on the Inspect page in the X-Ray console.
--
--
--
-- /See:/ 'insightEvent' smart constructor.
data InsightEvent = InsightEvent'
  { _ieClientRequestImpactStatistics ::
      !(Maybe RequestImpactStatistics),
    _ieRootCauseServiceRequestImpactStatistics ::
      !(Maybe RequestImpactStatistics),
    _ieSummary :: !(Maybe Text),
    _ieTopAnomalousServices ::
      !(Maybe [AnomalousService]),
    _ieEventTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InsightEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieClientRequestImpactStatistics' - The impact statistics of the client side service. This includes the number of requests to the client service and whether the requests were faults or okay.
--
-- * 'ieRootCauseServiceRequestImpactStatistics' - The impact statistics of the root cause service. This includes the number of requests to the client service and whether the requests were faults or okay.
--
-- * 'ieSummary' - A brief description of the event.
--
-- * 'ieTopAnomalousServices' - The service during the event that is most impacted by the incident.
--
-- * 'ieEventTime' - The time, in Unix seconds, at which the event was recorded.
insightEvent ::
  InsightEvent
insightEvent =
  InsightEvent'
    { _ieClientRequestImpactStatistics =
        Nothing,
      _ieRootCauseServiceRequestImpactStatistics = Nothing,
      _ieSummary = Nothing,
      _ieTopAnomalousServices = Nothing,
      _ieEventTime = Nothing
    }

-- | The impact statistics of the client side service. This includes the number of requests to the client service and whether the requests were faults or okay.
ieClientRequestImpactStatistics :: Lens' InsightEvent (Maybe RequestImpactStatistics)
ieClientRequestImpactStatistics = lens _ieClientRequestImpactStatistics (\s a -> s {_ieClientRequestImpactStatistics = a})

-- | The impact statistics of the root cause service. This includes the number of requests to the client service and whether the requests were faults or okay.
ieRootCauseServiceRequestImpactStatistics :: Lens' InsightEvent (Maybe RequestImpactStatistics)
ieRootCauseServiceRequestImpactStatistics = lens _ieRootCauseServiceRequestImpactStatistics (\s a -> s {_ieRootCauseServiceRequestImpactStatistics = a})

-- | A brief description of the event.
ieSummary :: Lens' InsightEvent (Maybe Text)
ieSummary = lens _ieSummary (\s a -> s {_ieSummary = a})

-- | The service during the event that is most impacted by the incident.
ieTopAnomalousServices :: Lens' InsightEvent [AnomalousService]
ieTopAnomalousServices = lens _ieTopAnomalousServices (\s a -> s {_ieTopAnomalousServices = a}) . _Default . _Coerce

-- | The time, in Unix seconds, at which the event was recorded.
ieEventTime :: Lens' InsightEvent (Maybe UTCTime)
ieEventTime = lens _ieEventTime (\s a -> s {_ieEventTime = a}) . mapping _Time

instance FromJSON InsightEvent where
  parseJSON =
    withObject
      "InsightEvent"
      ( \x ->
          InsightEvent'
            <$> (x .:? "ClientRequestImpactStatistics")
            <*> (x .:? "RootCauseServiceRequestImpactStatistics")
            <*> (x .:? "Summary")
            <*> (x .:? "TopAnomalousServices" .!= mempty)
            <*> (x .:? "EventTime")
      )

instance Hashable InsightEvent

instance NFData InsightEvent
