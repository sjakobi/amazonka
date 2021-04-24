{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.InstanceAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceAttributeType
  ( InstanceAttributeType
      ( ..,
        AutoResolveBestVoices,
        ContactLens,
        ContactflowLogs,
        EarlyMedia,
        InboundCalls,
        OutboundCalls,
        UseCustomTtsVoices
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceAttributeType
  = InstanceAttributeType'
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

pattern AutoResolveBestVoices :: InstanceAttributeType
pattern AutoResolveBestVoices = InstanceAttributeType' "AUTO_RESOLVE_BEST_VOICES"

pattern ContactLens :: InstanceAttributeType
pattern ContactLens = InstanceAttributeType' "CONTACT_LENS"

pattern ContactflowLogs :: InstanceAttributeType
pattern ContactflowLogs = InstanceAttributeType' "CONTACTFLOW_LOGS"

pattern EarlyMedia :: InstanceAttributeType
pattern EarlyMedia = InstanceAttributeType' "EARLY_MEDIA"

pattern InboundCalls :: InstanceAttributeType
pattern InboundCalls = InstanceAttributeType' "INBOUND_CALLS"

pattern OutboundCalls :: InstanceAttributeType
pattern OutboundCalls = InstanceAttributeType' "OUTBOUND_CALLS"

pattern UseCustomTtsVoices :: InstanceAttributeType
pattern UseCustomTtsVoices = InstanceAttributeType' "USE_CUSTOM_TTS_VOICES"

{-# COMPLETE
  AutoResolveBestVoices,
  ContactLens,
  ContactflowLogs,
  EarlyMedia,
  InboundCalls,
  OutboundCalls,
  UseCustomTtsVoices,
  InstanceAttributeType'
  #-}

instance FromText InstanceAttributeType where
  parser = (InstanceAttributeType' . mk) <$> takeText

instance ToText InstanceAttributeType where
  toText (InstanceAttributeType' ci) = original ci

instance Hashable InstanceAttributeType

instance NFData InstanceAttributeType

instance ToByteString InstanceAttributeType

instance ToQuery InstanceAttributeType

instance ToHeader InstanceAttributeType

instance ToJSON InstanceAttributeType where
  toJSON = toJSONText

instance FromJSON InstanceAttributeType where
  parseJSON = parseJSONText "InstanceAttributeType"
