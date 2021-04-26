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
-- Module      : Network.AWS.MediaConvert.Types.WatermarkingStrength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.WatermarkingStrength
  ( WatermarkingStrength
      ( ..,
        WatermarkingStrengthDEFAULT,
        WatermarkingStrengthLIGHTER,
        WatermarkingStrengthLIGHTEST,
        WatermarkingStrengthSTRONGER,
        WatermarkingStrengthSTRONGEST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Ignore this setting unless Nagra support directs you to
-- specify a value. When you don\'t specify a value here, the Nagra
-- NexGuard library uses its default value.
newtype WatermarkingStrength = WatermarkingStrength'
  { fromWatermarkingStrength ::
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

pattern WatermarkingStrengthDEFAULT :: WatermarkingStrength
pattern WatermarkingStrengthDEFAULT = WatermarkingStrength' "DEFAULT"

pattern WatermarkingStrengthLIGHTER :: WatermarkingStrength
pattern WatermarkingStrengthLIGHTER = WatermarkingStrength' "LIGHTER"

pattern WatermarkingStrengthLIGHTEST :: WatermarkingStrength
pattern WatermarkingStrengthLIGHTEST = WatermarkingStrength' "LIGHTEST"

pattern WatermarkingStrengthSTRONGER :: WatermarkingStrength
pattern WatermarkingStrengthSTRONGER = WatermarkingStrength' "STRONGER"

pattern WatermarkingStrengthSTRONGEST :: WatermarkingStrength
pattern WatermarkingStrengthSTRONGEST = WatermarkingStrength' "STRONGEST"

{-# COMPLETE
  WatermarkingStrengthDEFAULT,
  WatermarkingStrengthLIGHTER,
  WatermarkingStrengthLIGHTEST,
  WatermarkingStrengthSTRONGER,
  WatermarkingStrengthSTRONGEST,
  WatermarkingStrength'
  #-}

instance Prelude.FromText WatermarkingStrength where
  parser = WatermarkingStrength' Prelude.<$> Prelude.takeText

instance Prelude.ToText WatermarkingStrength where
  toText (WatermarkingStrength' x) = x

instance Prelude.Hashable WatermarkingStrength

instance Prelude.NFData WatermarkingStrength

instance Prelude.ToByteString WatermarkingStrength

instance Prelude.ToQuery WatermarkingStrength

instance Prelude.ToHeader WatermarkingStrength

instance Prelude.ToJSON WatermarkingStrength where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WatermarkingStrength where
  parseJSON = Prelude.parseJSONText "WatermarkingStrength"
