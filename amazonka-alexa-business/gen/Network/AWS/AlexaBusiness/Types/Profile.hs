{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Profile where

import Network.AWS.AlexaBusiness.Types.DistanceUnit
import Network.AWS.AlexaBusiness.Types.MeetingRoomConfiguration
import Network.AWS.AlexaBusiness.Types.TemperatureUnit
import Network.AWS.AlexaBusiness.Types.WakeWord
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A room profile with attributes.
--
--
--
-- /See:/ 'profile' smart constructor.
data Profile = Profile'
  { _pProfileName ::
      !(Maybe Text),
    _pIsDefault :: !(Maybe Bool),
    _pAddress :: !(Maybe Text),
    _pLocale :: !(Maybe Text),
    _pTemperatureUnit :: !(Maybe TemperatureUnit),
    _pAddressBookARN :: !(Maybe Text),
    _pSetupModeDisabled :: !(Maybe Bool),
    _pPSTNEnabled :: !(Maybe Bool),
    _pMaxVolumeLimit :: !(Maybe Int),
    _pMeetingRoomConfiguration ::
      !(Maybe MeetingRoomConfiguration),
    _pWakeWord :: !(Maybe WakeWord),
    _pProfileARN :: !(Maybe Text),
    _pTimezone :: !(Maybe Text),
    _pDistanceUnit :: !(Maybe DistanceUnit)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Profile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pProfileName' - The name of a room profile.
--
-- * 'pIsDefault' - Retrieves if the profile is default or not.
--
-- * 'pAddress' - The address of a room profile.
--
-- * 'pLocale' - The locale of a room profile. (This is currently available only to a limited preview audience.)
--
-- * 'pTemperatureUnit' - The temperature unit of a room profile.
--
-- * 'pAddressBookARN' - The ARN of the address book.
--
-- * 'pSetupModeDisabled' - The setup mode of a room profile.
--
-- * 'pPSTNEnabled' - The PSTN setting of a room profile.
--
-- * 'pMaxVolumeLimit' - The max volume limit of a room profile.
--
-- * 'pMeetingRoomConfiguration' - Meeting room settings of a room profile.
--
-- * 'pWakeWord' - The wake word of a room profile.
--
-- * 'pProfileARN' - The ARN of a room profile.
--
-- * 'pTimezone' - The time zone of a room profile.
--
-- * 'pDistanceUnit' - The distance unit of a room profile.
profile ::
  Profile
profile =
  Profile'
    { _pProfileName = Nothing,
      _pIsDefault = Nothing,
      _pAddress = Nothing,
      _pLocale = Nothing,
      _pTemperatureUnit = Nothing,
      _pAddressBookARN = Nothing,
      _pSetupModeDisabled = Nothing,
      _pPSTNEnabled = Nothing,
      _pMaxVolumeLimit = Nothing,
      _pMeetingRoomConfiguration = Nothing,
      _pWakeWord = Nothing,
      _pProfileARN = Nothing,
      _pTimezone = Nothing,
      _pDistanceUnit = Nothing
    }

-- | The name of a room profile.
pProfileName :: Lens' Profile (Maybe Text)
pProfileName = lens _pProfileName (\s a -> s {_pProfileName = a})

-- | Retrieves if the profile is default or not.
pIsDefault :: Lens' Profile (Maybe Bool)
pIsDefault = lens _pIsDefault (\s a -> s {_pIsDefault = a})

-- | The address of a room profile.
pAddress :: Lens' Profile (Maybe Text)
pAddress = lens _pAddress (\s a -> s {_pAddress = a})

-- | The locale of a room profile. (This is currently available only to a limited preview audience.)
pLocale :: Lens' Profile (Maybe Text)
pLocale = lens _pLocale (\s a -> s {_pLocale = a})

-- | The temperature unit of a room profile.
pTemperatureUnit :: Lens' Profile (Maybe TemperatureUnit)
pTemperatureUnit = lens _pTemperatureUnit (\s a -> s {_pTemperatureUnit = a})

-- | The ARN of the address book.
pAddressBookARN :: Lens' Profile (Maybe Text)
pAddressBookARN = lens _pAddressBookARN (\s a -> s {_pAddressBookARN = a})

-- | The setup mode of a room profile.
pSetupModeDisabled :: Lens' Profile (Maybe Bool)
pSetupModeDisabled = lens _pSetupModeDisabled (\s a -> s {_pSetupModeDisabled = a})

-- | The PSTN setting of a room profile.
pPSTNEnabled :: Lens' Profile (Maybe Bool)
pPSTNEnabled = lens _pPSTNEnabled (\s a -> s {_pPSTNEnabled = a})

-- | The max volume limit of a room profile.
pMaxVolumeLimit :: Lens' Profile (Maybe Int)
pMaxVolumeLimit = lens _pMaxVolumeLimit (\s a -> s {_pMaxVolumeLimit = a})

-- | Meeting room settings of a room profile.
pMeetingRoomConfiguration :: Lens' Profile (Maybe MeetingRoomConfiguration)
pMeetingRoomConfiguration = lens _pMeetingRoomConfiguration (\s a -> s {_pMeetingRoomConfiguration = a})

-- | The wake word of a room profile.
pWakeWord :: Lens' Profile (Maybe WakeWord)
pWakeWord = lens _pWakeWord (\s a -> s {_pWakeWord = a})

-- | The ARN of a room profile.
pProfileARN :: Lens' Profile (Maybe Text)
pProfileARN = lens _pProfileARN (\s a -> s {_pProfileARN = a})

-- | The time zone of a room profile.
pTimezone :: Lens' Profile (Maybe Text)
pTimezone = lens _pTimezone (\s a -> s {_pTimezone = a})

-- | The distance unit of a room profile.
pDistanceUnit :: Lens' Profile (Maybe DistanceUnit)
pDistanceUnit = lens _pDistanceUnit (\s a -> s {_pDistanceUnit = a})

instance FromJSON Profile where
  parseJSON =
    withObject
      "Profile"
      ( \x ->
          Profile'
            <$> (x .:? "ProfileName")
            <*> (x .:? "IsDefault")
            <*> (x .:? "Address")
            <*> (x .:? "Locale")
            <*> (x .:? "TemperatureUnit")
            <*> (x .:? "AddressBookArn")
            <*> (x .:? "SetupModeDisabled")
            <*> (x .:? "PSTNEnabled")
            <*> (x .:? "MaxVolumeLimit")
            <*> (x .:? "MeetingRoomConfiguration")
            <*> (x .:? "WakeWord")
            <*> (x .:? "ProfileArn")
            <*> (x .:? "Timezone")
            <*> (x .:? "DistanceUnit")
      )

instance Hashable Profile

instance NFData Profile
