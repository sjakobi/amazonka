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
-- Module      : Network.AWS.EC2.Types.BatchState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BatchState
  ( BatchState
      ( ..,
        BatchStateActive,
        BatchStateCancelled,
        BatchStateCancelledRunning,
        BatchStateCancelledTerminating,
        BatchStateFailed,
        BatchStateModifying,
        BatchStateSubmitted
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype BatchState = BatchState'
  { fromBatchState ::
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

pattern BatchStateActive :: BatchState
pattern BatchStateActive = BatchState' "active"

pattern BatchStateCancelled :: BatchState
pattern BatchStateCancelled = BatchState' "cancelled"

pattern BatchStateCancelledRunning :: BatchState
pattern BatchStateCancelledRunning = BatchState' "cancelled_running"

pattern BatchStateCancelledTerminating :: BatchState
pattern BatchStateCancelledTerminating = BatchState' "cancelled_terminating"

pattern BatchStateFailed :: BatchState
pattern BatchStateFailed = BatchState' "failed"

pattern BatchStateModifying :: BatchState
pattern BatchStateModifying = BatchState' "modifying"

pattern BatchStateSubmitted :: BatchState
pattern BatchStateSubmitted = BatchState' "submitted"

{-# COMPLETE
  BatchStateActive,
  BatchStateCancelled,
  BatchStateCancelledRunning,
  BatchStateCancelledTerminating,
  BatchStateFailed,
  BatchStateModifying,
  BatchStateSubmitted,
  BatchState'
  #-}

instance Prelude.FromText BatchState where
  parser = BatchState' Prelude.<$> Prelude.takeText

instance Prelude.ToText BatchState where
  toText (BatchState' x) = x

instance Prelude.Hashable BatchState

instance Prelude.NFData BatchState

instance Prelude.ToByteString BatchState

instance Prelude.ToQuery BatchState

instance Prelude.ToHeader BatchState

instance Prelude.FromXML BatchState where
  parseXML = Prelude.parseXMLText "BatchState"
