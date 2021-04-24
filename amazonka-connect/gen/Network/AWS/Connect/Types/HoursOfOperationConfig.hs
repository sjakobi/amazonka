{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.HoursOfOperationConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HoursOfOperationConfig where

import Network.AWS.Connect.Types.HoursOfOperationDays
import Network.AWS.Connect.Types.HoursOfOperationTimeSlice
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the hours of operation.
--
--
--
-- /See:/ 'hoursOfOperationConfig' smart constructor.
data HoursOfOperationConfig = HoursOfOperationConfig'
  { _hoocDay ::
      !( Maybe
           HoursOfOperationDays
       ),
    _hoocStartTime ::
      !( Maybe
           HoursOfOperationTimeSlice
       ),
    _hoocEndTime ::
      !( Maybe
           HoursOfOperationTimeSlice
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'HoursOfOperationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hoocDay' - The day that the hours of operation applies to.
--
-- * 'hoocStartTime' - The start time that your contact center is open.
--
-- * 'hoocEndTime' - The end time that your contact center is closes.
hoursOfOperationConfig ::
  HoursOfOperationConfig
hoursOfOperationConfig =
  HoursOfOperationConfig'
    { _hoocDay = Nothing,
      _hoocStartTime = Nothing,
      _hoocEndTime = Nothing
    }

-- | The day that the hours of operation applies to.
hoocDay :: Lens' HoursOfOperationConfig (Maybe HoursOfOperationDays)
hoocDay = lens _hoocDay (\s a -> s {_hoocDay = a})

-- | The start time that your contact center is open.
hoocStartTime :: Lens' HoursOfOperationConfig (Maybe HoursOfOperationTimeSlice)
hoocStartTime = lens _hoocStartTime (\s a -> s {_hoocStartTime = a})

-- | The end time that your contact center is closes.
hoocEndTime :: Lens' HoursOfOperationConfig (Maybe HoursOfOperationTimeSlice)
hoocEndTime = lens _hoocEndTime (\s a -> s {_hoocEndTime = a})

instance FromJSON HoursOfOperationConfig where
  parseJSON =
    withObject
      "HoursOfOperationConfig"
      ( \x ->
          HoursOfOperationConfig'
            <$> (x .:? "Day")
            <*> (x .:? "StartTime")
            <*> (x .:? "EndTime")
      )

instance Hashable HoursOfOperationConfig

instance NFData HoursOfOperationConfig
