{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.ApplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.ApplicationStatus
  ( ApplicationStatus
      ( ..,
        Deleting,
        Ready,
        Running,
        Starting,
        Stopping,
        Updating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApplicationStatus = ApplicationStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Deleting :: ApplicationStatus
pattern Deleting = ApplicationStatus' "DELETING"

pattern Ready :: ApplicationStatus
pattern Ready = ApplicationStatus' "READY"

pattern Running :: ApplicationStatus
pattern Running = ApplicationStatus' "RUNNING"

pattern Starting :: ApplicationStatus
pattern Starting = ApplicationStatus' "STARTING"

pattern Stopping :: ApplicationStatus
pattern Stopping = ApplicationStatus' "STOPPING"

pattern Updating :: ApplicationStatus
pattern Updating = ApplicationStatus' "UPDATING"

{-# COMPLETE
  Deleting,
  Ready,
  Running,
  Starting,
  Stopping,
  Updating,
  ApplicationStatus'
  #-}

instance FromText ApplicationStatus where
  parser = (ApplicationStatus' . mk) <$> takeText

instance ToText ApplicationStatus where
  toText (ApplicationStatus' ci) = original ci

instance Hashable ApplicationStatus

instance NFData ApplicationStatus

instance ToByteString ApplicationStatus

instance ToQuery ApplicationStatus

instance ToHeader ApplicationStatus

instance FromJSON ApplicationStatus where
  parseJSON = parseJSONText "ApplicationStatus"
