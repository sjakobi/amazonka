{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        NotificationEventAll,
        NotificationEventCancelled,
        NotificationEventFailed,
        NotificationEventInProgress,
        NotificationEventSuccess,
        NotificationEventTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotificationEvent = NotificationEvent'
  { fromNotificationEvent ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern NotificationEventAll :: NotificationEvent
pattern NotificationEventAll = NotificationEvent' "All"

pattern NotificationEventCancelled :: NotificationEvent
pattern NotificationEventCancelled = NotificationEvent' "Cancelled"

pattern NotificationEventFailed :: NotificationEvent
pattern NotificationEventFailed = NotificationEvent' "Failed"

pattern NotificationEventInProgress :: NotificationEvent
pattern NotificationEventInProgress = NotificationEvent' "InProgress"

pattern NotificationEventSuccess :: NotificationEvent
pattern NotificationEventSuccess = NotificationEvent' "Success"

pattern NotificationEventTimedOut :: NotificationEvent
pattern NotificationEventTimedOut = NotificationEvent' "TimedOut"

{-# COMPLETE
  NotificationEventAll,
  NotificationEventCancelled,
  NotificationEventFailed,
  NotificationEventInProgress,
  NotificationEventSuccess,
  NotificationEventTimedOut,
  NotificationEvent'
  #-}

instance Prelude.FromText NotificationEvent where
  parser = NotificationEvent' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotificationEvent where
  toText (NotificationEvent' x) = x

instance Prelude.Hashable NotificationEvent

instance Prelude.NFData NotificationEvent

instance Prelude.ToByteString NotificationEvent

instance Prelude.ToQuery NotificationEvent

instance Prelude.ToHeader NotificationEvent

instance Prelude.ToJSON NotificationEvent where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NotificationEvent where
  parseJSON = Prelude.parseJSONText "NotificationEvent"
