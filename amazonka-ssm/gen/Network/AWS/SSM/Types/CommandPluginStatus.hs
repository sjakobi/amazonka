{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CommandPluginStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandPluginStatus
  ( CommandPluginStatus
      ( ..,
        CPSCancelled,
        CPSFailed,
        CPSInProgress,
        CPSPending,
        CPSSuccess,
        CPSTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CommandPluginStatus
  = CommandPluginStatus'
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

pattern CPSCancelled :: CommandPluginStatus
pattern CPSCancelled = CommandPluginStatus' "Cancelled"

pattern CPSFailed :: CommandPluginStatus
pattern CPSFailed = CommandPluginStatus' "Failed"

pattern CPSInProgress :: CommandPluginStatus
pattern CPSInProgress = CommandPluginStatus' "InProgress"

pattern CPSPending :: CommandPluginStatus
pattern CPSPending = CommandPluginStatus' "Pending"

pattern CPSSuccess :: CommandPluginStatus
pattern CPSSuccess = CommandPluginStatus' "Success"

pattern CPSTimedOut :: CommandPluginStatus
pattern CPSTimedOut = CommandPluginStatus' "TimedOut"

{-# COMPLETE
  CPSCancelled,
  CPSFailed,
  CPSInProgress,
  CPSPending,
  CPSSuccess,
  CPSTimedOut,
  CommandPluginStatus'
  #-}

instance FromText CommandPluginStatus where
  parser = (CommandPluginStatus' . mk) <$> takeText

instance ToText CommandPluginStatus where
  toText (CommandPluginStatus' ci) = original ci

instance Hashable CommandPluginStatus

instance NFData CommandPluginStatus

instance ToByteString CommandPluginStatus

instance ToQuery CommandPluginStatus

instance ToHeader CommandPluginStatus

instance FromJSON CommandPluginStatus where
  parseJSON = parseJSONText "CommandPluginStatus"
