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
-- Module      : Network.AWS.EMR.Types.PlacementGroupStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.PlacementGroupStrategy
  ( PlacementGroupStrategy
      ( ..,
        PlacementGroupStrategyCLUSTER,
        PlacementGroupStrategyNONE,
        PlacementGroupStrategyPARTITION,
        PlacementGroupStrategySPREAD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlacementGroupStrategy = PlacementGroupStrategy'
  { fromPlacementGroupStrategy ::
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

pattern PlacementGroupStrategyCLUSTER :: PlacementGroupStrategy
pattern PlacementGroupStrategyCLUSTER = PlacementGroupStrategy' "CLUSTER"

pattern PlacementGroupStrategyNONE :: PlacementGroupStrategy
pattern PlacementGroupStrategyNONE = PlacementGroupStrategy' "NONE"

pattern PlacementGroupStrategyPARTITION :: PlacementGroupStrategy
pattern PlacementGroupStrategyPARTITION = PlacementGroupStrategy' "PARTITION"

pattern PlacementGroupStrategySPREAD :: PlacementGroupStrategy
pattern PlacementGroupStrategySPREAD = PlacementGroupStrategy' "SPREAD"

{-# COMPLETE
  PlacementGroupStrategyCLUSTER,
  PlacementGroupStrategyNONE,
  PlacementGroupStrategyPARTITION,
  PlacementGroupStrategySPREAD,
  PlacementGroupStrategy'
  #-}

instance Prelude.FromText PlacementGroupStrategy where
  parser = PlacementGroupStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlacementGroupStrategy where
  toText (PlacementGroupStrategy' x) = x

instance Prelude.Hashable PlacementGroupStrategy

instance Prelude.NFData PlacementGroupStrategy

instance Prelude.ToByteString PlacementGroupStrategy

instance Prelude.ToQuery PlacementGroupStrategy

instance Prelude.ToHeader PlacementGroupStrategy

instance Prelude.ToJSON PlacementGroupStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PlacementGroupStrategy where
  parseJSON = Prelude.parseJSONText "PlacementGroupStrategy"
