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
-- Module      : Network.AWS.EC2.Types.BundleTaskState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BundleTaskState
  ( BundleTaskState
      ( ..,
        BundleTaskStateBundling,
        BundleTaskStateCancelling,
        BundleTaskStateComplete,
        BundleTaskStateFailed,
        BundleTaskStatePending,
        BundleTaskStateStoring,
        BundleTaskStateWaitingForShutdown
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype BundleTaskState = BundleTaskState'
  { fromBundleTaskState ::
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

pattern BundleTaskStateBundling :: BundleTaskState
pattern BundleTaskStateBundling = BundleTaskState' "bundling"

pattern BundleTaskStateCancelling :: BundleTaskState
pattern BundleTaskStateCancelling = BundleTaskState' "cancelling"

pattern BundleTaskStateComplete :: BundleTaskState
pattern BundleTaskStateComplete = BundleTaskState' "complete"

pattern BundleTaskStateFailed :: BundleTaskState
pattern BundleTaskStateFailed = BundleTaskState' "failed"

pattern BundleTaskStatePending :: BundleTaskState
pattern BundleTaskStatePending = BundleTaskState' "pending"

pattern BundleTaskStateStoring :: BundleTaskState
pattern BundleTaskStateStoring = BundleTaskState' "storing"

pattern BundleTaskStateWaitingForShutdown :: BundleTaskState
pattern BundleTaskStateWaitingForShutdown = BundleTaskState' "waiting-for-shutdown"

{-# COMPLETE
  BundleTaskStateBundling,
  BundleTaskStateCancelling,
  BundleTaskStateComplete,
  BundleTaskStateFailed,
  BundleTaskStatePending,
  BundleTaskStateStoring,
  BundleTaskStateWaitingForShutdown,
  BundleTaskState'
  #-}

instance Prelude.FromText BundleTaskState where
  parser = BundleTaskState' Prelude.<$> Prelude.takeText

instance Prelude.ToText BundleTaskState where
  toText (BundleTaskState' x) = x

instance Prelude.Hashable BundleTaskState

instance Prelude.NFData BundleTaskState

instance Prelude.ToByteString BundleTaskState

instance Prelude.ToQuery BundleTaskState

instance Prelude.ToHeader BundleTaskState

instance Prelude.FromXML BundleTaskState where
  parseXML = Prelude.parseXMLText "BundleTaskState"
