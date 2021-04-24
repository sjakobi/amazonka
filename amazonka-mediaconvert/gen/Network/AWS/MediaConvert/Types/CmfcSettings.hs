{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmfcSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmfcSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CmfcAudioDuration
import Network.AWS.MediaConvert.Types.CmfcIFrameOnlyManifest
import Network.AWS.MediaConvert.Types.CmfcScte35Esam
import Network.AWS.MediaConvert.Types.CmfcScte35Source
import Network.AWS.Prelude

-- | Settings for MP4 segments in CMAF
--
-- /See:/ 'cmfcSettings' smart constructor.
data CmfcSettings = CmfcSettings'
  { _csIFrameOnlyManifest ::
      !(Maybe CmfcIFrameOnlyManifest),
    _csAudioDuration ::
      !(Maybe CmfcAudioDuration),
    _csScte35Esam :: !(Maybe CmfcScte35Esam),
    _csScte35Source :: !(Maybe CmfcScte35Source)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CmfcSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csIFrameOnlyManifest' - Choose Include (INCLUDE) to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE).
--
-- * 'csAudioDuration' - Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
--
-- * 'csScte35Esam' - Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
--
-- * 'csScte35Source' - Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
cmfcSettings ::
  CmfcSettings
cmfcSettings =
  CmfcSettings'
    { _csIFrameOnlyManifest = Nothing,
      _csAudioDuration = Nothing,
      _csScte35Esam = Nothing,
      _csScte35Source = Nothing
    }

-- | Choose Include (INCLUDE) to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE).
csIFrameOnlyManifest :: Lens' CmfcSettings (Maybe CmfcIFrameOnlyManifest)
csIFrameOnlyManifest = lens _csIFrameOnlyManifest (\s a -> s {_csIFrameOnlyManifest = a})

-- | Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
csAudioDuration :: Lens' CmfcSettings (Maybe CmfcAudioDuration)
csAudioDuration = lens _csAudioDuration (\s a -> s {_csAudioDuration = a})

-- | Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
csScte35Esam :: Lens' CmfcSettings (Maybe CmfcScte35Esam)
csScte35Esam = lens _csScte35Esam (\s a -> s {_csScte35Esam = a})

-- | Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
csScte35Source :: Lens' CmfcSettings (Maybe CmfcScte35Source)
csScte35Source = lens _csScte35Source (\s a -> s {_csScte35Source = a})

instance FromJSON CmfcSettings where
  parseJSON =
    withObject
      "CmfcSettings"
      ( \x ->
          CmfcSettings'
            <$> (x .:? "iFrameOnlyManifest")
            <*> (x .:? "audioDuration")
            <*> (x .:? "scte35Esam")
            <*> (x .:? "scte35Source")
      )

instance Hashable CmfcSettings

instance NFData CmfcSettings

instance ToJSON CmfcSettings where
  toJSON CmfcSettings' {..} =
    object
      ( catMaybes
          [ ("iFrameOnlyManifest" .=) <$> _csIFrameOnlyManifest,
            ("audioDuration" .=) <$> _csAudioDuration,
            ("scte35Esam" .=) <$> _csScte35Esam,
            ("scte35Source" .=) <$> _csScte35Source
          ]
      )
