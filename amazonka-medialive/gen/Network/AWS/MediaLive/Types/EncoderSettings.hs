{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.EncoderSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EncoderSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AudioDescription
import Network.AWS.MediaLive.Types.AvailBlanking
import Network.AWS.MediaLive.Types.AvailConfiguration
import Network.AWS.MediaLive.Types.BlackoutSlate
import Network.AWS.MediaLive.Types.CaptionDescription
import Network.AWS.MediaLive.Types.FeatureActivations
import Network.AWS.MediaLive.Types.GlobalConfiguration
import Network.AWS.MediaLive.Types.NielsenConfiguration
import Network.AWS.MediaLive.Types.OutputGroup
import Network.AWS.MediaLive.Types.TimecodeConfig
import Network.AWS.MediaLive.Types.VideoDescription
import Network.AWS.Prelude

-- | Encoder Settings
--
-- /See:/ 'encoderSettings' smart constructor.
data EncoderSettings = EncoderSettings'
  { _esGlobalConfiguration ::
      !(Maybe GlobalConfiguration),
    _esFeatureActivations ::
      !(Maybe FeatureActivations),
    _esAvailConfiguration ::
      !(Maybe AvailConfiguration),
    _esAvailBlanking ::
      !(Maybe AvailBlanking),
    _esNielsenConfiguration ::
      !(Maybe NielsenConfiguration),
    _esBlackoutSlate ::
      !(Maybe BlackoutSlate),
    _esCaptionDescriptions ::
      !(Maybe [CaptionDescription]),
    _esVideoDescriptions ::
      ![VideoDescription],
    _esAudioDescriptions ::
      ![AudioDescription],
    _esOutputGroups :: ![OutputGroup],
    _esTimecodeConfig :: !TimecodeConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EncoderSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esGlobalConfiguration' - Configuration settings that apply to the event as a whole.
--
-- * 'esFeatureActivations' - Feature Activations
--
-- * 'esAvailConfiguration' - Event-wide configuration settings for ad avail insertion.
--
-- * 'esAvailBlanking' - Settings for ad avail blanking.
--
-- * 'esNielsenConfiguration' - Nielsen configuration settings.
--
-- * 'esBlackoutSlate' - Settings for blackout slate.
--
-- * 'esCaptionDescriptions' - Settings for caption decriptions
--
-- * 'esVideoDescriptions' - Undocumented member.
--
-- * 'esAudioDescriptions' - Undocumented member.
--
-- * 'esOutputGroups' - Undocumented member.
--
-- * 'esTimecodeConfig' - Contains settings used to acquire and adjust timecode information from inputs.
encoderSettings ::
  -- | 'esTimecodeConfig'
  TimecodeConfig ->
  EncoderSettings
encoderSettings pTimecodeConfig_ =
  EncoderSettings'
    { _esGlobalConfiguration = Nothing,
      _esFeatureActivations = Nothing,
      _esAvailConfiguration = Nothing,
      _esAvailBlanking = Nothing,
      _esNielsenConfiguration = Nothing,
      _esBlackoutSlate = Nothing,
      _esCaptionDescriptions = Nothing,
      _esVideoDescriptions = mempty,
      _esAudioDescriptions = mempty,
      _esOutputGroups = mempty,
      _esTimecodeConfig = pTimecodeConfig_
    }

-- | Configuration settings that apply to the event as a whole.
esGlobalConfiguration :: Lens' EncoderSettings (Maybe GlobalConfiguration)
esGlobalConfiguration = lens _esGlobalConfiguration (\s a -> s {_esGlobalConfiguration = a})

-- | Feature Activations
esFeatureActivations :: Lens' EncoderSettings (Maybe FeatureActivations)
esFeatureActivations = lens _esFeatureActivations (\s a -> s {_esFeatureActivations = a})

-- | Event-wide configuration settings for ad avail insertion.
esAvailConfiguration :: Lens' EncoderSettings (Maybe AvailConfiguration)
esAvailConfiguration = lens _esAvailConfiguration (\s a -> s {_esAvailConfiguration = a})

-- | Settings for ad avail blanking.
esAvailBlanking :: Lens' EncoderSettings (Maybe AvailBlanking)
esAvailBlanking = lens _esAvailBlanking (\s a -> s {_esAvailBlanking = a})

-- | Nielsen configuration settings.
esNielsenConfiguration :: Lens' EncoderSettings (Maybe NielsenConfiguration)
esNielsenConfiguration = lens _esNielsenConfiguration (\s a -> s {_esNielsenConfiguration = a})

-- | Settings for blackout slate.
esBlackoutSlate :: Lens' EncoderSettings (Maybe BlackoutSlate)
esBlackoutSlate = lens _esBlackoutSlate (\s a -> s {_esBlackoutSlate = a})

-- | Settings for caption decriptions
esCaptionDescriptions :: Lens' EncoderSettings [CaptionDescription]
esCaptionDescriptions = lens _esCaptionDescriptions (\s a -> s {_esCaptionDescriptions = a}) . _Default . _Coerce

-- | Undocumented member.
esVideoDescriptions :: Lens' EncoderSettings [VideoDescription]
esVideoDescriptions = lens _esVideoDescriptions (\s a -> s {_esVideoDescriptions = a}) . _Coerce

-- | Undocumented member.
esAudioDescriptions :: Lens' EncoderSettings [AudioDescription]
esAudioDescriptions = lens _esAudioDescriptions (\s a -> s {_esAudioDescriptions = a}) . _Coerce

-- | Undocumented member.
esOutputGroups :: Lens' EncoderSettings [OutputGroup]
esOutputGroups = lens _esOutputGroups (\s a -> s {_esOutputGroups = a}) . _Coerce

-- | Contains settings used to acquire and adjust timecode information from inputs.
esTimecodeConfig :: Lens' EncoderSettings TimecodeConfig
esTimecodeConfig = lens _esTimecodeConfig (\s a -> s {_esTimecodeConfig = a})

instance FromJSON EncoderSettings where
  parseJSON =
    withObject
      "EncoderSettings"
      ( \x ->
          EncoderSettings'
            <$> (x .:? "globalConfiguration")
            <*> (x .:? "featureActivations")
            <*> (x .:? "availConfiguration")
            <*> (x .:? "availBlanking")
            <*> (x .:? "nielsenConfiguration")
            <*> (x .:? "blackoutSlate")
            <*> (x .:? "captionDescriptions" .!= mempty)
            <*> (x .:? "videoDescriptions" .!= mempty)
            <*> (x .:? "audioDescriptions" .!= mempty)
            <*> (x .:? "outputGroups" .!= mempty)
            <*> (x .: "timecodeConfig")
      )

instance Hashable EncoderSettings

instance NFData EncoderSettings

instance ToJSON EncoderSettings where
  toJSON EncoderSettings' {..} =
    object
      ( catMaybes
          [ ("globalConfiguration" .=)
              <$> _esGlobalConfiguration,
            ("featureActivations" .=) <$> _esFeatureActivations,
            ("availConfiguration" .=) <$> _esAvailConfiguration,
            ("availBlanking" .=) <$> _esAvailBlanking,
            ("nielsenConfiguration" .=)
              <$> _esNielsenConfiguration,
            ("blackoutSlate" .=) <$> _esBlackoutSlate,
            ("captionDescriptions" .=)
              <$> _esCaptionDescriptions,
            Just ("videoDescriptions" .= _esVideoDescriptions),
            Just ("audioDescriptions" .= _esAudioDescriptions),
            Just ("outputGroups" .= _esOutputGroups),
            Just ("timecodeConfig" .= _esTimecodeConfig)
          ]
      )
