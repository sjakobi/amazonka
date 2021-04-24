{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.ConferenceProviderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.ConferenceProviderType
  ( ConferenceProviderType
      ( ..,
        Bluejeans,
        Chime,
        Custom,
        Fuze,
        GoogleHangouts,
        Polycom,
        Ringcentral,
        SkypeForBusiness,
        Webex,
        Zoom
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConferenceProviderType
  = ConferenceProviderType'
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

pattern Bluejeans :: ConferenceProviderType
pattern Bluejeans = ConferenceProviderType' "BLUEJEANS"

pattern Chime :: ConferenceProviderType
pattern Chime = ConferenceProviderType' "CHIME"

pattern Custom :: ConferenceProviderType
pattern Custom = ConferenceProviderType' "CUSTOM"

pattern Fuze :: ConferenceProviderType
pattern Fuze = ConferenceProviderType' "FUZE"

pattern GoogleHangouts :: ConferenceProviderType
pattern GoogleHangouts = ConferenceProviderType' "GOOGLE_HANGOUTS"

pattern Polycom :: ConferenceProviderType
pattern Polycom = ConferenceProviderType' "POLYCOM"

pattern Ringcentral :: ConferenceProviderType
pattern Ringcentral = ConferenceProviderType' "RINGCENTRAL"

pattern SkypeForBusiness :: ConferenceProviderType
pattern SkypeForBusiness = ConferenceProviderType' "SKYPE_FOR_BUSINESS"

pattern Webex :: ConferenceProviderType
pattern Webex = ConferenceProviderType' "WEBEX"

pattern Zoom :: ConferenceProviderType
pattern Zoom = ConferenceProviderType' "ZOOM"

{-# COMPLETE
  Bluejeans,
  Chime,
  Custom,
  Fuze,
  GoogleHangouts,
  Polycom,
  Ringcentral,
  SkypeForBusiness,
  Webex,
  Zoom,
  ConferenceProviderType'
  #-}

instance FromText ConferenceProviderType where
  parser = (ConferenceProviderType' . mk) <$> takeText

instance ToText ConferenceProviderType where
  toText (ConferenceProviderType' ci) = original ci

instance Hashable ConferenceProviderType

instance NFData ConferenceProviderType

instance ToByteString ConferenceProviderType

instance ToQuery ConferenceProviderType

instance ToHeader ConferenceProviderType

instance ToJSON ConferenceProviderType where
  toJSON = toJSONText

instance FromJSON ConferenceProviderType where
  parseJSON = parseJSONText "ConferenceProviderType"
