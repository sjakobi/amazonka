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
-- Module      : Network.AWS.EC2.Types.PrefixListState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PrefixListState
  ( PrefixListState
      ( ..,
        PrefixListStateCreateComplete,
        PrefixListStateCreateFailed,
        PrefixListStateCreateInProgress,
        PrefixListStateDeleteComplete,
        PrefixListStateDeleteFailed,
        PrefixListStateDeleteInProgress,
        PrefixListStateModifyComplete,
        PrefixListStateModifyFailed,
        PrefixListStateModifyInProgress,
        PrefixListStateRestoreComplete,
        PrefixListStateRestoreFailed,
        PrefixListStateRestoreInProgress
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype PrefixListState = PrefixListState'
  { fromPrefixListState ::
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

pattern PrefixListStateCreateComplete :: PrefixListState
pattern PrefixListStateCreateComplete = PrefixListState' "create-complete"

pattern PrefixListStateCreateFailed :: PrefixListState
pattern PrefixListStateCreateFailed = PrefixListState' "create-failed"

pattern PrefixListStateCreateInProgress :: PrefixListState
pattern PrefixListStateCreateInProgress = PrefixListState' "create-in-progress"

pattern PrefixListStateDeleteComplete :: PrefixListState
pattern PrefixListStateDeleteComplete = PrefixListState' "delete-complete"

pattern PrefixListStateDeleteFailed :: PrefixListState
pattern PrefixListStateDeleteFailed = PrefixListState' "delete-failed"

pattern PrefixListStateDeleteInProgress :: PrefixListState
pattern PrefixListStateDeleteInProgress = PrefixListState' "delete-in-progress"

pattern PrefixListStateModifyComplete :: PrefixListState
pattern PrefixListStateModifyComplete = PrefixListState' "modify-complete"

pattern PrefixListStateModifyFailed :: PrefixListState
pattern PrefixListStateModifyFailed = PrefixListState' "modify-failed"

pattern PrefixListStateModifyInProgress :: PrefixListState
pattern PrefixListStateModifyInProgress = PrefixListState' "modify-in-progress"

pattern PrefixListStateRestoreComplete :: PrefixListState
pattern PrefixListStateRestoreComplete = PrefixListState' "restore-complete"

pattern PrefixListStateRestoreFailed :: PrefixListState
pattern PrefixListStateRestoreFailed = PrefixListState' "restore-failed"

pattern PrefixListStateRestoreInProgress :: PrefixListState
pattern PrefixListStateRestoreInProgress = PrefixListState' "restore-in-progress"

{-# COMPLETE
  PrefixListStateCreateComplete,
  PrefixListStateCreateFailed,
  PrefixListStateCreateInProgress,
  PrefixListStateDeleteComplete,
  PrefixListStateDeleteFailed,
  PrefixListStateDeleteInProgress,
  PrefixListStateModifyComplete,
  PrefixListStateModifyFailed,
  PrefixListStateModifyInProgress,
  PrefixListStateRestoreComplete,
  PrefixListStateRestoreFailed,
  PrefixListStateRestoreInProgress,
  PrefixListState'
  #-}

instance Prelude.FromText PrefixListState where
  parser = PrefixListState' Prelude.<$> Prelude.takeText

instance Prelude.ToText PrefixListState where
  toText (PrefixListState' x) = x

instance Prelude.Hashable PrefixListState

instance Prelude.NFData PrefixListState

instance Prelude.ToByteString PrefixListState

instance Prelude.ToQuery PrefixListState

instance Prelude.ToHeader PrefixListState

instance Prelude.FromXML PrefixListState where
  parseXML = Prelude.parseXMLText "PrefixListState"
