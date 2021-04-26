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
-- Module      : Network.AWS.MediaConvert.Types.M3u8Scte35Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M3u8Scte35Source
  ( M3u8Scte35Source
      ( ..,
        M3u8Scte35SourceNONE,
        M3u8Scte35SourcePASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH)
-- if you want SCTE-35 markers that appear in your input to also appear in
-- this output. Choose None (NONE) if you don\'t want SCTE-35 markers in
-- this output. For SCTE-35 markers from an ESAM XML document-- Choose None
-- (NONE) if you don\'t want manifest conditioning. Choose Passthrough
-- (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest
-- conditioning. In both cases, also provide the ESAM XML as a string in
-- the setting Signal processing notification XML (sccXml).
newtype M3u8Scte35Source = M3u8Scte35Source'
  { fromM3u8Scte35Source ::
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

pattern M3u8Scte35SourceNONE :: M3u8Scte35Source
pattern M3u8Scte35SourceNONE = M3u8Scte35Source' "NONE"

pattern M3u8Scte35SourcePASSTHROUGH :: M3u8Scte35Source
pattern M3u8Scte35SourcePASSTHROUGH = M3u8Scte35Source' "PASSTHROUGH"

{-# COMPLETE
  M3u8Scte35SourceNONE,
  M3u8Scte35SourcePASSTHROUGH,
  M3u8Scte35Source'
  #-}

instance Prelude.FromText M3u8Scte35Source where
  parser = M3u8Scte35Source' Prelude.<$> Prelude.takeText

instance Prelude.ToText M3u8Scte35Source where
  toText (M3u8Scte35Source' x) = x

instance Prelude.Hashable M3u8Scte35Source

instance Prelude.NFData M3u8Scte35Source

instance Prelude.ToByteString M3u8Scte35Source

instance Prelude.ToQuery M3u8Scte35Source

instance Prelude.ToHeader M3u8Scte35Source

instance Prelude.ToJSON M3u8Scte35Source where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M3u8Scte35Source where
  parseJSON = Prelude.parseJSONText "M3u8Scte35Source"
