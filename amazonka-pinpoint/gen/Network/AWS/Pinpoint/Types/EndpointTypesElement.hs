{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointTypesElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointTypesElement
  ( EndpointTypesElement
      ( ..,
        ADM,
        APNS,
        APNSSandbox,
        APNSVoip,
        APNSVoipSandbox,
        Baidu,
        Custom,
        Email,
        GCM,
        Push,
        Sms,
        Voice
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EndpointTypesElement
  = EndpointTypesElement'
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

pattern ADM :: EndpointTypesElement
pattern ADM = EndpointTypesElement' "ADM"

pattern APNS :: EndpointTypesElement
pattern APNS = EndpointTypesElement' "APNS"

pattern APNSSandbox :: EndpointTypesElement
pattern APNSSandbox = EndpointTypesElement' "APNS_SANDBOX"

pattern APNSVoip :: EndpointTypesElement
pattern APNSVoip = EndpointTypesElement' "APNS_VOIP"

pattern APNSVoipSandbox :: EndpointTypesElement
pattern APNSVoipSandbox = EndpointTypesElement' "APNS_VOIP_SANDBOX"

pattern Baidu :: EndpointTypesElement
pattern Baidu = EndpointTypesElement' "BAIDU"

pattern Custom :: EndpointTypesElement
pattern Custom = EndpointTypesElement' "CUSTOM"

pattern Email :: EndpointTypesElement
pattern Email = EndpointTypesElement' "EMAIL"

pattern GCM :: EndpointTypesElement
pattern GCM = EndpointTypesElement' "GCM"

pattern Push :: EndpointTypesElement
pattern Push = EndpointTypesElement' "PUSH"

pattern Sms :: EndpointTypesElement
pattern Sms = EndpointTypesElement' "SMS"

pattern Voice :: EndpointTypesElement
pattern Voice = EndpointTypesElement' "VOICE"

{-# COMPLETE
  ADM,
  APNS,
  APNSSandbox,
  APNSVoip,
  APNSVoipSandbox,
  Baidu,
  Custom,
  Email,
  GCM,
  Push,
  Sms,
  Voice,
  EndpointTypesElement'
  #-}

instance FromText EndpointTypesElement where
  parser = (EndpointTypesElement' . mk) <$> takeText

instance ToText EndpointTypesElement where
  toText (EndpointTypesElement' ci) = original ci

instance Hashable EndpointTypesElement

instance NFData EndpointTypesElement

instance ToByteString EndpointTypesElement

instance ToQuery EndpointTypesElement

instance ToHeader EndpointTypesElement

instance ToJSON EndpointTypesElement where
  toJSON = toJSONText

instance FromJSON EndpointTypesElement where
  parseJSON = parseJSONText "EndpointTypesElement"
