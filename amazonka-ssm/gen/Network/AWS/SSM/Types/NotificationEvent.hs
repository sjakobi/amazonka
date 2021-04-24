{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.NotificationEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.NotificationEvent
  ( NotificationEvent
      ( ..,
        NEAll,
        NECancelled,
        NEFailed,
        NEInProgress,
        NESuccess,
        NETimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotificationEvent = NotificationEvent' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NEAll :: NotificationEvent
pattern NEAll = NotificationEvent' "All"

pattern NECancelled :: NotificationEvent
pattern NECancelled = NotificationEvent' "Cancelled"

pattern NEFailed :: NotificationEvent
pattern NEFailed = NotificationEvent' "Failed"

pattern NEInProgress :: NotificationEvent
pattern NEInProgress = NotificationEvent' "InProgress"

pattern NESuccess :: NotificationEvent
pattern NESuccess = NotificationEvent' "Success"

pattern NETimedOut :: NotificationEvent
pattern NETimedOut = NotificationEvent' "TimedOut"

{-# COMPLETE
  NEAll,
  NECancelled,
  NEFailed,
  NEInProgress,
  NESuccess,
  NETimedOut,
  NotificationEvent'
  #-}

instance FromText NotificationEvent where
  parser = (NotificationEvent' . mk) <$> takeText

instance ToText NotificationEvent where
  toText (NotificationEvent' ci) = original ci

instance Hashable NotificationEvent

instance NFData NotificationEvent

instance ToByteString NotificationEvent

instance ToQuery NotificationEvent

instance ToHeader NotificationEvent

instance ToJSON NotificationEvent where
  toJSON = toJSONText

instance FromJSON NotificationEvent where
  parseJSON = parseJSONText "NotificationEvent"
