{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SnapshotState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SnapshotState
  ( SnapshotState
      ( ..,
        SnaCompleted,
        SnaError',
        SnaPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SnapshotState = SnapshotState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SnaCompleted :: SnapshotState
pattern SnaCompleted = SnapshotState' "completed"

pattern SnaError' :: SnapshotState
pattern SnaError' = SnapshotState' "error"

pattern SnaPending :: SnapshotState
pattern SnaPending = SnapshotState' "pending"

{-# COMPLETE
  SnaCompleted,
  SnaError',
  SnaPending,
  SnapshotState'
  #-}

instance FromText SnapshotState where
  parser = (SnapshotState' . mk) <$> takeText

instance ToText SnapshotState where
  toText (SnapshotState' ci) = original ci

instance Hashable SnapshotState

instance NFData SnapshotState

instance ToByteString SnapshotState

instance ToQuery SnapshotState

instance ToHeader SnapshotState

instance FromXML SnapshotState where
  parseXML = parseXMLText "SnapshotState"
