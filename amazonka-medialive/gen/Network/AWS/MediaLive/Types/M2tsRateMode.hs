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
-- Module      : Network.AWS.MediaLive.Types.M2tsRateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsRateMode
  ( M2tsRateMode
      ( ..,
        M2tsRateModeCBR,
        M2tsRateModeVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Rate Mode
newtype M2tsRateMode = M2tsRateMode'
  { fromM2tsRateMode ::
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

pattern M2tsRateModeCBR :: M2tsRateMode
pattern M2tsRateModeCBR = M2tsRateMode' "CBR"

pattern M2tsRateModeVBR :: M2tsRateMode
pattern M2tsRateModeVBR = M2tsRateMode' "VBR"

{-# COMPLETE
  M2tsRateModeCBR,
  M2tsRateModeVBR,
  M2tsRateMode'
  #-}

instance Prelude.FromText M2tsRateMode where
  parser = M2tsRateMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsRateMode where
  toText (M2tsRateMode' x) = x

instance Prelude.Hashable M2tsRateMode

instance Prelude.NFData M2tsRateMode

instance Prelude.ToByteString M2tsRateMode

instance Prelude.ToQuery M2tsRateMode

instance Prelude.ToHeader M2tsRateMode

instance Prelude.ToJSON M2tsRateMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsRateMode where
  parseJSON = Prelude.parseJSONText "M2tsRateMode"
