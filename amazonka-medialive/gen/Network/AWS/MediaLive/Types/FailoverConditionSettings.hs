{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.FailoverConditionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FailoverConditionSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AudioSilenceFailoverSettings
import Network.AWS.MediaLive.Types.InputLossFailoverSettings
import Network.AWS.MediaLive.Types.VideoBlackFailoverSettings
import Network.AWS.Prelude

-- | Settings for one failover condition.
--
-- /See:/ 'failoverConditionSettings' smart constructor.
data FailoverConditionSettings = FailoverConditionSettings'
  { _fcsVideoBlackSettings ::
      !( Maybe
           VideoBlackFailoverSettings
       ),
    _fcsInputLossSettings ::
      !( Maybe
           InputLossFailoverSettings
       ),
    _fcsAudioSilenceSettings ::
      !( Maybe
           AudioSilenceFailoverSettings
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

-- | Creates a value of 'FailoverConditionSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcsVideoBlackSettings' - MediaLive will perform a failover if content is considered black for the specified period.
--
-- * 'fcsInputLossSettings' - MediaLive will perform a failover if content is not detected in this input for the specified period.
--
-- * 'fcsAudioSilenceSettings' - MediaLive will perform a failover if the specified audio selector is silent for the specified period.
failoverConditionSettings ::
  FailoverConditionSettings
failoverConditionSettings =
  FailoverConditionSettings'
    { _fcsVideoBlackSettings =
        Nothing,
      _fcsInputLossSettings = Nothing,
      _fcsAudioSilenceSettings = Nothing
    }

-- | MediaLive will perform a failover if content is considered black for the specified period.
fcsVideoBlackSettings :: Lens' FailoverConditionSettings (Maybe VideoBlackFailoverSettings)
fcsVideoBlackSettings = lens _fcsVideoBlackSettings (\s a -> s {_fcsVideoBlackSettings = a})

-- | MediaLive will perform a failover if content is not detected in this input for the specified period.
fcsInputLossSettings :: Lens' FailoverConditionSettings (Maybe InputLossFailoverSettings)
fcsInputLossSettings = lens _fcsInputLossSettings (\s a -> s {_fcsInputLossSettings = a})

-- | MediaLive will perform a failover if the specified audio selector is silent for the specified period.
fcsAudioSilenceSettings :: Lens' FailoverConditionSettings (Maybe AudioSilenceFailoverSettings)
fcsAudioSilenceSettings = lens _fcsAudioSilenceSettings (\s a -> s {_fcsAudioSilenceSettings = a})

instance FromJSON FailoverConditionSettings where
  parseJSON =
    withObject
      "FailoverConditionSettings"
      ( \x ->
          FailoverConditionSettings'
            <$> (x .:? "videoBlackSettings")
            <*> (x .:? "inputLossSettings")
            <*> (x .:? "audioSilenceSettings")
      )

instance Hashable FailoverConditionSettings

instance NFData FailoverConditionSettings

instance ToJSON FailoverConditionSettings where
  toJSON FailoverConditionSettings' {..} =
    object
      ( catMaybes
          [ ("videoBlackSettings" .=)
              <$> _fcsVideoBlackSettings,
            ("inputLossSettings" .=) <$> _fcsInputLossSettings,
            ("audioSilenceSettings" .=)
              <$> _fcsAudioSilenceSettings
          ]
      )
