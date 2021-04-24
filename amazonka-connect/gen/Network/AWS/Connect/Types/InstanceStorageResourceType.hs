{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.InstanceStorageResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceStorageResourceType
  ( InstanceStorageResourceType
      ( ..,
        AgentEvents,
        CallRecordings,
        ChatTranscripts,
        ContactTraceRecords,
        MediaStreams,
        ScheduledReports
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceStorageResourceType
  = InstanceStorageResourceType'
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

pattern AgentEvents :: InstanceStorageResourceType
pattern AgentEvents = InstanceStorageResourceType' "AGENT_EVENTS"

pattern CallRecordings :: InstanceStorageResourceType
pattern CallRecordings = InstanceStorageResourceType' "CALL_RECORDINGS"

pattern ChatTranscripts :: InstanceStorageResourceType
pattern ChatTranscripts = InstanceStorageResourceType' "CHAT_TRANSCRIPTS"

pattern ContactTraceRecords :: InstanceStorageResourceType
pattern ContactTraceRecords = InstanceStorageResourceType' "CONTACT_TRACE_RECORDS"

pattern MediaStreams :: InstanceStorageResourceType
pattern MediaStreams = InstanceStorageResourceType' "MEDIA_STREAMS"

pattern ScheduledReports :: InstanceStorageResourceType
pattern ScheduledReports = InstanceStorageResourceType' "SCHEDULED_REPORTS"

{-# COMPLETE
  AgentEvents,
  CallRecordings,
  ChatTranscripts,
  ContactTraceRecords,
  MediaStreams,
  ScheduledReports,
  InstanceStorageResourceType'
  #-}

instance FromText InstanceStorageResourceType where
  parser = (InstanceStorageResourceType' . mk) <$> takeText

instance ToText InstanceStorageResourceType where
  toText (InstanceStorageResourceType' ci) = original ci

instance Hashable InstanceStorageResourceType

instance NFData InstanceStorageResourceType

instance ToByteString InstanceStorageResourceType

instance ToQuery InstanceStorageResourceType

instance ToHeader InstanceStorageResourceType

instance ToJSON InstanceStorageResourceType where
  toJSON = toJSONText
