{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Cluster,
        Partition,
        Spread
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
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

pattern Cluster :: PlacementGroupStrategy
pattern Cluster = PlacementGroupStrategy' "cluster"

pattern Partition :: PlacementGroupStrategy
pattern Partition = PlacementGroupStrategy' "partition"

pattern Spread :: PlacementGroupStrategy
pattern Spread = PlacementGroupStrategy' "spread"

{-# COMPLETE
  Cluster,
  Partition,
  Spread,
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

instance FromXML PlacementGroupStrategy where
  parseXML = parseXMLText "PlacementGroupStrategy"
