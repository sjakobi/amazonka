{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.UpdateInstantBooking
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.UpdateInstantBooking where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Updates settings for the instant booking feature that are applied to a room profile. If instant booking is enabled, Alexa automatically reserves a room if it is free when a user joins a meeting with Alexa.
--
--
--
-- /See:/ 'updateInstantBooking' smart constructor.
data UpdateInstantBooking = UpdateInstantBooking'
  { _uibDurationInMinutes ::
      !(Maybe Int),
    _uibEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateInstantBooking' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uibDurationInMinutes' - Duration between 15 and 240 minutes at increments of 15 that determines how long to book an available room when a meeting is started with Alexa.
--
-- * 'uibEnabled' - Whether instant booking is enabled or not.
updateInstantBooking ::
  UpdateInstantBooking
updateInstantBooking =
  UpdateInstantBooking'
    { _uibDurationInMinutes =
        Nothing,
      _uibEnabled = Nothing
    }

-- | Duration between 15 and 240 minutes at increments of 15 that determines how long to book an available room when a meeting is started with Alexa.
uibDurationInMinutes :: Lens' UpdateInstantBooking (Maybe Int)
uibDurationInMinutes = lens _uibDurationInMinutes (\s a -> s {_uibDurationInMinutes = a})

-- | Whether instant booking is enabled or not.
uibEnabled :: Lens' UpdateInstantBooking (Maybe Bool)
uibEnabled = lens _uibEnabled (\s a -> s {_uibEnabled = a})

instance Hashable UpdateInstantBooking

instance NFData UpdateInstantBooking

instance ToJSON UpdateInstantBooking where
  toJSON UpdateInstantBooking' {..} =
    object
      ( catMaybes
          [ ("DurationInMinutes" .=) <$> _uibDurationInMinutes,
            ("Enabled" .=) <$> _uibEnabled
          ]
      )
