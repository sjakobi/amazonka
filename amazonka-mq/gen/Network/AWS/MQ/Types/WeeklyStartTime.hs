{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.WeeklyStartTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.WeeklyStartTime where

import Network.AWS.Lens
import Network.AWS.MQ.Types.DayOfWeek
import Network.AWS.Prelude

-- | The scheduled time period relative to UTC during which Amazon MQ begins to apply pending updates or patches to the broker.
--
-- /See:/ 'weeklyStartTime' smart constructor.
data WeeklyStartTime = WeeklyStartTime'
  { _wstDayOfWeek ::
      !(Maybe DayOfWeek),
    _wstTimeOfDay :: !(Maybe Text),
    _wstTimeZone :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WeeklyStartTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wstDayOfWeek' - Required. The day of the week.
--
-- * 'wstTimeOfDay' - Required. The time, in 24-hour format.
--
-- * 'wstTimeZone' - The time zone, UTC by default, in either the Country/City format, or the UTC offset format.
weeklyStartTime ::
  WeeklyStartTime
weeklyStartTime =
  WeeklyStartTime'
    { _wstDayOfWeek = Nothing,
      _wstTimeOfDay = Nothing,
      _wstTimeZone = Nothing
    }

-- | Required. The day of the week.
wstDayOfWeek :: Lens' WeeklyStartTime (Maybe DayOfWeek)
wstDayOfWeek = lens _wstDayOfWeek (\s a -> s {_wstDayOfWeek = a})

-- | Required. The time, in 24-hour format.
wstTimeOfDay :: Lens' WeeklyStartTime (Maybe Text)
wstTimeOfDay = lens _wstTimeOfDay (\s a -> s {_wstTimeOfDay = a})

-- | The time zone, UTC by default, in either the Country/City format, or the UTC offset format.
wstTimeZone :: Lens' WeeklyStartTime (Maybe Text)
wstTimeZone = lens _wstTimeZone (\s a -> s {_wstTimeZone = a})

instance FromJSON WeeklyStartTime where
  parseJSON =
    withObject
      "WeeklyStartTime"
      ( \x ->
          WeeklyStartTime'
            <$> (x .:? "dayOfWeek")
            <*> (x .:? "timeOfDay")
            <*> (x .:? "timeZone")
      )

instance Hashable WeeklyStartTime

instance NFData WeeklyStartTime

instance ToJSON WeeklyStartTime where
  toJSON WeeklyStartTime' {..} =
    object
      ( catMaybes
          [ ("dayOfWeek" .=) <$> _wstDayOfWeek,
            ("timeOfDay" .=) <$> _wstTimeOfDay,
            ("timeZone" .=) <$> _wstTimeZone
          ]
      )
