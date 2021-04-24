{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceStateName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStateName
  ( InstanceStateName
      ( ..,
        ISNPending,
        ISNRunning,
        ISNShuttingDown,
        ISNStopped,
        ISNStopping,
        ISNTerminated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data InstanceStateName = InstanceStateName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISNPending :: InstanceStateName
pattern ISNPending = InstanceStateName' "pending"

pattern ISNRunning :: InstanceStateName
pattern ISNRunning = InstanceStateName' "running"

pattern ISNShuttingDown :: InstanceStateName
pattern ISNShuttingDown = InstanceStateName' "shutting-down"

pattern ISNStopped :: InstanceStateName
pattern ISNStopped = InstanceStateName' "stopped"

pattern ISNStopping :: InstanceStateName
pattern ISNStopping = InstanceStateName' "stopping"

pattern ISNTerminated :: InstanceStateName
pattern ISNTerminated = InstanceStateName' "terminated"

{-# COMPLETE
  ISNPending,
  ISNRunning,
  ISNShuttingDown,
  ISNStopped,
  ISNStopping,
  ISNTerminated,
  InstanceStateName'
  #-}

instance FromText InstanceStateName where
  parser = (InstanceStateName' . mk) <$> takeText

instance ToText InstanceStateName where
  toText (InstanceStateName' ci) = original ci

instance Hashable InstanceStateName

instance NFData InstanceStateName

instance ToByteString InstanceStateName

instance ToQuery InstanceStateName

instance ToHeader InstanceStateName

instance FromXML InstanceStateName where
  parseXML = parseXMLText "InstanceStateName"
