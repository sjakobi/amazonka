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
-- Module      : Network.AWS.MediaLive.Types.TemporalFilterPostFilterSharpening
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TemporalFilterPostFilterSharpening
  ( TemporalFilterPostFilterSharpening
      ( ..,
        TemporalFilterPostFilterSharpeningAUTO,
        TemporalFilterPostFilterSharpeningDISABLED,
        TemporalFilterPostFilterSharpeningENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Temporal Filter Post Filter Sharpening
newtype TemporalFilterPostFilterSharpening = TemporalFilterPostFilterSharpening'
  { fromTemporalFilterPostFilterSharpening ::
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

pattern TemporalFilterPostFilterSharpeningAUTO :: TemporalFilterPostFilterSharpening
pattern TemporalFilterPostFilterSharpeningAUTO = TemporalFilterPostFilterSharpening' "AUTO"

pattern TemporalFilterPostFilterSharpeningDISABLED :: TemporalFilterPostFilterSharpening
pattern TemporalFilterPostFilterSharpeningDISABLED = TemporalFilterPostFilterSharpening' "DISABLED"

pattern TemporalFilterPostFilterSharpeningENABLED :: TemporalFilterPostFilterSharpening
pattern TemporalFilterPostFilterSharpeningENABLED = TemporalFilterPostFilterSharpening' "ENABLED"

{-# COMPLETE
  TemporalFilterPostFilterSharpeningAUTO,
  TemporalFilterPostFilterSharpeningDISABLED,
  TemporalFilterPostFilterSharpeningENABLED,
  TemporalFilterPostFilterSharpening'
  #-}

instance Prelude.FromText TemporalFilterPostFilterSharpening where
  parser = TemporalFilterPostFilterSharpening' Prelude.<$> Prelude.takeText

instance Prelude.ToText TemporalFilterPostFilterSharpening where
  toText (TemporalFilterPostFilterSharpening' x) = x

instance Prelude.Hashable TemporalFilterPostFilterSharpening

instance Prelude.NFData TemporalFilterPostFilterSharpening

instance Prelude.ToByteString TemporalFilterPostFilterSharpening

instance Prelude.ToQuery TemporalFilterPostFilterSharpening

instance Prelude.ToHeader TemporalFilterPostFilterSharpening

instance Prelude.ToJSON TemporalFilterPostFilterSharpening where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TemporalFilterPostFilterSharpening where
  parseJSON = Prelude.parseJSONText "TemporalFilterPostFilterSharpening"
