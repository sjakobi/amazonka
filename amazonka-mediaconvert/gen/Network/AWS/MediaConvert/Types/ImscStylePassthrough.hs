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
-- Module      : Network.AWS.MediaConvert.Types.ImscStylePassthrough
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ImscStylePassthrough
  ( ImscStylePassthrough
      ( ..,
        ImscStylePassthroughDISABLED,
        ImscStylePassthroughENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Keep this setting enabled to have MediaConvert use the font style and
-- position information from the captions source in the output. This option
-- is available only when your input captions are IMSC, SMPTE-TT, or TTML.
-- Disable this setting for simplified output captions.
newtype ImscStylePassthrough = ImscStylePassthrough'
  { fromImscStylePassthrough ::
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

pattern ImscStylePassthroughDISABLED :: ImscStylePassthrough
pattern ImscStylePassthroughDISABLED = ImscStylePassthrough' "DISABLED"

pattern ImscStylePassthroughENABLED :: ImscStylePassthrough
pattern ImscStylePassthroughENABLED = ImscStylePassthrough' "ENABLED"

{-# COMPLETE
  ImscStylePassthroughDISABLED,
  ImscStylePassthroughENABLED,
  ImscStylePassthrough'
  #-}

instance Prelude.FromText ImscStylePassthrough where
  parser = ImscStylePassthrough' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImscStylePassthrough where
  toText (ImscStylePassthrough' x) = x

instance Prelude.Hashable ImscStylePassthrough

instance Prelude.NFData ImscStylePassthrough

instance Prelude.ToByteString ImscStylePassthrough

instance Prelude.ToQuery ImscStylePassthrough

instance Prelude.ToHeader ImscStylePassthrough

instance Prelude.ToJSON ImscStylePassthrough where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ImscStylePassthrough where
  parseJSON = Prelude.parseJSONText "ImscStylePassthrough"
