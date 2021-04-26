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
-- Module      : Network.AWS.MediaConvert.Types.MpdScte35Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MpdScte35Source
  ( MpdScte35Source
      ( ..,
        MpdScte35SourceNONE,
        MpdScte35SourcePASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ignore this setting unless you have SCTE-35 markers in your input video
-- file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that
-- appear in your input to also appear in this output. Choose None (NONE)
-- if you don\'t want those SCTE-35 markers in this output.
newtype MpdScte35Source = MpdScte35Source'
  { fromMpdScte35Source ::
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

pattern MpdScte35SourceNONE :: MpdScte35Source
pattern MpdScte35SourceNONE = MpdScte35Source' "NONE"

pattern MpdScte35SourcePASSTHROUGH :: MpdScte35Source
pattern MpdScte35SourcePASSTHROUGH = MpdScte35Source' "PASSTHROUGH"

{-# COMPLETE
  MpdScte35SourceNONE,
  MpdScte35SourcePASSTHROUGH,
  MpdScte35Source'
  #-}

instance Prelude.FromText MpdScte35Source where
  parser = MpdScte35Source' Prelude.<$> Prelude.takeText

instance Prelude.ToText MpdScte35Source where
  toText (MpdScte35Source' x) = x

instance Prelude.Hashable MpdScte35Source

instance Prelude.NFData MpdScte35Source

instance Prelude.ToByteString MpdScte35Source

instance Prelude.ToQuery MpdScte35Source

instance Prelude.ToHeader MpdScte35Source

instance Prelude.ToJSON MpdScte35Source where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MpdScte35Source where
  parseJSON = Prelude.parseJSONText "MpdScte35Source"
