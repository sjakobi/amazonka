{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.ThreatIntelSetFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.ThreatIntelSetFormat
  ( ThreatIntelSetFormat
      ( ..,
        TISFAlienVault,
        TISFFireEye,
        TISFOtxCSV,
        TISFProofPoint,
        TISFStix,
        TISFTxt
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ThreatIntelSetFormat
  = ThreatIntelSetFormat'
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

pattern TISFAlienVault :: ThreatIntelSetFormat
pattern TISFAlienVault = ThreatIntelSetFormat' "ALIEN_VAULT"

pattern TISFFireEye :: ThreatIntelSetFormat
pattern TISFFireEye = ThreatIntelSetFormat' "FIRE_EYE"

pattern TISFOtxCSV :: ThreatIntelSetFormat
pattern TISFOtxCSV = ThreatIntelSetFormat' "OTX_CSV"

pattern TISFProofPoint :: ThreatIntelSetFormat
pattern TISFProofPoint = ThreatIntelSetFormat' "PROOF_POINT"

pattern TISFStix :: ThreatIntelSetFormat
pattern TISFStix = ThreatIntelSetFormat' "STIX"

pattern TISFTxt :: ThreatIntelSetFormat
pattern TISFTxt = ThreatIntelSetFormat' "TXT"

{-# COMPLETE
  TISFAlienVault,
  TISFFireEye,
  TISFOtxCSV,
  TISFProofPoint,
  TISFStix,
  TISFTxt,
  ThreatIntelSetFormat'
  #-}

instance FromText ThreatIntelSetFormat where
  parser = (ThreatIntelSetFormat' . mk) <$> takeText

instance ToText ThreatIntelSetFormat where
  toText (ThreatIntelSetFormat' ci) = original ci

instance Hashable ThreatIntelSetFormat

instance NFData ThreatIntelSetFormat

instance ToByteString ThreatIntelSetFormat

instance ToQuery ThreatIntelSetFormat

instance ToHeader ThreatIntelSetFormat

instance ToJSON ThreatIntelSetFormat where
  toJSON = toJSONText

instance FromJSON ThreatIntelSetFormat where
  parseJSON = parseJSONText "ThreatIntelSetFormat"
