{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MpdSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MpdSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.MpdAccessibilityCaptionHints
import Network.AWS.MediaConvert.Types.MpdAudioDuration
import Network.AWS.MediaConvert.Types.MpdCaptionContainerType
import Network.AWS.MediaConvert.Types.MpdScte35Esam
import Network.AWS.MediaConvert.Types.MpdScte35Source
import Network.AWS.Prelude

-- | Settings for MP4 segments in DASH
--
-- /See:/ 'mpdSettings' smart constructor.
data MpdSettings = MpdSettings'
  { _msAccessibilityCaptionHints ::
      !(Maybe MpdAccessibilityCaptionHints),
    _msCaptionContainerType ::
      !(Maybe MpdCaptionContainerType),
    _msAudioDuration :: !(Maybe MpdAudioDuration),
    _msScte35Esam :: !(Maybe MpdScte35Esam),
    _msScte35Source :: !(Maybe MpdScte35Source)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MpdSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msAccessibilityCaptionHints' - <Accessibility>elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude (EXCLUDE), to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility>
--
-- * 'msCaptionContainerType' - Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.
--
-- * 'msAudioDuration' - Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
--
-- * 'msScte35Esam' - Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
--
-- * 'msScte35Source' - Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
mpdSettings ::
  MpdSettings
mpdSettings =
  MpdSettings'
    { _msAccessibilityCaptionHints =
        Nothing,
      _msCaptionContainerType = Nothing,
      _msAudioDuration = Nothing,
      _msScte35Esam = Nothing,
      _msScte35Source = Nothing
    }

-- | <Accessibility>elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude (EXCLUDE), to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility>
msAccessibilityCaptionHints :: Lens' MpdSettings (Maybe MpdAccessibilityCaptionHints)
msAccessibilityCaptionHints = lens _msAccessibilityCaptionHints (\s a -> s {_msAccessibilityCaptionHints = a})

-- | Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.
msCaptionContainerType :: Lens' MpdSettings (Maybe MpdCaptionContainerType)
msCaptionContainerType = lens _msCaptionContainerType (\s a -> s {_msCaptionContainerType = a})

-- | Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
msAudioDuration :: Lens' MpdSettings (Maybe MpdAudioDuration)
msAudioDuration = lens _msAudioDuration (\s a -> s {_msAudioDuration = a})

-- | Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
msScte35Esam :: Lens' MpdSettings (Maybe MpdScte35Esam)
msScte35Esam = lens _msScte35Esam (\s a -> s {_msScte35Esam = a})

-- | Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
msScte35Source :: Lens' MpdSettings (Maybe MpdScte35Source)
msScte35Source = lens _msScte35Source (\s a -> s {_msScte35Source = a})

instance FromJSON MpdSettings where
  parseJSON =
    withObject
      "MpdSettings"
      ( \x ->
          MpdSettings'
            <$> (x .:? "accessibilityCaptionHints")
            <*> (x .:? "captionContainerType")
            <*> (x .:? "audioDuration")
            <*> (x .:? "scte35Esam")
            <*> (x .:? "scte35Source")
      )

instance Hashable MpdSettings

instance NFData MpdSettings

instance ToJSON MpdSettings where
  toJSON MpdSettings' {..} =
    object
      ( catMaybes
          [ ("accessibilityCaptionHints" .=)
              <$> _msAccessibilityCaptionHints,
            ("captionContainerType" .=)
              <$> _msCaptionContainerType,
            ("audioDuration" .=) <$> _msAudioDuration,
            ("scte35Esam" .=) <$> _msScte35Esam,
            ("scte35Source" .=) <$> _msScte35Source
          ]
      )
