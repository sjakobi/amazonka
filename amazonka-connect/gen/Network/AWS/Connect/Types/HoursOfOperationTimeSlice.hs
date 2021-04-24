{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.HoursOfOperationTimeSlice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HoursOfOperationTimeSlice where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The start time or end time for an hours of operation.
--
--
--
-- /See:/ 'hoursOfOperationTimeSlice' smart constructor.
data HoursOfOperationTimeSlice = HoursOfOperationTimeSlice'
  { _hootsHours ::
      !(Maybe Nat),
    _hootsMinutes ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'HoursOfOperationTimeSlice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hootsHours' - The hours.
--
-- * 'hootsMinutes' - The minutes.
hoursOfOperationTimeSlice ::
  HoursOfOperationTimeSlice
hoursOfOperationTimeSlice =
  HoursOfOperationTimeSlice'
    { _hootsHours = Nothing,
      _hootsMinutes = Nothing
    }

-- | The hours.
hootsHours :: Lens' HoursOfOperationTimeSlice (Maybe Natural)
hootsHours = lens _hootsHours (\s a -> s {_hootsHours = a}) . mapping _Nat

-- | The minutes.
hootsMinutes :: Lens' HoursOfOperationTimeSlice (Maybe Natural)
hootsMinutes = lens _hootsMinutes (\s a -> s {_hootsMinutes = a}) . mapping _Nat

instance FromJSON HoursOfOperationTimeSlice where
  parseJSON =
    withObject
      "HoursOfOperationTimeSlice"
      ( \x ->
          HoursOfOperationTimeSlice'
            <$> (x .:? "Hours") <*> (x .:? "Minutes")
      )

instance Hashable HoursOfOperationTimeSlice

instance NFData HoursOfOperationTimeSlice
