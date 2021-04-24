{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoCodecSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.VideoCodecSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Av1Settings
import Network.AWS.MediaConvert.Types.AvcIntraSettings
import Network.AWS.MediaConvert.Types.FrameCaptureSettings
import Network.AWS.MediaConvert.Types.H264Settings
import Network.AWS.MediaConvert.Types.H265Settings
import Network.AWS.MediaConvert.Types.Mpeg2Settings
import Network.AWS.MediaConvert.Types.ProresSettings
import Network.AWS.MediaConvert.Types.Vc3Settings
import Network.AWS.MediaConvert.Types.VideoCodec
import Network.AWS.MediaConvert.Types.Vp8Settings
import Network.AWS.MediaConvert.Types.Vp9Settings
import Network.AWS.Prelude

-- | Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AV1, Av1Settings * AVC_INTRA, AvcIntraSettings * FRAME_CAPTURE, FrameCaptureSettings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * VC3, Vc3Settings * VP8, Vp8Settings * VP9, Vp9Settings
--
-- /See:/ 'videoCodecSettings' smart constructor.
data VideoCodecSettings = VideoCodecSettings'
  { _vcsFrameCaptureSettings ::
      !(Maybe FrameCaptureSettings),
    _vcsCodec :: !(Maybe VideoCodec),
    _vcsVc3Settings ::
      !(Maybe Vc3Settings),
    _vcsVp8Settings ::
      !(Maybe Vp8Settings),
    _vcsMpeg2Settings ::
      !(Maybe Mpeg2Settings),
    _vcsH264Settings ::
      !(Maybe H264Settings),
    _vcsVp9Settings ::
      !(Maybe Vp9Settings),
    _vcsProresSettings ::
      !(Maybe ProresSettings),
    _vcsH265Settings ::
      !(Maybe H265Settings),
    _vcsAvcIntraSettings ::
      !(Maybe AvcIntraSettings),
    _vcsAv1Settings ::
      !(Maybe Av1Settings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoCodecSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcsFrameCaptureSettings' - Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.
--
-- * 'vcsCodec' - Specifies the video codec. This must be equal to one of the enum values defined by the object  VideoCodec.
--
-- * 'vcsVc3Settings' - Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VC3
--
-- * 'vcsVp8Settings' - Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8.
--
-- * 'vcsMpeg2Settings' - Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
--
-- * 'vcsH264Settings' - Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
--
-- * 'vcsVp9Settings' - Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9.
--
-- * 'vcsProresSettings' - Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.
--
-- * 'vcsH265Settings' - Settings for H265 codec
--
-- * 'vcsAvcIntraSettings' - Required when you set your output video codec to AVC-Intra. For more information about the AVC-I settings, see the relevant specification. For detailed information about SD and HD in AVC-I, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-I, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf.
--
-- * 'vcsAv1Settings' - Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.
videoCodecSettings ::
  VideoCodecSettings
videoCodecSettings =
  VideoCodecSettings'
    { _vcsFrameCaptureSettings =
        Nothing,
      _vcsCodec = Nothing,
      _vcsVc3Settings = Nothing,
      _vcsVp8Settings = Nothing,
      _vcsMpeg2Settings = Nothing,
      _vcsH264Settings = Nothing,
      _vcsVp9Settings = Nothing,
      _vcsProresSettings = Nothing,
      _vcsH265Settings = Nothing,
      _vcsAvcIntraSettings = Nothing,
      _vcsAv1Settings = Nothing
    }

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.
vcsFrameCaptureSettings :: Lens' VideoCodecSettings (Maybe FrameCaptureSettings)
vcsFrameCaptureSettings = lens _vcsFrameCaptureSettings (\s a -> s {_vcsFrameCaptureSettings = a})

-- | Specifies the video codec. This must be equal to one of the enum values defined by the object  VideoCodec.
vcsCodec :: Lens' VideoCodecSettings (Maybe VideoCodec)
vcsCodec = lens _vcsCodec (\s a -> s {_vcsCodec = a})

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VC3
vcsVc3Settings :: Lens' VideoCodecSettings (Maybe Vc3Settings)
vcsVc3Settings = lens _vcsVc3Settings (\s a -> s {_vcsVc3Settings = a})

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8.
vcsVp8Settings :: Lens' VideoCodecSettings (Maybe Vp8Settings)
vcsVp8Settings = lens _vcsVp8Settings (\s a -> s {_vcsVp8Settings = a})

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
vcsMpeg2Settings :: Lens' VideoCodecSettings (Maybe Mpeg2Settings)
vcsMpeg2Settings = lens _vcsMpeg2Settings (\s a -> s {_vcsMpeg2Settings = a})

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
vcsH264Settings :: Lens' VideoCodecSettings (Maybe H264Settings)
vcsH264Settings = lens _vcsH264Settings (\s a -> s {_vcsH264Settings = a})

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9.
vcsVp9Settings :: Lens' VideoCodecSettings (Maybe Vp9Settings)
vcsVp9Settings = lens _vcsVp9Settings (\s a -> s {_vcsVp9Settings = a})

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.
vcsProresSettings :: Lens' VideoCodecSettings (Maybe ProresSettings)
vcsProresSettings = lens _vcsProresSettings (\s a -> s {_vcsProresSettings = a})

-- | Settings for H265 codec
vcsH265Settings :: Lens' VideoCodecSettings (Maybe H265Settings)
vcsH265Settings = lens _vcsH265Settings (\s a -> s {_vcsH265Settings = a})

-- | Required when you set your output video codec to AVC-Intra. For more information about the AVC-I settings, see the relevant specification. For detailed information about SD and HD in AVC-I, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-I, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf.
vcsAvcIntraSettings :: Lens' VideoCodecSettings (Maybe AvcIntraSettings)
vcsAvcIntraSettings = lens _vcsAvcIntraSettings (\s a -> s {_vcsAvcIntraSettings = a})

-- | Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.
vcsAv1Settings :: Lens' VideoCodecSettings (Maybe Av1Settings)
vcsAv1Settings = lens _vcsAv1Settings (\s a -> s {_vcsAv1Settings = a})

instance FromJSON VideoCodecSettings where
  parseJSON =
    withObject
      "VideoCodecSettings"
      ( \x ->
          VideoCodecSettings'
            <$> (x .:? "frameCaptureSettings")
            <*> (x .:? "codec")
            <*> (x .:? "vc3Settings")
            <*> (x .:? "vp8Settings")
            <*> (x .:? "mpeg2Settings")
            <*> (x .:? "h264Settings")
            <*> (x .:? "vp9Settings")
            <*> (x .:? "proresSettings")
            <*> (x .:? "h265Settings")
            <*> (x .:? "avcIntraSettings")
            <*> (x .:? "av1Settings")
      )

instance Hashable VideoCodecSettings

instance NFData VideoCodecSettings

instance ToJSON VideoCodecSettings where
  toJSON VideoCodecSettings' {..} =
    object
      ( catMaybes
          [ ("frameCaptureSettings" .=)
              <$> _vcsFrameCaptureSettings,
            ("codec" .=) <$> _vcsCodec,
            ("vc3Settings" .=) <$> _vcsVc3Settings,
            ("vp8Settings" .=) <$> _vcsVp8Settings,
            ("mpeg2Settings" .=) <$> _vcsMpeg2Settings,
            ("h264Settings" .=) <$> _vcsH264Settings,
            ("vp9Settings" .=) <$> _vcsVp9Settings,
            ("proresSettings" .=) <$> _vcsProresSettings,
            ("h265Settings" .=) <$> _vcsH265Settings,
            ("avcIntraSettings" .=) <$> _vcsAvcIntraSettings,
            ("av1Settings" .=) <$> _vcsAv1Settings
          ]
      )
