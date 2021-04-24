{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.GlobalConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfiguration where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.GlobalConfigurationInputEndAction
import Network.AWS.MediaLive.Types.GlobalConfigurationLowFramerateInputs
import Network.AWS.MediaLive.Types.GlobalConfigurationOutputLockingMode
import Network.AWS.MediaLive.Types.GlobalConfigurationOutputTimingSource
import Network.AWS.MediaLive.Types.InputLossBehavior
import Network.AWS.Prelude

-- | Global Configuration
--
-- /See:/ 'globalConfiguration' smart constructor.
data GlobalConfiguration = GlobalConfiguration'
  { _gcInitialAudioGain ::
      !(Maybe Int),
    _gcOutputLockingMode ::
      !( Maybe
           GlobalConfigurationOutputLockingMode
       ),
    _gcInputEndAction ::
      !( Maybe
           GlobalConfigurationInputEndAction
       ),
    _gcInputLossBehavior ::
      !(Maybe InputLossBehavior),
    _gcSupportLowFramerateInputs ::
      !( Maybe
           GlobalConfigurationLowFramerateInputs
       ),
    _gcOutputTimingSource ::
      !( Maybe
           GlobalConfigurationOutputTimingSource
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GlobalConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcInitialAudioGain' - Value to set the initial audio gain for the Live Event.
--
-- * 'gcOutputLockingMode' - Indicates how MediaLive pipelines are synchronized. PIPELINE_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other. EPOCH_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
--
-- * 'gcInputEndAction' - Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input.  When "none" is configured the encoder will transcode either black, a solid color, or a user specified slate images per the "Input Loss Behavior" configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
--
-- * 'gcInputLossBehavior' - Settings for system actions when input is lost.
--
-- * 'gcSupportLowFramerateInputs' - Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
--
-- * 'gcOutputTimingSource' - Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
globalConfiguration ::
  GlobalConfiguration
globalConfiguration =
  GlobalConfiguration'
    { _gcInitialAudioGain = Nothing,
      _gcOutputLockingMode = Nothing,
      _gcInputEndAction = Nothing,
      _gcInputLossBehavior = Nothing,
      _gcSupportLowFramerateInputs = Nothing,
      _gcOutputTimingSource = Nothing
    }

-- | Value to set the initial audio gain for the Live Event.
gcInitialAudioGain :: Lens' GlobalConfiguration (Maybe Int)
gcInitialAudioGain = lens _gcInitialAudioGain (\s a -> s {_gcInitialAudioGain = a})

-- | Indicates how MediaLive pipelines are synchronized. PIPELINE_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other. EPOCH_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
gcOutputLockingMode :: Lens' GlobalConfiguration (Maybe GlobalConfigurationOutputLockingMode)
gcOutputLockingMode = lens _gcOutputLockingMode (\s a -> s {_gcOutputLockingMode = a})

-- | Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input.  When "none" is configured the encoder will transcode either black, a solid color, or a user specified slate images per the "Input Loss Behavior" configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
gcInputEndAction :: Lens' GlobalConfiguration (Maybe GlobalConfigurationInputEndAction)
gcInputEndAction = lens _gcInputEndAction (\s a -> s {_gcInputEndAction = a})

-- | Settings for system actions when input is lost.
gcInputLossBehavior :: Lens' GlobalConfiguration (Maybe InputLossBehavior)
gcInputLossBehavior = lens _gcInputLossBehavior (\s a -> s {_gcInputLossBehavior = a})

-- | Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
gcSupportLowFramerateInputs :: Lens' GlobalConfiguration (Maybe GlobalConfigurationLowFramerateInputs)
gcSupportLowFramerateInputs = lens _gcSupportLowFramerateInputs (\s a -> s {_gcSupportLowFramerateInputs = a})

-- | Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
gcOutputTimingSource :: Lens' GlobalConfiguration (Maybe GlobalConfigurationOutputTimingSource)
gcOutputTimingSource = lens _gcOutputTimingSource (\s a -> s {_gcOutputTimingSource = a})

instance FromJSON GlobalConfiguration where
  parseJSON =
    withObject
      "GlobalConfiguration"
      ( \x ->
          GlobalConfiguration'
            <$> (x .:? "initialAudioGain")
            <*> (x .:? "outputLockingMode")
            <*> (x .:? "inputEndAction")
            <*> (x .:? "inputLossBehavior")
            <*> (x .:? "supportLowFramerateInputs")
            <*> (x .:? "outputTimingSource")
      )

instance Hashable GlobalConfiguration

instance NFData GlobalConfiguration

instance ToJSON GlobalConfiguration where
  toJSON GlobalConfiguration' {..} =
    object
      ( catMaybes
          [ ("initialAudioGain" .=) <$> _gcInitialAudioGain,
            ("outputLockingMode" .=) <$> _gcOutputLockingMode,
            ("inputEndAction" .=) <$> _gcInputEndAction,
            ("inputLossBehavior" .=) <$> _gcInputLossBehavior,
            ("supportLowFramerateInputs" .=)
              <$> _gcSupportLowFramerateInputs,
            ("outputTimingSource" .=) <$> _gcOutputTimingSource
          ]
      )
