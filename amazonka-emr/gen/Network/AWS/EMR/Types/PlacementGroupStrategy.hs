{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        PGSCluster,
        PGSNone,
        PGSPartition,
        PGSSpread
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlacementGroupStrategy
  = PlacementGroupStrategy'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PGSCluster :: PlacementGroupStrategy
pattern PGSCluster = PlacementGroupStrategy' "CLUSTER"

pattern PGSNone :: PlacementGroupStrategy
pattern PGSNone = PlacementGroupStrategy' "NONE"

pattern PGSPartition :: PlacementGroupStrategy
pattern PGSPartition = PlacementGroupStrategy' "PARTITION"

pattern PGSSpread :: PlacementGroupStrategy
pattern PGSSpread = PlacementGroupStrategy' "SPREAD"

{-# COMPLETE
  PGSCluster,
  PGSNone,
  PGSPartition,
  PGSSpread,
  PlacementGroupStrategy'
  #-}

instance FromText PlacementGroupStrategy where
  parser = (PlacementGroupStrategy' . mk) <$> takeText

instance ToText PlacementGroupStrategy where
  toText (PlacementGroupStrategy' ci) = original ci

instance Hashable PlacementGroupStrategy

instance NFData PlacementGroupStrategy

instance ToByteString PlacementGroupStrategy

instance ToQuery PlacementGroupStrategy

instance ToHeader PlacementGroupStrategy

instance ToJSON PlacementGroupStrategy where
  toJSON = toJSONText

instance FromJSON PlacementGroupStrategy where
  parseJSON = parseJSONText "PlacementGroupStrategy"
