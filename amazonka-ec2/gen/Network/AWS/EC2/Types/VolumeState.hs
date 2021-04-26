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
-- Module      : Network.AWS.EC2.Types.VolumeState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeState
  ( VolumeState
      ( ..,
        VolumeStateAvailable,
        VolumeStateCreating,
        VolumeStateDeleted,
        VolumeStateDeleting,
        VolumeStateError,
        VolumeStateInUse
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VolumeState = VolumeState'
  { fromVolumeState ::
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

pattern VolumeStateAvailable :: VolumeState
pattern VolumeStateAvailable = VolumeState' "available"

pattern VolumeStateCreating :: VolumeState
pattern VolumeStateCreating = VolumeState' "creating"

pattern VolumeStateDeleted :: VolumeState
pattern VolumeStateDeleted = VolumeState' "deleted"

pattern VolumeStateDeleting :: VolumeState
pattern VolumeStateDeleting = VolumeState' "deleting"

pattern VolumeStateError :: VolumeState
pattern VolumeStateError = VolumeState' "error"

pattern VolumeStateInUse :: VolumeState
pattern VolumeStateInUse = VolumeState' "in-use"

{-# COMPLETE
  VolumeStateAvailable,
  VolumeStateCreating,
  VolumeStateDeleted,
  VolumeStateDeleting,
  VolumeStateError,
  VolumeStateInUse,
  VolumeState'
  #-}

instance Prelude.FromText VolumeState where
  parser = VolumeState' Prelude.<$> Prelude.takeText

instance Prelude.ToText VolumeState where
  toText (VolumeState' x) = x

instance Prelude.Hashable VolumeState

instance Prelude.NFData VolumeState

instance Prelude.ToByteString VolumeState

instance Prelude.ToQuery VolumeState

instance Prelude.ToHeader VolumeState

instance Prelude.FromXML VolumeState where
  parseXML = Prelude.parseXMLText "VolumeState"
