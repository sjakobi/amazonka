{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceSnapshotState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceSnapshotState
  ( InstanceSnapshotState
      ( ..,
        ISSAvailable,
        ISSError',
        ISSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceSnapshotState
  = InstanceSnapshotState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISSAvailable :: InstanceSnapshotState
pattern ISSAvailable = InstanceSnapshotState' "available"

pattern ISSError' :: InstanceSnapshotState
pattern ISSError' = InstanceSnapshotState' "error"

pattern ISSPending :: InstanceSnapshotState
pattern ISSPending = InstanceSnapshotState' "pending"

{-# COMPLETE
  ISSAvailable,
  ISSError',
  ISSPending,
  InstanceSnapshotState'
  #-}

instance FromText InstanceSnapshotState where
  parser = (InstanceSnapshotState' . mk) <$> takeText

instance ToText InstanceSnapshotState where
  toText (InstanceSnapshotState' ci) = original ci

instance Hashable InstanceSnapshotState

instance NFData InstanceSnapshotState

instance ToByteString InstanceSnapshotState

instance ToQuery InstanceSnapshotState

instance ToHeader InstanceSnapshotState

instance FromJSON InstanceSnapshotState where
  parseJSON = parseJSONText "InstanceSnapshotState"
