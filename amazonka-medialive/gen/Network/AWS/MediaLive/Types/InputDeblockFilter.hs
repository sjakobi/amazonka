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
-- Module      : Network.AWS.MediaLive.Types.InputDeblockFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeblockFilter
  ( InputDeblockFilter
      ( ..,
        InputDeblockFilterDISABLED,
        InputDeblockFilterENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Deblock Filter
newtype InputDeblockFilter = InputDeblockFilter'
  { fromInputDeblockFilter ::
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

pattern InputDeblockFilterDISABLED :: InputDeblockFilter
pattern InputDeblockFilterDISABLED = InputDeblockFilter' "DISABLED"

pattern InputDeblockFilterENABLED :: InputDeblockFilter
pattern InputDeblockFilterENABLED = InputDeblockFilter' "ENABLED"

{-# COMPLETE
  InputDeblockFilterDISABLED,
  InputDeblockFilterENABLED,
  InputDeblockFilter'
  #-}

instance Prelude.FromText InputDeblockFilter where
  parser = InputDeblockFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeblockFilter where
  toText (InputDeblockFilter' x) = x

instance Prelude.Hashable InputDeblockFilter

instance Prelude.NFData InputDeblockFilter

instance Prelude.ToByteString InputDeblockFilter

instance Prelude.ToQuery InputDeblockFilter

instance Prelude.ToHeader InputDeblockFilter

instance Prelude.ToJSON InputDeblockFilter where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputDeblockFilter where
  parseJSON = Prelude.parseJSONText "InputDeblockFilter"
