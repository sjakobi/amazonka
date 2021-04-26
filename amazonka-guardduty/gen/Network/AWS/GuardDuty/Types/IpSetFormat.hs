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
-- Module      : Network.AWS.GuardDuty.Types.IpSetFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.IpSetFormat
  ( IpSetFormat
      ( ..,
        IpSetFormatALIENVAULT,
        IpSetFormatFIREEYE,
        IpSetFormatOTXCSV,
        IpSetFormatPROOFPOINT,
        IpSetFormatSTIX,
        IpSetFormatTXT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpSetFormat = IpSetFormat'
  { fromIpSetFormat ::
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

pattern IpSetFormatALIENVAULT :: IpSetFormat
pattern IpSetFormatALIENVAULT = IpSetFormat' "ALIEN_VAULT"

pattern IpSetFormatFIREEYE :: IpSetFormat
pattern IpSetFormatFIREEYE = IpSetFormat' "FIRE_EYE"

pattern IpSetFormatOTXCSV :: IpSetFormat
pattern IpSetFormatOTXCSV = IpSetFormat' "OTX_CSV"

pattern IpSetFormatPROOFPOINT :: IpSetFormat
pattern IpSetFormatPROOFPOINT = IpSetFormat' "PROOF_POINT"

pattern IpSetFormatSTIX :: IpSetFormat
pattern IpSetFormatSTIX = IpSetFormat' "STIX"

pattern IpSetFormatTXT :: IpSetFormat
pattern IpSetFormatTXT = IpSetFormat' "TXT"

{-# COMPLETE
  IpSetFormatALIENVAULT,
  IpSetFormatFIREEYE,
  IpSetFormatOTXCSV,
  IpSetFormatPROOFPOINT,
  IpSetFormatSTIX,
  IpSetFormatTXT,
  IpSetFormat'
  #-}

instance Prelude.FromText IpSetFormat where
  parser = IpSetFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText IpSetFormat where
  toText (IpSetFormat' x) = x

instance Prelude.Hashable IpSetFormat

instance Prelude.NFData IpSetFormat

instance Prelude.ToByteString IpSetFormat

instance Prelude.ToQuery IpSetFormat

instance Prelude.ToHeader IpSetFormat

instance Prelude.ToJSON IpSetFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IpSetFormat where
  parseJSON = Prelude.parseJSONText "IpSetFormat"
