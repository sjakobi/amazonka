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
-- Module      : Network.AWS.MediaConvert.Types.InputDenoiseFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputDenoiseFilter
  ( InputDenoiseFilter
      ( ..,
        InputDenoiseFilterDISABLED,
        InputDenoiseFilterENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable Denoise (InputDenoiseFilter) to filter noise from the input.
-- Default is disabled. Only applicable to MPEG2, H.264, H.265, and
-- uncompressed video inputs.
newtype InputDenoiseFilter = InputDenoiseFilter'
  { fromInputDenoiseFilter ::
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

pattern InputDenoiseFilterDISABLED :: InputDenoiseFilter
pattern InputDenoiseFilterDISABLED = InputDenoiseFilter' "DISABLED"

pattern InputDenoiseFilterENABLED :: InputDenoiseFilter
pattern InputDenoiseFilterENABLED = InputDenoiseFilter' "ENABLED"

{-# COMPLETE
  InputDenoiseFilterDISABLED,
  InputDenoiseFilterENABLED,
  InputDenoiseFilter'
  #-}

instance Prelude.FromText InputDenoiseFilter where
  parser = InputDenoiseFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDenoiseFilter where
  toText (InputDenoiseFilter' x) = x

instance Prelude.Hashable InputDenoiseFilter

instance Prelude.NFData InputDenoiseFilter

instance Prelude.ToByteString InputDenoiseFilter

instance Prelude.ToQuery InputDenoiseFilter

instance Prelude.ToHeader InputDenoiseFilter

instance Prelude.ToJSON InputDenoiseFilter where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputDenoiseFilter where
  parseJSON = Prelude.parseJSONText "InputDenoiseFilter"
