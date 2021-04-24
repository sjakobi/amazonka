{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.IPSetFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.IPSetFormat
  ( IPSetFormat
      ( ..,
        AlienVault,
        FireEye,
        OtxCSV,
        ProofPoint,
        Stix,
        Txt
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPSetFormat = IPSetFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AlienVault :: IPSetFormat
pattern AlienVault = IPSetFormat' "ALIEN_VAULT"

pattern FireEye :: IPSetFormat
pattern FireEye = IPSetFormat' "FIRE_EYE"

pattern OtxCSV :: IPSetFormat
pattern OtxCSV = IPSetFormat' "OTX_CSV"

pattern ProofPoint :: IPSetFormat
pattern ProofPoint = IPSetFormat' "PROOF_POINT"

pattern Stix :: IPSetFormat
pattern Stix = IPSetFormat' "STIX"

pattern Txt :: IPSetFormat
pattern Txt = IPSetFormat' "TXT"

{-# COMPLETE
  AlienVault,
  FireEye,
  OtxCSV,
  ProofPoint,
  Stix,
  Txt,
  IPSetFormat'
  #-}

instance FromText IPSetFormat where
  parser = (IPSetFormat' . mk) <$> takeText

instance ToText IPSetFormat where
  toText (IPSetFormat' ci) = original ci

instance Hashable IPSetFormat

instance NFData IPSetFormat

instance ToByteString IPSetFormat

instance ToQuery IPSetFormat

instance ToHeader IPSetFormat

instance ToJSON IPSetFormat where
  toJSON = toJSONText

instance FromJSON IPSetFormat where
  parseJSON = parseJSONText "IPSetFormat"
