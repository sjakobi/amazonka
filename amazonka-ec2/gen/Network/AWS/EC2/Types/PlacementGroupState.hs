{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PlacementGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlacementGroupState
  ( PlacementGroupState
      ( ..,
        PGSAvailable,
        PGSDeleted,
        PGSDeleting,
        PGSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data PlacementGroupState
  = PlacementGroupState'
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

pattern PGSAvailable :: PlacementGroupState
pattern PGSAvailable = PlacementGroupState' "available"

pattern PGSDeleted :: PlacementGroupState
pattern PGSDeleted = PlacementGroupState' "deleted"

pattern PGSDeleting :: PlacementGroupState
pattern PGSDeleting = PlacementGroupState' "deleting"

pattern PGSPending :: PlacementGroupState
pattern PGSPending = PlacementGroupState' "pending"

{-# COMPLETE
  PGSAvailable,
  PGSDeleted,
  PGSDeleting,
  PGSPending,
  PlacementGroupState'
  #-}

instance FromText PlacementGroupState where
  parser = (PlacementGroupState' . mk) <$> takeText

instance ToText PlacementGroupState where
  toText (PlacementGroupState' ci) = original ci

instance Hashable PlacementGroupState

instance NFData PlacementGroupState

instance ToByteString PlacementGroupState

instance ToQuery PlacementGroupState

instance ToHeader PlacementGroupState

instance FromXML PlacementGroupState where
  parseXML = parseXMLText "PlacementGroupState"
