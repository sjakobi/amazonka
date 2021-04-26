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
-- Module      : Network.AWS.EC2.Types.AllocationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AllocationState
  ( AllocationState
      ( ..,
        AllocationStateAvailable,
        AllocationStatePending,
        AllocationStatePermanentFailure,
        AllocationStateReleased,
        AllocationStateReleasedPermanentFailure,
        AllocationStateUnderAssessment
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AllocationState = AllocationState'
  { fromAllocationState ::
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

pattern AllocationStateAvailable :: AllocationState
pattern AllocationStateAvailable = AllocationState' "available"

pattern AllocationStatePending :: AllocationState
pattern AllocationStatePending = AllocationState' "pending"

pattern AllocationStatePermanentFailure :: AllocationState
pattern AllocationStatePermanentFailure = AllocationState' "permanent-failure"

pattern AllocationStateReleased :: AllocationState
pattern AllocationStateReleased = AllocationState' "released"

pattern AllocationStateReleasedPermanentFailure :: AllocationState
pattern AllocationStateReleasedPermanentFailure = AllocationState' "released-permanent-failure"

pattern AllocationStateUnderAssessment :: AllocationState
pattern AllocationStateUnderAssessment = AllocationState' "under-assessment"

{-# COMPLETE
  AllocationStateAvailable,
  AllocationStatePending,
  AllocationStatePermanentFailure,
  AllocationStateReleased,
  AllocationStateReleasedPermanentFailure,
  AllocationStateUnderAssessment,
  AllocationState'
  #-}

instance Prelude.FromText AllocationState where
  parser = AllocationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AllocationState where
  toText (AllocationState' x) = x

instance Prelude.Hashable AllocationState

instance Prelude.NFData AllocationState

instance Prelude.ToByteString AllocationState

instance Prelude.ToQuery AllocationState

instance Prelude.ToHeader AllocationState

instance Prelude.FromXML AllocationState where
  parseXML = Prelude.parseXMLText "AllocationState"
