{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ChannelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ChannelType
  ( ChannelType
      ( ..,
        CTADM,
        CTAPNS,
        CTAPNSSandbox,
        CTAPNSVoip,
        CTAPNSVoipSandbox,
        CTBaidu,
        CTCustom,
        CTEmail,
        CTGCM,
        CTPush,
        CTSms,
        CTVoice
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChannelType = ChannelType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CTADM :: ChannelType
pattern CTADM = ChannelType' "ADM"

pattern CTAPNS :: ChannelType
pattern CTAPNS = ChannelType' "APNS"

pattern CTAPNSSandbox :: ChannelType
pattern CTAPNSSandbox = ChannelType' "APNS_SANDBOX"

pattern CTAPNSVoip :: ChannelType
pattern CTAPNSVoip = ChannelType' "APNS_VOIP"

pattern CTAPNSVoipSandbox :: ChannelType
pattern CTAPNSVoipSandbox = ChannelType' "APNS_VOIP_SANDBOX"

pattern CTBaidu :: ChannelType
pattern CTBaidu = ChannelType' "BAIDU"

pattern CTCustom :: ChannelType
pattern CTCustom = ChannelType' "CUSTOM"

pattern CTEmail :: ChannelType
pattern CTEmail = ChannelType' "EMAIL"

pattern CTGCM :: ChannelType
pattern CTGCM = ChannelType' "GCM"

pattern CTPush :: ChannelType
pattern CTPush = ChannelType' "PUSH"

pattern CTSms :: ChannelType
pattern CTSms = ChannelType' "SMS"

pattern CTVoice :: ChannelType
pattern CTVoice = ChannelType' "VOICE"

{-# COMPLETE
  CTADM,
  CTAPNS,
  CTAPNSSandbox,
  CTAPNSVoip,
  CTAPNSVoipSandbox,
  CTBaidu,
  CTCustom,
  CTEmail,
  CTGCM,
  CTPush,
  CTSms,
  CTVoice,
  ChannelType'
  #-}

instance FromText ChannelType where
  parser = (ChannelType' . mk) <$> takeText

instance ToText ChannelType where
  toText (ChannelType' ci) = original ci

instance Hashable ChannelType

instance NFData ChannelType

instance ToByteString ChannelType

instance ToQuery ChannelType

instance ToHeader ChannelType

instance ToJSON ChannelType where
  toJSON = toJSONText

instance FromJSON ChannelType where
  parseJSON = parseJSONText "ChannelType"
