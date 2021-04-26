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
-- Module      : Network.AWS.EC2.Types.PlacementGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlacementGroupState
  ( PlacementGroupState
      ( ..,
        PlacementGroupStateAvailable,
        PlacementGroupStateDeleted,
        PlacementGroupStateDeleting,
        PlacementGroupStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype PlacementGroupState = PlacementGroupState'
  { fromPlacementGroupState ::
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

pattern PlacementGroupStateAvailable :: PlacementGroupState
pattern PlacementGroupStateAvailable = PlacementGroupState' "available"

pattern PlacementGroupStateDeleted :: PlacementGroupState
pattern PlacementGroupStateDeleted = PlacementGroupState' "deleted"

pattern PlacementGroupStateDeleting :: PlacementGroupState
pattern PlacementGroupStateDeleting = PlacementGroupState' "deleting"

pattern PlacementGroupStatePending :: PlacementGroupState
pattern PlacementGroupStatePending = PlacementGroupState' "pending"

{-# COMPLETE
  PlacementGroupStateAvailable,
  PlacementGroupStateDeleted,
  PlacementGroupStateDeleting,
  PlacementGroupStatePending,
  PlacementGroupState'
  #-}

instance Prelude.FromText PlacementGroupState where
  parser = PlacementGroupState' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlacementGroupState where
  toText (PlacementGroupState' x) = x

instance Prelude.Hashable PlacementGroupState

instance Prelude.NFData PlacementGroupState

instance Prelude.ToByteString PlacementGroupState

instance Prelude.ToQuery PlacementGroupState

instance Prelude.ToHeader PlacementGroupState

instance Prelude.FromXML PlacementGroupState where
  parseXML = Prelude.parseXMLText "PlacementGroupState"
