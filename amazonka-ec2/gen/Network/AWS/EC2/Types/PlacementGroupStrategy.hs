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
-- Module      : Network.AWS.EC2.Types.PlacementGroupStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlacementGroupStrategy
  ( PlacementGroupStrategy
      ( ..,
        PlacementGroupStrategyCluster,
        PlacementGroupStrategyPartition,
        PlacementGroupStrategySpread
      ),
  )
where

import Network.AWS.EC2.Internal
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

pattern PlacementGroupStrategyCluster :: PlacementGroupStrategy
pattern PlacementGroupStrategyCluster = PlacementGroupStrategy' "cluster"

pattern PlacementGroupStrategyPartition :: PlacementGroupStrategy
pattern PlacementGroupStrategyPartition = PlacementGroupStrategy' "partition"

pattern PlacementGroupStrategySpread :: PlacementGroupStrategy
pattern PlacementGroupStrategySpread = PlacementGroupStrategy' "spread"

{-# COMPLETE
  PlacementGroupStrategyCluster,
  PlacementGroupStrategyPartition,
  PlacementGroupStrategySpread,
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

instance Prelude.FromXML PlacementGroupStrategy where
  parseXML = Prelude.parseXMLText "PlacementGroupStrategy"
