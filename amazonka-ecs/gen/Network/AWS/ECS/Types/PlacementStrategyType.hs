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
-- Module      : Network.AWS.ECS.Types.PlacementStrategyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PlacementStrategyType
  ( PlacementStrategyType
      ( ..,
        PlacementStrategyTypeBinpack,
        PlacementStrategyTypeRandom,
        PlacementStrategyTypeSpread
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlacementStrategyType = PlacementStrategyType'
  { fromPlacementStrategyType ::
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

pattern PlacementStrategyTypeBinpack :: PlacementStrategyType
pattern PlacementStrategyTypeBinpack = PlacementStrategyType' "binpack"

pattern PlacementStrategyTypeRandom :: PlacementStrategyType
pattern PlacementStrategyTypeRandom = PlacementStrategyType' "random"

pattern PlacementStrategyTypeSpread :: PlacementStrategyType
pattern PlacementStrategyTypeSpread = PlacementStrategyType' "spread"

{-# COMPLETE
  PlacementStrategyTypeBinpack,
  PlacementStrategyTypeRandom,
  PlacementStrategyTypeSpread,
  PlacementStrategyType'
  #-}

instance Prelude.FromText PlacementStrategyType where
  parser = PlacementStrategyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlacementStrategyType where
  toText (PlacementStrategyType' x) = x

instance Prelude.Hashable PlacementStrategyType

instance Prelude.NFData PlacementStrategyType

instance Prelude.ToByteString PlacementStrategyType

instance Prelude.ToQuery PlacementStrategyType

instance Prelude.ToHeader PlacementStrategyType

instance Prelude.ToJSON PlacementStrategyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PlacementStrategyType where
  parseJSON = Prelude.parseJSONText "PlacementStrategyType"
