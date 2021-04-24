{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.HistoricalMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HistoricalMetricName
  ( HistoricalMetricName
      ( ..,
        APIContactsHandled,
        AbandonTime,
        AfterContactWorkTime,
        CallbackContactsHandled,
        ContactsAbandoned,
        ContactsAgentHungUpFirst,
        ContactsConsulted,
        ContactsHandled,
        ContactsHandledIncoming,
        ContactsHandledOutbound,
        ContactsHoldAbandons,
        ContactsMissed,
        ContactsQueued,
        ContactsTransferredIn,
        ContactsTransferredInFromQueue,
        ContactsTransferredOut,
        ContactsTransferredOutFromQueue,
        HandleTime,
        HoldTime,
        InteractionAndHoldTime,
        InteractionTime,
        Occupancy,
        QueueAnswerTime,
        QueuedTime,
        ServiceLevel
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The historical metric names.
data HistoricalMetricName
  = HistoricalMetricName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern APIContactsHandled :: HistoricalMetricName
pattern APIContactsHandled = HistoricalMetricName' "API_CONTACTS_HANDLED"

pattern AbandonTime :: HistoricalMetricName
pattern AbandonTime = HistoricalMetricName' "ABANDON_TIME"

pattern AfterContactWorkTime :: HistoricalMetricName
pattern AfterContactWorkTime = HistoricalMetricName' "AFTER_CONTACT_WORK_TIME"

pattern CallbackContactsHandled :: HistoricalMetricName
pattern CallbackContactsHandled = HistoricalMetricName' "CALLBACK_CONTACTS_HANDLED"

pattern ContactsAbandoned :: HistoricalMetricName
pattern ContactsAbandoned = HistoricalMetricName' "CONTACTS_ABANDONED"

pattern ContactsAgentHungUpFirst :: HistoricalMetricName
pattern ContactsAgentHungUpFirst = HistoricalMetricName' "CONTACTS_AGENT_HUNG_UP_FIRST"

pattern ContactsConsulted :: HistoricalMetricName
pattern ContactsConsulted = HistoricalMetricName' "CONTACTS_CONSULTED"

pattern ContactsHandled :: HistoricalMetricName
pattern ContactsHandled = HistoricalMetricName' "CONTACTS_HANDLED"

pattern ContactsHandledIncoming :: HistoricalMetricName
pattern ContactsHandledIncoming = HistoricalMetricName' "CONTACTS_HANDLED_INCOMING"

pattern ContactsHandledOutbound :: HistoricalMetricName
pattern ContactsHandledOutbound = HistoricalMetricName' "CONTACTS_HANDLED_OUTBOUND"

pattern ContactsHoldAbandons :: HistoricalMetricName
pattern ContactsHoldAbandons = HistoricalMetricName' "CONTACTS_HOLD_ABANDONS"

pattern ContactsMissed :: HistoricalMetricName
pattern ContactsMissed = HistoricalMetricName' "CONTACTS_MISSED"

pattern ContactsQueued :: HistoricalMetricName
pattern ContactsQueued = HistoricalMetricName' "CONTACTS_QUEUED"

pattern ContactsTransferredIn :: HistoricalMetricName
pattern ContactsTransferredIn = HistoricalMetricName' "CONTACTS_TRANSFERRED_IN"

pattern ContactsTransferredInFromQueue :: HistoricalMetricName
pattern ContactsTransferredInFromQueue = HistoricalMetricName' "CONTACTS_TRANSFERRED_IN_FROM_QUEUE"

pattern ContactsTransferredOut :: HistoricalMetricName
pattern ContactsTransferredOut = HistoricalMetricName' "CONTACTS_TRANSFERRED_OUT"

pattern ContactsTransferredOutFromQueue :: HistoricalMetricName
pattern ContactsTransferredOutFromQueue = HistoricalMetricName' "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"

pattern HandleTime :: HistoricalMetricName
pattern HandleTime = HistoricalMetricName' "HANDLE_TIME"

pattern HoldTime :: HistoricalMetricName
pattern HoldTime = HistoricalMetricName' "HOLD_TIME"

pattern InteractionAndHoldTime :: HistoricalMetricName
pattern InteractionAndHoldTime = HistoricalMetricName' "INTERACTION_AND_HOLD_TIME"

pattern InteractionTime :: HistoricalMetricName
pattern InteractionTime = HistoricalMetricName' "INTERACTION_TIME"

pattern Occupancy :: HistoricalMetricName
pattern Occupancy = HistoricalMetricName' "OCCUPANCY"

pattern QueueAnswerTime :: HistoricalMetricName
pattern QueueAnswerTime = HistoricalMetricName' "QUEUE_ANSWER_TIME"

pattern QueuedTime :: HistoricalMetricName
pattern QueuedTime = HistoricalMetricName' "QUEUED_TIME"

pattern ServiceLevel :: HistoricalMetricName
pattern ServiceLevel = HistoricalMetricName' "SERVICE_LEVEL"

{-# COMPLETE
  APIContactsHandled,
  AbandonTime,
  AfterContactWorkTime,
  CallbackContactsHandled,
  ContactsAbandoned,
  ContactsAgentHungUpFirst,
  ContactsConsulted,
  ContactsHandled,
  ContactsHandledIncoming,
  ContactsHandledOutbound,
  ContactsHoldAbandons,
  ContactsMissed,
  ContactsQueued,
  ContactsTransferredIn,
  ContactsTransferredInFromQueue,
  ContactsTransferredOut,
  ContactsTransferredOutFromQueue,
  HandleTime,
  HoldTime,
  InteractionAndHoldTime,
  InteractionTime,
  Occupancy,
  QueueAnswerTime,
  QueuedTime,
  ServiceLevel,
  HistoricalMetricName'
  #-}

instance FromText HistoricalMetricName where
  parser = (HistoricalMetricName' . mk) <$> takeText

instance ToText HistoricalMetricName where
  toText (HistoricalMetricName' ci) = original ci

instance Hashable HistoricalMetricName

instance NFData HistoricalMetricName

instance ToByteString HistoricalMetricName

instance ToQuery HistoricalMetricName

instance ToHeader HistoricalMetricName

instance ToJSON HistoricalMetricName where
  toJSON = toJSONText

instance FromJSON HistoricalMetricName where
  parseJSON = parseJSONText "HistoricalMetricName"
