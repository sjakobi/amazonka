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
-- Module      : Network.AWS.EFS.Types.LifeCycleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.LifeCycleState
  ( LifeCycleState
      ( ..,
        LifeCycleStateAvailable,
        LifeCycleStateCreating,
        LifeCycleStateDeleted,
        LifeCycleStateDeleting,
        LifeCycleStateUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LifeCycleState = LifeCycleState'
  { fromLifeCycleState ::
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

pattern LifeCycleStateAvailable :: LifeCycleState
pattern LifeCycleStateAvailable = LifeCycleState' "available"

pattern LifeCycleStateCreating :: LifeCycleState
pattern LifeCycleStateCreating = LifeCycleState' "creating"

pattern LifeCycleStateDeleted :: LifeCycleState
pattern LifeCycleStateDeleted = LifeCycleState' "deleted"

pattern LifeCycleStateDeleting :: LifeCycleState
pattern LifeCycleStateDeleting = LifeCycleState' "deleting"

pattern LifeCycleStateUpdating :: LifeCycleState
pattern LifeCycleStateUpdating = LifeCycleState' "updating"

{-# COMPLETE
  LifeCycleStateAvailable,
  LifeCycleStateCreating,
  LifeCycleStateDeleted,
  LifeCycleStateDeleting,
  LifeCycleStateUpdating,
  LifeCycleState'
  #-}

instance Prelude.FromText LifeCycleState where
  parser = LifeCycleState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LifeCycleState where
  toText (LifeCycleState' x) = x

instance Prelude.Hashable LifeCycleState

instance Prelude.NFData LifeCycleState

instance Prelude.ToByteString LifeCycleState

instance Prelude.ToQuery LifeCycleState

instance Prelude.ToHeader LifeCycleState

instance Prelude.FromJSON LifeCycleState where
  parseJSON = Prelude.parseJSONText "LifeCycleState"
