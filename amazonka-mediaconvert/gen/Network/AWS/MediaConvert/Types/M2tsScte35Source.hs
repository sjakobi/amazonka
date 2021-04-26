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
-- Module      : Network.AWS.MediaConvert.Types.M2tsScte35Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsScte35Source
  ( M2tsScte35Source
      ( ..,
        M2tsScte35SourceNONE,
        M2tsScte35SourcePASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH)
-- if you want SCTE-35 markers that appear in your input to also appear in
-- this output. Choose None (NONE) if you don\'t want SCTE-35 markers in
-- this output. For SCTE-35 markers from an ESAM XML document-- Choose None
-- (NONE). Also provide the ESAM XML as a string in the setting Signal
-- processing notification XML (sccXml). Also enable ESAM SCTE-35 (include
-- the property scte35Esam).
newtype M2tsScte35Source = M2tsScte35Source'
  { fromM2tsScte35Source ::
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

pattern M2tsScte35SourceNONE :: M2tsScte35Source
pattern M2tsScte35SourceNONE = M2tsScte35Source' "NONE"

pattern M2tsScte35SourcePASSTHROUGH :: M2tsScte35Source
pattern M2tsScte35SourcePASSTHROUGH = M2tsScte35Source' "PASSTHROUGH"

{-# COMPLETE
  M2tsScte35SourceNONE,
  M2tsScte35SourcePASSTHROUGH,
  M2tsScte35Source'
  #-}

instance Prelude.FromText M2tsScte35Source where
  parser = M2tsScte35Source' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsScte35Source where
  toText (M2tsScte35Source' x) = x

instance Prelude.Hashable M2tsScte35Source

instance Prelude.NFData M2tsScte35Source

instance Prelude.ToByteString M2tsScte35Source

instance Prelude.ToQuery M2tsScte35Source

instance Prelude.ToHeader M2tsScte35Source

instance Prelude.ToJSON M2tsScte35Source where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsScte35Source where
  parseJSON = Prelude.parseJSONText "M2tsScte35Source"
