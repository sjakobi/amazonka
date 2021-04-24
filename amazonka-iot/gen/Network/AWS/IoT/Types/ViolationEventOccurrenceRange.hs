{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ViolationEventOccurrenceRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ViolationEventOccurrenceRange where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the time period of which violation events occurred between.
--
--
--
-- /See:/ 'violationEventOccurrenceRange' smart constructor.
data ViolationEventOccurrenceRange = ViolationEventOccurrenceRange'
  { _veorStartTime ::
      !POSIX,
    _veorEndTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ViolationEventOccurrenceRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veorStartTime' - The start date and time of a time period in which violation events occurred.
--
-- * 'veorEndTime' - The end date and time of a time period in which violation events occurred.
violationEventOccurrenceRange ::
  -- | 'veorStartTime'
  UTCTime ->
  -- | 'veorEndTime'
  UTCTime ->
  ViolationEventOccurrenceRange
violationEventOccurrenceRange pStartTime_ pEndTime_ =
  ViolationEventOccurrenceRange'
    { _veorStartTime =
        _Time # pStartTime_,
      _veorEndTime = _Time # pEndTime_
    }

-- | The start date and time of a time period in which violation events occurred.
veorStartTime :: Lens' ViolationEventOccurrenceRange UTCTime
veorStartTime = lens _veorStartTime (\s a -> s {_veorStartTime = a}) . _Time

-- | The end date and time of a time period in which violation events occurred.
veorEndTime :: Lens' ViolationEventOccurrenceRange UTCTime
veorEndTime = lens _veorEndTime (\s a -> s {_veorEndTime = a}) . _Time

instance FromJSON ViolationEventOccurrenceRange where
  parseJSON =
    withObject
      "ViolationEventOccurrenceRange"
      ( \x ->
          ViolationEventOccurrenceRange'
            <$> (x .: "startTime") <*> (x .: "endTime")
      )

instance Hashable ViolationEventOccurrenceRange

instance NFData ViolationEventOccurrenceRange

instance ToJSON ViolationEventOccurrenceRange where
  toJSON ViolationEventOccurrenceRange' {..} =
    object
      ( catMaybes
          [ Just ("startTime" .= _veorStartTime),
            Just ("endTime" .= _veorEndTime)
          ]
      )
