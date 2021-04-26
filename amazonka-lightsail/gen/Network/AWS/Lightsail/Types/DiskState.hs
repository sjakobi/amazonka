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
-- Module      : Network.AWS.Lightsail.Types.DiskState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.DiskState
  ( DiskState
      ( ..,
        DiskStateAvailable,
        DiskStateError,
        DiskStateInUse,
        DiskStatePending,
        DiskStateUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DiskState = DiskState'
  { fromDiskState ::
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

pattern DiskStateAvailable :: DiskState
pattern DiskStateAvailable = DiskState' "available"

pattern DiskStateError :: DiskState
pattern DiskStateError = DiskState' "error"

pattern DiskStateInUse :: DiskState
pattern DiskStateInUse = DiskState' "in-use"

pattern DiskStatePending :: DiskState
pattern DiskStatePending = DiskState' "pending"

pattern DiskStateUnknown :: DiskState
pattern DiskStateUnknown = DiskState' "unknown"

{-# COMPLETE
  DiskStateAvailable,
  DiskStateError,
  DiskStateInUse,
  DiskStatePending,
  DiskStateUnknown,
  DiskState'
  #-}

instance Prelude.FromText DiskState where
  parser = DiskState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DiskState where
  toText (DiskState' x) = x

instance Prelude.Hashable DiskState

instance Prelude.NFData DiskState

instance Prelude.ToByteString DiskState

instance Prelude.ToQuery DiskState

instance Prelude.ToHeader DiskState

instance Prelude.FromJSON DiskState where
  parseJSON = Prelude.parseJSONText "DiskState"
