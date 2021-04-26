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
-- Module      : Network.AWS.MediaConvert.Types.TtmlStylePassthrough
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TtmlStylePassthrough
  ( TtmlStylePassthrough
      ( ..,
        TtmlStylePassthroughDISABLED,
        TtmlStylePassthroughENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Pass through style and position information from a TTML-like input
-- source (TTML, SMPTE-TT) to the TTML output.
newtype TtmlStylePassthrough = TtmlStylePassthrough'
  { fromTtmlStylePassthrough ::
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

pattern TtmlStylePassthroughDISABLED :: TtmlStylePassthrough
pattern TtmlStylePassthroughDISABLED = TtmlStylePassthrough' "DISABLED"

pattern TtmlStylePassthroughENABLED :: TtmlStylePassthrough
pattern TtmlStylePassthroughENABLED = TtmlStylePassthrough' "ENABLED"

{-# COMPLETE
  TtmlStylePassthroughDISABLED,
  TtmlStylePassthroughENABLED,
  TtmlStylePassthrough'
  #-}

instance Prelude.FromText TtmlStylePassthrough where
  parser = TtmlStylePassthrough' Prelude.<$> Prelude.takeText

instance Prelude.ToText TtmlStylePassthrough where
  toText (TtmlStylePassthrough' x) = x

instance Prelude.Hashable TtmlStylePassthrough

instance Prelude.NFData TtmlStylePassthrough

instance Prelude.ToByteString TtmlStylePassthrough

instance Prelude.ToQuery TtmlStylePassthrough

instance Prelude.ToHeader TtmlStylePassthrough

instance Prelude.ToJSON TtmlStylePassthrough where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TtmlStylePassthrough where
  parseJSON = Prelude.parseJSONText "TtmlStylePassthrough"
