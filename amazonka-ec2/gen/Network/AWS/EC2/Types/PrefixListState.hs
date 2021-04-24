{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CreateComplete,
        CreateFailed,
        CreateInProgress,
        DeleteComplete,
        DeleteFailed,
        DeleteInProgress,
        ModifyComplete,
        ModifyFailed,
        ModifyInProgress,
        RestoreComplete,
        RestoreFailed,
        RestoreInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data PrefixListState = PrefixListState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreateComplete :: PrefixListState
pattern CreateComplete = PrefixListState' "create-complete"

pattern CreateFailed :: PrefixListState
pattern CreateFailed = PrefixListState' "create-failed"

pattern CreateInProgress :: PrefixListState
pattern CreateInProgress = PrefixListState' "create-in-progress"

pattern DeleteComplete :: PrefixListState
pattern DeleteComplete = PrefixListState' "delete-complete"

pattern DeleteFailed :: PrefixListState
pattern DeleteFailed = PrefixListState' "delete-failed"

pattern DeleteInProgress :: PrefixListState
pattern DeleteInProgress = PrefixListState' "delete-in-progress"

pattern ModifyComplete :: PrefixListState
pattern ModifyComplete = PrefixListState' "modify-complete"

pattern ModifyFailed :: PrefixListState
pattern ModifyFailed = PrefixListState' "modify-failed"

pattern ModifyInProgress :: PrefixListState
pattern ModifyInProgress = PrefixListState' "modify-in-progress"

pattern RestoreComplete :: PrefixListState
pattern RestoreComplete = PrefixListState' "restore-complete"

pattern RestoreFailed :: PrefixListState
pattern RestoreFailed = PrefixListState' "restore-failed"

pattern RestoreInProgress :: PrefixListState
pattern RestoreInProgress = PrefixListState' "restore-in-progress"

{-# COMPLETE
  CreateComplete,
  CreateFailed,
  CreateInProgress,
  DeleteComplete,
  DeleteFailed,
  DeleteInProgress,
  ModifyComplete,
  ModifyFailed,
  ModifyInProgress,
  RestoreComplete,
  RestoreFailed,
  RestoreInProgress,
  PrefixListState'
  #-}

instance FromText PrefixListState where
  parser = (PrefixListState' . mk) <$> takeText

instance ToText PrefixListState where
  toText (PrefixListState' ci) = original ci

instance Hashable PrefixListState

instance NFData PrefixListState

instance ToByteString PrefixListState

instance ToQuery PrefixListState

instance ToHeader PrefixListState

instance FromXML PrefixListState where
  parseXML = parseXMLText "PrefixListState"
