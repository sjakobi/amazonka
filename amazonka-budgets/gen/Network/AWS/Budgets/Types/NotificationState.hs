{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.NotificationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.NotificationState
  ( NotificationState
      ( ..,
        Alarm,
        OK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotificationState = NotificationState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Alarm :: NotificationState
pattern Alarm = NotificationState' "ALARM"

pattern OK :: NotificationState
pattern OK = NotificationState' "OK"

{-# COMPLETE
  Alarm,
  OK,
  NotificationState'
  #-}

instance FromText NotificationState where
  parser = (NotificationState' . mk) <$> takeText

instance ToText NotificationState where
  toText (NotificationState' ci) = original ci

instance Hashable NotificationState

instance NFData NotificationState

instance ToByteString NotificationState

instance ToQuery NotificationState

instance ToHeader NotificationState

instance ToJSON NotificationState where
  toJSON = toJSONText

instance FromJSON NotificationState where
  parseJSON = parseJSONText "NotificationState"
