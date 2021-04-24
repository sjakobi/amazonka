{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.BrokerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.BrokerState
  ( BrokerState
      ( ..,
        CreationFailed,
        CreationInProgress,
        DeletionInProgress,
        RebootInProgress,
        Running
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The status of the broker.
data BrokerState = BrokerState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreationFailed :: BrokerState
pattern CreationFailed = BrokerState' "CREATION_FAILED"

pattern CreationInProgress :: BrokerState
pattern CreationInProgress = BrokerState' "CREATION_IN_PROGRESS"

pattern DeletionInProgress :: BrokerState
pattern DeletionInProgress = BrokerState' "DELETION_IN_PROGRESS"

pattern RebootInProgress :: BrokerState
pattern RebootInProgress = BrokerState' "REBOOT_IN_PROGRESS"

pattern Running :: BrokerState
pattern Running = BrokerState' "RUNNING"

{-# COMPLETE
  CreationFailed,
  CreationInProgress,
  DeletionInProgress,
  RebootInProgress,
  Running,
  BrokerState'
  #-}

instance FromText BrokerState where
  parser = (BrokerState' . mk) <$> takeText

instance ToText BrokerState where
  toText (BrokerState' ci) = original ci

instance Hashable BrokerState

instance NFData BrokerState

instance ToByteString BrokerState

instance ToQuery BrokerState

instance ToHeader BrokerState

instance FromJSON BrokerState where
  parseJSON = parseJSONText "BrokerState"
