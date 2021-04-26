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
-- Module      : Network.AWS.EC2.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.State
  ( State
      ( ..,
        StateAvailable,
        StateDeleted,
        StateDeleting,
        StateExpired,
        StateFailed,
        StatePending,
        StatePendingAcceptance,
        StateRejected
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype State = State' {fromState :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern StateAvailable :: State
pattern StateAvailable = State' "Available"

pattern StateDeleted :: State
pattern StateDeleted = State' "Deleted"

pattern StateDeleting :: State
pattern StateDeleting = State' "Deleting"

pattern StateExpired :: State
pattern StateExpired = State' "Expired"

pattern StateFailed :: State
pattern StateFailed = State' "Failed"

pattern StatePending :: State
pattern StatePending = State' "Pending"

pattern StatePendingAcceptance :: State
pattern StatePendingAcceptance = State' "PendingAcceptance"

pattern StateRejected :: State
pattern StateRejected = State' "Rejected"

{-# COMPLETE
  StateAvailable,
  StateDeleted,
  StateDeleting,
  StateExpired,
  StateFailed,
  StatePending,
  StatePendingAcceptance,
  StateRejected,
  State'
  #-}

instance Prelude.FromText State where
  parser = State' Prelude.<$> Prelude.takeText

instance Prelude.ToText State where
  toText (State' x) = x

instance Prelude.Hashable State

instance Prelude.NFData State

instance Prelude.ToByteString State

instance Prelude.ToQuery State

instance Prelude.ToHeader State

instance Prelude.FromXML State where
  parseXML = Prelude.parseXMLText "State"
