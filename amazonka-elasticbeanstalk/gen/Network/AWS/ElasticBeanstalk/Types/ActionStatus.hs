{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ActionStatus
  ( ActionStatus
      ( ..,
        ASPending,
        ASRunning,
        ASScheduled,
        ASUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionStatus = ActionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASPending :: ActionStatus
pattern ASPending = ActionStatus' "Pending"

pattern ASRunning :: ActionStatus
pattern ASRunning = ActionStatus' "Running"

pattern ASScheduled :: ActionStatus
pattern ASScheduled = ActionStatus' "Scheduled"

pattern ASUnknown :: ActionStatus
pattern ASUnknown = ActionStatus' "Unknown"

{-# COMPLETE
  ASPending,
  ASRunning,
  ASScheduled,
  ASUnknown,
  ActionStatus'
  #-}

instance FromText ActionStatus where
  parser = (ActionStatus' . mk) <$> takeText

instance ToText ActionStatus where
  toText (ActionStatus' ci) = original ci

instance Hashable ActionStatus

instance NFData ActionStatus

instance ToByteString ActionStatus

instance ToQuery ActionStatus

instance ToHeader ActionStatus

instance FromXML ActionStatus where
  parseXML = parseXMLText "ActionStatus"
