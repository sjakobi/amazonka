{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        PSCluster,
        PSPartition,
        PSSpread
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data PlacementStrategy = PlacementStrategy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSCluster :: PlacementStrategy
pattern PSCluster = PlacementStrategy' "cluster"

pattern PSPartition :: PlacementStrategy
pattern PSPartition = PlacementStrategy' "partition"

pattern PSSpread :: PlacementStrategy
pattern PSSpread = PlacementStrategy' "spread"

{-# COMPLETE
  PSCluster,
  PSPartition,
  PSSpread,
  PlacementStrategy'
  #-}

instance FromText PlacementStrategy where
  parser = (PlacementStrategy' . mk) <$> takeText

instance ToText PlacementStrategy where
  toText (PlacementStrategy' ci) = original ci

instance Hashable PlacementStrategy

instance NFData PlacementStrategy

instance ToByteString PlacementStrategy

instance ToQuery PlacementStrategy

instance ToHeader PlacementStrategy

instance FromXML PlacementStrategy where
  parseXML = parseXMLText "PlacementStrategy"
