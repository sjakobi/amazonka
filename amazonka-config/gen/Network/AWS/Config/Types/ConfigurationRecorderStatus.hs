{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigurationRecorderStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigurationRecorderStatus where

import Network.AWS.Config.Types.RecorderStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The current status of the configuration recorder.
--
--
--
-- /See:/ 'configurationRecorderStatus' smart constructor.
data ConfigurationRecorderStatus = ConfigurationRecorderStatus'
  { _crsLastStopTime ::
      !(Maybe POSIX),
    _crsLastStartTime ::
      !(Maybe POSIX),
    _crsLastErrorMessage ::
      !(Maybe Text),
    _crsRecording ::
      !(Maybe Bool),
    _crsName ::
      !(Maybe Text),
    _crsLastErrorCode ::
      !(Maybe Text),
    _crsLastStatus ::
      !( Maybe
           RecorderStatus
       ),
    _crsLastStatusChangeTime ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConfigurationRecorderStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsLastStopTime' - The time the recorder was last stopped.
--
-- * 'crsLastStartTime' - The time the recorder was last started.
--
-- * 'crsLastErrorMessage' - The message indicating that the recording failed due to an error.
--
-- * 'crsRecording' - Specifies whether or not the recorder is currently recording.
--
-- * 'crsName' - The name of the configuration recorder.
--
-- * 'crsLastErrorCode' - The error code indicating that the recording failed.
--
-- * 'crsLastStatus' - The last (previous) status of the recorder.
--
-- * 'crsLastStatusChangeTime' - The time when the status was last changed.
configurationRecorderStatus ::
  ConfigurationRecorderStatus
configurationRecorderStatus =
  ConfigurationRecorderStatus'
    { _crsLastStopTime =
        Nothing,
      _crsLastStartTime = Nothing,
      _crsLastErrorMessage = Nothing,
      _crsRecording = Nothing,
      _crsName = Nothing,
      _crsLastErrorCode = Nothing,
      _crsLastStatus = Nothing,
      _crsLastStatusChangeTime = Nothing
    }

-- | The time the recorder was last stopped.
crsLastStopTime :: Lens' ConfigurationRecorderStatus (Maybe UTCTime)
crsLastStopTime = lens _crsLastStopTime (\s a -> s {_crsLastStopTime = a}) . mapping _Time

-- | The time the recorder was last started.
crsLastStartTime :: Lens' ConfigurationRecorderStatus (Maybe UTCTime)
crsLastStartTime = lens _crsLastStartTime (\s a -> s {_crsLastStartTime = a}) . mapping _Time

-- | The message indicating that the recording failed due to an error.
crsLastErrorMessage :: Lens' ConfigurationRecorderStatus (Maybe Text)
crsLastErrorMessage = lens _crsLastErrorMessage (\s a -> s {_crsLastErrorMessage = a})

-- | Specifies whether or not the recorder is currently recording.
crsRecording :: Lens' ConfigurationRecorderStatus (Maybe Bool)
crsRecording = lens _crsRecording (\s a -> s {_crsRecording = a})

-- | The name of the configuration recorder.
crsName :: Lens' ConfigurationRecorderStatus (Maybe Text)
crsName = lens _crsName (\s a -> s {_crsName = a})

-- | The error code indicating that the recording failed.
crsLastErrorCode :: Lens' ConfigurationRecorderStatus (Maybe Text)
crsLastErrorCode = lens _crsLastErrorCode (\s a -> s {_crsLastErrorCode = a})

-- | The last (previous) status of the recorder.
crsLastStatus :: Lens' ConfigurationRecorderStatus (Maybe RecorderStatus)
crsLastStatus = lens _crsLastStatus (\s a -> s {_crsLastStatus = a})

-- | The time when the status was last changed.
crsLastStatusChangeTime :: Lens' ConfigurationRecorderStatus (Maybe UTCTime)
crsLastStatusChangeTime = lens _crsLastStatusChangeTime (\s a -> s {_crsLastStatusChangeTime = a}) . mapping _Time

instance FromJSON ConfigurationRecorderStatus where
  parseJSON =
    withObject
      "ConfigurationRecorderStatus"
      ( \x ->
          ConfigurationRecorderStatus'
            <$> (x .:? "lastStopTime")
            <*> (x .:? "lastStartTime")
            <*> (x .:? "lastErrorMessage")
            <*> (x .:? "recording")
            <*> (x .:? "name")
            <*> (x .:? "lastErrorCode")
            <*> (x .:? "lastStatus")
            <*> (x .:? "lastStatusChangeTime")
      )

instance Hashable ConfigurationRecorderStatus

instance NFData ConfigurationRecorderStatus
