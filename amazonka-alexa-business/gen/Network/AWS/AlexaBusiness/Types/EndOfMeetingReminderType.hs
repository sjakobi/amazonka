{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.EndOfMeetingReminderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.EndOfMeetingReminderType
  ( EndOfMeetingReminderType
      ( ..,
        EOMRTAnnouncementTimeCheck,
        EOMRTAnnouncementVariableTimeLeft,
        EOMRTChime,
        EOMRTKnock
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EndOfMeetingReminderType
  = EndOfMeetingReminderType'
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

pattern EOMRTAnnouncementTimeCheck :: EndOfMeetingReminderType
pattern EOMRTAnnouncementTimeCheck = EndOfMeetingReminderType' "ANNOUNCEMENT_TIME_CHECK"

pattern EOMRTAnnouncementVariableTimeLeft :: EndOfMeetingReminderType
pattern EOMRTAnnouncementVariableTimeLeft = EndOfMeetingReminderType' "ANNOUNCEMENT_VARIABLE_TIME_LEFT"

pattern EOMRTChime :: EndOfMeetingReminderType
pattern EOMRTChime = EndOfMeetingReminderType' "CHIME"

pattern EOMRTKnock :: EndOfMeetingReminderType
pattern EOMRTKnock = EndOfMeetingReminderType' "KNOCK"

{-# COMPLETE
  EOMRTAnnouncementTimeCheck,
  EOMRTAnnouncementVariableTimeLeft,
  EOMRTChime,
  EOMRTKnock,
  EndOfMeetingReminderType'
  #-}

instance FromText EndOfMeetingReminderType where
  parser = (EndOfMeetingReminderType' . mk) <$> takeText

instance ToText EndOfMeetingReminderType where
  toText (EndOfMeetingReminderType' ci) = original ci

instance Hashable EndOfMeetingReminderType

instance NFData EndOfMeetingReminderType

instance ToByteString EndOfMeetingReminderType

instance ToQuery EndOfMeetingReminderType

instance ToHeader EndOfMeetingReminderType

instance ToJSON EndOfMeetingReminderType where
  toJSON = toJSONText

instance FromJSON EndOfMeetingReminderType where
  parseJSON = parseJSONText "EndOfMeetingReminderType"
