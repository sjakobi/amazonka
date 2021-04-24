{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioSilenceFailoverSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioSilenceFailoverSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Placeholder documentation for AudioSilenceFailoverSettings
--
-- /See:/ 'audioSilenceFailoverSettings' smart constructor.
data AudioSilenceFailoverSettings = AudioSilenceFailoverSettings'
  { _asfsAudioSilenceThresholdMsec ::
      !(Maybe Nat),
    _asfsAudioSelectorName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AudioSilenceFailoverSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asfsAudioSilenceThresholdMsec' - The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
--
-- * 'asfsAudioSelectorName' - The name of the audio selector in the input that MediaLive should monitor to detect silence. Select your most important rendition. If you didn't create an audio selector in this input, leave blank.
audioSilenceFailoverSettings ::
  -- | 'asfsAudioSelectorName'
  Text ->
  AudioSilenceFailoverSettings
audioSilenceFailoverSettings pAudioSelectorName_ =
  AudioSilenceFailoverSettings'
    { _asfsAudioSilenceThresholdMsec =
        Nothing,
      _asfsAudioSelectorName = pAudioSelectorName_
    }

-- | The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
asfsAudioSilenceThresholdMsec :: Lens' AudioSilenceFailoverSettings (Maybe Natural)
asfsAudioSilenceThresholdMsec = lens _asfsAudioSilenceThresholdMsec (\s a -> s {_asfsAudioSilenceThresholdMsec = a}) . mapping _Nat

-- | The name of the audio selector in the input that MediaLive should monitor to detect silence. Select your most important rendition. If you didn't create an audio selector in this input, leave blank.
asfsAudioSelectorName :: Lens' AudioSilenceFailoverSettings Text
asfsAudioSelectorName = lens _asfsAudioSelectorName (\s a -> s {_asfsAudioSelectorName = a})

instance FromJSON AudioSilenceFailoverSettings where
  parseJSON =
    withObject
      "AudioSilenceFailoverSettings"
      ( \x ->
          AudioSilenceFailoverSettings'
            <$> (x .:? "audioSilenceThresholdMsec")
            <*> (x .: "audioSelectorName")
      )

instance Hashable AudioSilenceFailoverSettings

instance NFData AudioSilenceFailoverSettings

instance ToJSON AudioSilenceFailoverSettings where
  toJSON AudioSilenceFailoverSettings' {..} =
    object
      ( catMaybes
          [ ("audioSilenceThresholdMsec" .=)
              <$> _asfsAudioSilenceThresholdMsec,
            Just
              ("audioSelectorName" .= _asfsAudioSelectorName)
          ]
      )
