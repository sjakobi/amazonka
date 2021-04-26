{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ThreatIntelSetFormatALIENVAULT,
        ThreatIntelSetFormatFIREEYE,
        ThreatIntelSetFormatOTXCSV,
        ThreatIntelSetFormatPROOFPOINT,
        ThreatIntelSetFormatSTIX,
        ThreatIntelSetFormatTXT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ThreatIntelSetFormat = ThreatIntelSetFormat'
  { fromThreatIntelSetFormat ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ThreatIntelSetFormatALIENVAULT :: ThreatIntelSetFormat
pattern ThreatIntelSetFormatALIENVAULT = ThreatIntelSetFormat' "ALIEN_VAULT"

pattern ThreatIntelSetFormatFIREEYE :: ThreatIntelSetFormat
pattern ThreatIntelSetFormatFIREEYE = ThreatIntelSetFormat' "FIRE_EYE"

pattern ThreatIntelSetFormatOTXCSV :: ThreatIntelSetFormat
pattern ThreatIntelSetFormatOTXCSV = ThreatIntelSetFormat' "OTX_CSV"

pattern ThreatIntelSetFormatPROOFPOINT :: ThreatIntelSetFormat
pattern ThreatIntelSetFormatPROOFPOINT = ThreatIntelSetFormat' "PROOF_POINT"

pattern ThreatIntelSetFormatSTIX :: ThreatIntelSetFormat
pattern ThreatIntelSetFormatSTIX = ThreatIntelSetFormat' "STIX"

pattern ThreatIntelSetFormatTXT :: ThreatIntelSetFormat
pattern ThreatIntelSetFormatTXT = ThreatIntelSetFormat' "TXT"

{-# COMPLETE
  ThreatIntelSetFormatALIENVAULT,
  ThreatIntelSetFormatFIREEYE,
  ThreatIntelSetFormatOTXCSV,
  ThreatIntelSetFormatPROOFPOINT,
  ThreatIntelSetFormatSTIX,
  ThreatIntelSetFormatTXT,
  ThreatIntelSetFormat'
  #-}

instance Prelude.FromText ThreatIntelSetFormat where
  parser = ThreatIntelSetFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ThreatIntelSetFormat where
  toText (ThreatIntelSetFormat' x) = x

instance Prelude.Hashable ThreatIntelSetFormat

instance Prelude.NFData ThreatIntelSetFormat

instance Prelude.ToByteString ThreatIntelSetFormat

instance Prelude.ToQuery ThreatIntelSetFormat

instance Prelude.ToHeader ThreatIntelSetFormat

instance Prelude.ToJSON ThreatIntelSetFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ThreatIntelSetFormat where
  parseJSON = Prelude.parseJSONText "ThreatIntelSetFormat"
