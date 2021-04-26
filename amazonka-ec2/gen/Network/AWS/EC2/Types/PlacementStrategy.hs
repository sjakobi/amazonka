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
-- Module      : Network.AWS.EC2.Types.PlacementStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlacementStrategy
  ( PlacementStrategy
      ( ..,
        PlacementStrategyCluster,
        PlacementStrategyPartition,
        PlacementStrategySpread
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype PlacementStrategy = PlacementStrategy'
  { fromPlacementStrategy ::
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

pattern PlacementStrategyCluster :: PlacementStrategy
pattern PlacementStrategyCluster = PlacementStrategy' "cluster"

pattern PlacementStrategyPartition :: PlacementStrategy
pattern PlacementStrategyPartition = PlacementStrategy' "partition"

pattern PlacementStrategySpread :: PlacementStrategy
pattern PlacementStrategySpread = PlacementStrategy' "spread"

{-# COMPLETE
  PlacementStrategyCluster,
  PlacementStrategyPartition,
  PlacementStrategySpread,
  PlacementStrategy'
  #-}

instance Prelude.FromText PlacementStrategy where
  parser = PlacementStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlacementStrategy where
  toText (PlacementStrategy' x) = x

instance Prelude.Hashable PlacementStrategy

instance Prelude.NFData PlacementStrategy

instance Prelude.ToByteString PlacementStrategy

instance Prelude.ToQuery PlacementStrategy

instance Prelude.ToHeader PlacementStrategy

instance Prelude.FromXML PlacementStrategy where
  parseXML = Prelude.parseXMLText "PlacementStrategy"
