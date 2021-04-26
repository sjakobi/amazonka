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
-- Module      : Network.AWS.MediaConvert.Types.CaptionDestinationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CaptionDestinationType
  ( CaptionDestinationType
      ( ..,
        CaptionDestinationTypeBURNIN,
        CaptionDestinationTypeDVBSUB,
        CaptionDestinationTypeEMBEDDED,
        CaptionDestinationTypeEMBEDDEDPLUSSCTE20,
        CaptionDestinationTypeIMSC,
        CaptionDestinationTypeSCC,
        CaptionDestinationTypeSCTE20PLUSEMBEDDED,
        CaptionDestinationTypeSMI,
        CaptionDestinationTypeSRT,
        CaptionDestinationTypeTELETEXT,
        CaptionDestinationTypeTTML,
        CaptionDestinationTypeWEBVTT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the format for this set of captions on this output. The default
-- format is embedded without SCTE-20. Other options are embedded with
-- SCTE-20, burn-in, DVB-sub, IMSC, SCC, SRT, teletext, TTML, and web-VTT.
-- If you are using SCTE-20, choose SCTE-20 plus embedded
-- (SCTE20_PLUS_EMBEDDED) to create an output that complies with the
-- SCTE-43 spec. To create a non-compliant output where the embedded
-- captions come first, choose Embedded plus SCTE-20
-- (EMBEDDED_PLUS_SCTE20).
newtype CaptionDestinationType = CaptionDestinationType'
  { fromCaptionDestinationType ::
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

pattern CaptionDestinationTypeBURNIN :: CaptionDestinationType
pattern CaptionDestinationTypeBURNIN = CaptionDestinationType' "BURN_IN"

pattern CaptionDestinationTypeDVBSUB :: CaptionDestinationType
pattern CaptionDestinationTypeDVBSUB = CaptionDestinationType' "DVB_SUB"

pattern CaptionDestinationTypeEMBEDDED :: CaptionDestinationType
pattern CaptionDestinationTypeEMBEDDED = CaptionDestinationType' "EMBEDDED"

pattern CaptionDestinationTypeEMBEDDEDPLUSSCTE20 :: CaptionDestinationType
pattern CaptionDestinationTypeEMBEDDEDPLUSSCTE20 = CaptionDestinationType' "EMBEDDED_PLUS_SCTE20"

pattern CaptionDestinationTypeIMSC :: CaptionDestinationType
pattern CaptionDestinationTypeIMSC = CaptionDestinationType' "IMSC"

pattern CaptionDestinationTypeSCC :: CaptionDestinationType
pattern CaptionDestinationTypeSCC = CaptionDestinationType' "SCC"

pattern CaptionDestinationTypeSCTE20PLUSEMBEDDED :: CaptionDestinationType
pattern CaptionDestinationTypeSCTE20PLUSEMBEDDED = CaptionDestinationType' "SCTE20_PLUS_EMBEDDED"

pattern CaptionDestinationTypeSMI :: CaptionDestinationType
pattern CaptionDestinationTypeSMI = CaptionDestinationType' "SMI"

pattern CaptionDestinationTypeSRT :: CaptionDestinationType
pattern CaptionDestinationTypeSRT = CaptionDestinationType' "SRT"

pattern CaptionDestinationTypeTELETEXT :: CaptionDestinationType
pattern CaptionDestinationTypeTELETEXT = CaptionDestinationType' "TELETEXT"

pattern CaptionDestinationTypeTTML :: CaptionDestinationType
pattern CaptionDestinationTypeTTML = CaptionDestinationType' "TTML"

pattern CaptionDestinationTypeWEBVTT :: CaptionDestinationType
pattern CaptionDestinationTypeWEBVTT = CaptionDestinationType' "WEBVTT"

{-# COMPLETE
  CaptionDestinationTypeBURNIN,
  CaptionDestinationTypeDVBSUB,
  CaptionDestinationTypeEMBEDDED,
  CaptionDestinationTypeEMBEDDEDPLUSSCTE20,
  CaptionDestinationTypeIMSC,
  CaptionDestinationTypeSCC,
  CaptionDestinationTypeSCTE20PLUSEMBEDDED,
  CaptionDestinationTypeSMI,
  CaptionDestinationTypeSRT,
  CaptionDestinationTypeTELETEXT,
  CaptionDestinationTypeTTML,
  CaptionDestinationTypeWEBVTT,
  CaptionDestinationType'
  #-}

instance Prelude.FromText CaptionDestinationType where
  parser = CaptionDestinationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CaptionDestinationType where
  toText (CaptionDestinationType' x) = x

instance Prelude.Hashable CaptionDestinationType

instance Prelude.NFData CaptionDestinationType

instance Prelude.ToByteString CaptionDestinationType

instance Prelude.ToQuery CaptionDestinationType

instance Prelude.ToHeader CaptionDestinationType

instance Prelude.ToJSON CaptionDestinationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CaptionDestinationType where
  parseJSON = Prelude.parseJSONText "CaptionDestinationType"
