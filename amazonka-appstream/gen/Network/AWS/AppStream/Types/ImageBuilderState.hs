{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ImageBuilderState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageBuilderState
  ( ImageBuilderState
      ( ..,
        Deleting,
        Failed,
        Pending,
        Rebooting,
        Running,
        Snapshotting,
        Stopped,
        Stopping,
        UpdatingAgent
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageBuilderState = ImageBuilderState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Deleting :: ImageBuilderState
pattern Deleting = ImageBuilderState' "DELETING"

pattern Failed :: ImageBuilderState
pattern Failed = ImageBuilderState' "FAILED"

pattern Pending :: ImageBuilderState
pattern Pending = ImageBuilderState' "PENDING"

pattern Rebooting :: ImageBuilderState
pattern Rebooting = ImageBuilderState' "REBOOTING"

pattern Running :: ImageBuilderState
pattern Running = ImageBuilderState' "RUNNING"

pattern Snapshotting :: ImageBuilderState
pattern Snapshotting = ImageBuilderState' "SNAPSHOTTING"

pattern Stopped :: ImageBuilderState
pattern Stopped = ImageBuilderState' "STOPPED"

pattern Stopping :: ImageBuilderState
pattern Stopping = ImageBuilderState' "STOPPING"

pattern UpdatingAgent :: ImageBuilderState
pattern UpdatingAgent = ImageBuilderState' "UPDATING_AGENT"

{-# COMPLETE
  Deleting,
  Failed,
  Pending,
  Rebooting,
  Running,
  Snapshotting,
  Stopped,
  Stopping,
  UpdatingAgent,
  ImageBuilderState'
  #-}

instance FromText ImageBuilderState where
  parser = (ImageBuilderState' . mk) <$> takeText

instance ToText ImageBuilderState where
  toText (ImageBuilderState' ci) = original ci

instance Hashable ImageBuilderState

instance NFData ImageBuilderState

instance ToByteString ImageBuilderState

instance ToQuery ImageBuilderState

instance ToHeader ImageBuilderState

instance FromJSON ImageBuilderState where
  parseJSON = parseJSONText "ImageBuilderState"
