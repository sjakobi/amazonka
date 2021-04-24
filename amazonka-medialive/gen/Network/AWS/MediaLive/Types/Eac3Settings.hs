{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3Settings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.Eac3AttenuationControl
import Network.AWS.MediaLive.Types.Eac3BitstreamMode
import Network.AWS.MediaLive.Types.Eac3CodingMode
import Network.AWS.MediaLive.Types.Eac3DcFilter
import Network.AWS.MediaLive.Types.Eac3DrcLine
import Network.AWS.MediaLive.Types.Eac3DrcRf
import Network.AWS.MediaLive.Types.Eac3LfeControl
import Network.AWS.MediaLive.Types.Eac3LfeFilter
import Network.AWS.MediaLive.Types.Eac3MetadataControl
import Network.AWS.MediaLive.Types.Eac3PassthroughControl
import Network.AWS.MediaLive.Types.Eac3PhaseControl
import Network.AWS.MediaLive.Types.Eac3StereoDownmix
import Network.AWS.MediaLive.Types.Eac3SurroundExMode
import Network.AWS.MediaLive.Types.Eac3SurroundMode
import Network.AWS.Prelude

-- | Eac3 Settings
--
-- /See:/ 'eac3Settings' smart constructor.
data Eac3Settings = Eac3Settings'
  { _esLoRoCenterMixLevel ::
      !(Maybe Double),
    _esLtRtCenterMixLevel :: !(Maybe Double),
    _esDialnorm :: !(Maybe Nat),
    _esCodingMode :: !(Maybe Eac3CodingMode),
    _esLfeControl :: !(Maybe Eac3LfeControl),
    _esLoRoSurroundMixLevel :: !(Maybe Double),
    _esLtRtSurroundMixLevel :: !(Maybe Double),
    _esLfeFilter :: !(Maybe Eac3LfeFilter),
    _esDcFilter :: !(Maybe Eac3DcFilter),
    _esStereoDownmix ::
      !(Maybe Eac3StereoDownmix),
    _esDrcRf :: !(Maybe Eac3DrcRf),
    _esDrcLine :: !(Maybe Eac3DrcLine),
    _esBitstreamMode ::
      !(Maybe Eac3BitstreamMode),
    _esSurroundExMode ::
      !(Maybe Eac3SurroundExMode),
    _esPhaseControl :: !(Maybe Eac3PhaseControl),
    _esPassthroughControl ::
      !(Maybe Eac3PassthroughControl),
    _esBitrate :: !(Maybe Double),
    _esAttenuationControl ::
      !(Maybe Eac3AttenuationControl),
    _esSurroundMode :: !(Maybe Eac3SurroundMode),
    _esMetadataControl ::
      !(Maybe Eac3MetadataControl)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Eac3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esLoRoCenterMixLevel' - Left only/Right only center mix level. Only used for 3/2 coding mode.
--
-- * 'esLtRtCenterMixLevel' - Left total/Right total center mix level. Only used for 3/2 coding mode.
--
-- * 'esDialnorm' - Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
--
-- * 'esCodingMode' - Dolby Digital Plus coding mode. Determines number of channels.
--
-- * 'esLfeControl' - When encoding 3/2 audio, setting to lfe enables the LFE channel
--
-- * 'esLoRoSurroundMixLevel' - Left only/Right only surround mix level. Only used for 3/2 coding mode.
--
-- * 'esLtRtSurroundMixLevel' - Left total/Right total surround mix level. Only used for 3/2 coding mode.
--
-- * 'esLfeFilter' - When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with codingMode32 coding mode.
--
-- * 'esDcFilter' - When set to enabled, activates a DC highpass filter for all input channels.
--
-- * 'esStereoDownmix' - Stereo downmix preference. Only used for 3/2 coding mode.
--
-- * 'esDrcRf' - Sets the profile for heavy Dolby dynamic range compression, ensures that the instantaneous signal peaks do not exceed specified levels.
--
-- * 'esDrcLine' - Sets the Dolby dynamic range compression profile.
--
-- * 'esBitstreamMode' - Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.
--
-- * 'esSurroundExMode' - When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
--
-- * 'esPhaseControl' - When set to shift90Degrees, applies a 90-degree phase shift to the surround channels. Only used for 3/2 coding mode.
--
-- * 'esPassthroughControl' - When set to whenPossible, input DD+ audio will be passed through if it is present on the input. This detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
--
-- * 'esBitrate' - Average bitrate in bits/second. Valid bitrates depend on the coding mode.
--
-- * 'esAttenuationControl' - When set to attenuate3Db, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
--
-- * 'esSurroundMode' - When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
--
-- * 'esMetadataControl' - When set to followInput, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
eac3Settings ::
  Eac3Settings
eac3Settings =
  Eac3Settings'
    { _esLoRoCenterMixLevel = Nothing,
      _esLtRtCenterMixLevel = Nothing,
      _esDialnorm = Nothing,
      _esCodingMode = Nothing,
      _esLfeControl = Nothing,
      _esLoRoSurroundMixLevel = Nothing,
      _esLtRtSurroundMixLevel = Nothing,
      _esLfeFilter = Nothing,
      _esDcFilter = Nothing,
      _esStereoDownmix = Nothing,
      _esDrcRf = Nothing,
      _esDrcLine = Nothing,
      _esBitstreamMode = Nothing,
      _esSurroundExMode = Nothing,
      _esPhaseControl = Nothing,
      _esPassthroughControl = Nothing,
      _esBitrate = Nothing,
      _esAttenuationControl = Nothing,
      _esSurroundMode = Nothing,
      _esMetadataControl = Nothing
    }

-- | Left only/Right only center mix level. Only used for 3/2 coding mode.
esLoRoCenterMixLevel :: Lens' Eac3Settings (Maybe Double)
esLoRoCenterMixLevel = lens _esLoRoCenterMixLevel (\s a -> s {_esLoRoCenterMixLevel = a})

-- | Left total/Right total center mix level. Only used for 3/2 coding mode.
esLtRtCenterMixLevel :: Lens' Eac3Settings (Maybe Double)
esLtRtCenterMixLevel = lens _esLtRtCenterMixLevel (\s a -> s {_esLtRtCenterMixLevel = a})

-- | Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
esDialnorm :: Lens' Eac3Settings (Maybe Natural)
esDialnorm = lens _esDialnorm (\s a -> s {_esDialnorm = a}) . mapping _Nat

-- | Dolby Digital Plus coding mode. Determines number of channels.
esCodingMode :: Lens' Eac3Settings (Maybe Eac3CodingMode)
esCodingMode = lens _esCodingMode (\s a -> s {_esCodingMode = a})

-- | When encoding 3/2 audio, setting to lfe enables the LFE channel
esLfeControl :: Lens' Eac3Settings (Maybe Eac3LfeControl)
esLfeControl = lens _esLfeControl (\s a -> s {_esLfeControl = a})

-- | Left only/Right only surround mix level. Only used for 3/2 coding mode.
esLoRoSurroundMixLevel :: Lens' Eac3Settings (Maybe Double)
esLoRoSurroundMixLevel = lens _esLoRoSurroundMixLevel (\s a -> s {_esLoRoSurroundMixLevel = a})

-- | Left total/Right total surround mix level. Only used for 3/2 coding mode.
esLtRtSurroundMixLevel :: Lens' Eac3Settings (Maybe Double)
esLtRtSurroundMixLevel = lens _esLtRtSurroundMixLevel (\s a -> s {_esLtRtSurroundMixLevel = a})

-- | When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with codingMode32 coding mode.
esLfeFilter :: Lens' Eac3Settings (Maybe Eac3LfeFilter)
esLfeFilter = lens _esLfeFilter (\s a -> s {_esLfeFilter = a})

-- | When set to enabled, activates a DC highpass filter for all input channels.
esDcFilter :: Lens' Eac3Settings (Maybe Eac3DcFilter)
esDcFilter = lens _esDcFilter (\s a -> s {_esDcFilter = a})

-- | Stereo downmix preference. Only used for 3/2 coding mode.
esStereoDownmix :: Lens' Eac3Settings (Maybe Eac3StereoDownmix)
esStereoDownmix = lens _esStereoDownmix (\s a -> s {_esStereoDownmix = a})

-- | Sets the profile for heavy Dolby dynamic range compression, ensures that the instantaneous signal peaks do not exceed specified levels.
esDrcRf :: Lens' Eac3Settings (Maybe Eac3DrcRf)
esDrcRf = lens _esDrcRf (\s a -> s {_esDrcRf = a})

-- | Sets the Dolby dynamic range compression profile.
esDrcLine :: Lens' Eac3Settings (Maybe Eac3DrcLine)
esDrcLine = lens _esDrcLine (\s a -> s {_esDrcLine = a})

-- | Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.
esBitstreamMode :: Lens' Eac3Settings (Maybe Eac3BitstreamMode)
esBitstreamMode = lens _esBitstreamMode (\s a -> s {_esBitstreamMode = a})

-- | When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
esSurroundExMode :: Lens' Eac3Settings (Maybe Eac3SurroundExMode)
esSurroundExMode = lens _esSurroundExMode (\s a -> s {_esSurroundExMode = a})

-- | When set to shift90Degrees, applies a 90-degree phase shift to the surround channels. Only used for 3/2 coding mode.
esPhaseControl :: Lens' Eac3Settings (Maybe Eac3PhaseControl)
esPhaseControl = lens _esPhaseControl (\s a -> s {_esPhaseControl = a})

-- | When set to whenPossible, input DD+ audio will be passed through if it is present on the input. This detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
esPassthroughControl :: Lens' Eac3Settings (Maybe Eac3PassthroughControl)
esPassthroughControl = lens _esPassthroughControl (\s a -> s {_esPassthroughControl = a})

-- | Average bitrate in bits/second. Valid bitrates depend on the coding mode.
esBitrate :: Lens' Eac3Settings (Maybe Double)
esBitrate = lens _esBitrate (\s a -> s {_esBitrate = a})

-- | When set to attenuate3Db, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
esAttenuationControl :: Lens' Eac3Settings (Maybe Eac3AttenuationControl)
esAttenuationControl = lens _esAttenuationControl (\s a -> s {_esAttenuationControl = a})

-- | When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
esSurroundMode :: Lens' Eac3Settings (Maybe Eac3SurroundMode)
esSurroundMode = lens _esSurroundMode (\s a -> s {_esSurroundMode = a})

-- | When set to followInput, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
esMetadataControl :: Lens' Eac3Settings (Maybe Eac3MetadataControl)
esMetadataControl = lens _esMetadataControl (\s a -> s {_esMetadataControl = a})

instance FromJSON Eac3Settings where
  parseJSON =
    withObject
      "Eac3Settings"
      ( \x ->
          Eac3Settings'
            <$> (x .:? "loRoCenterMixLevel")
            <*> (x .:? "ltRtCenterMixLevel")
            <*> (x .:? "dialnorm")
            <*> (x .:? "codingMode")
            <*> (x .:? "lfeControl")
            <*> (x .:? "loRoSurroundMixLevel")
            <*> (x .:? "ltRtSurroundMixLevel")
            <*> (x .:? "lfeFilter")
            <*> (x .:? "dcFilter")
            <*> (x .:? "stereoDownmix")
            <*> (x .:? "drcRf")
            <*> (x .:? "drcLine")
            <*> (x .:? "bitstreamMode")
            <*> (x .:? "surroundExMode")
            <*> (x .:? "phaseControl")
            <*> (x .:? "passthroughControl")
            <*> (x .:? "bitrate")
            <*> (x .:? "attenuationControl")
            <*> (x .:? "surroundMode")
            <*> (x .:? "metadataControl")
      )

instance Hashable Eac3Settings

instance NFData Eac3Settings

instance ToJSON Eac3Settings where
  toJSON Eac3Settings' {..} =
    object
      ( catMaybes
          [ ("loRoCenterMixLevel" .=) <$> _esLoRoCenterMixLevel,
            ("ltRtCenterMixLevel" .=) <$> _esLtRtCenterMixLevel,
            ("dialnorm" .=) <$> _esDialnorm,
            ("codingMode" .=) <$> _esCodingMode,
            ("lfeControl" .=) <$> _esLfeControl,
            ("loRoSurroundMixLevel" .=)
              <$> _esLoRoSurroundMixLevel,
            ("ltRtSurroundMixLevel" .=)
              <$> _esLtRtSurroundMixLevel,
            ("lfeFilter" .=) <$> _esLfeFilter,
            ("dcFilter" .=) <$> _esDcFilter,
            ("stereoDownmix" .=) <$> _esStereoDownmix,
            ("drcRf" .=) <$> _esDrcRf,
            ("drcLine" .=) <$> _esDrcLine,
            ("bitstreamMode" .=) <$> _esBitstreamMode,
            ("surroundExMode" .=) <$> _esSurroundExMode,
            ("phaseControl" .=) <$> _esPhaseControl,
            ("passthroughControl" .=) <$> _esPassthroughControl,
            ("bitrate" .=) <$> _esBitrate,
            ("attenuationControl" .=) <$> _esAttenuationControl,
            ("surroundMode" .=) <$> _esSurroundMode,
            ("metadataControl" .=) <$> _esMetadataControl
          ]
      )
