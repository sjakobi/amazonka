{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.JobWatermark
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.JobWatermark where

import Network.AWS.ElasticTranscoder.Types.Encryption
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.
--
--
--
-- /See:/ 'jobWatermark' smart constructor.
data JobWatermark = JobWatermark'
  { _jwInputKey ::
      !(Maybe Text),
    _jwEncryption :: !(Maybe Encryption),
    _jwPresetWatermarkId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobWatermark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jwInputKey' - The name of the .png or .jpg file that you want to use for the watermark. To determine which Amazon S3 bucket contains the specified file, Elastic Transcoder checks the pipeline specified by @Pipeline@ ; the @Input Bucket@ object in that pipeline identifies the bucket. If the file name includes a prefix, for example, __logos/128x64.png__ , include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error.
--
-- * 'jwEncryption' - The encryption settings, if any, that you want Elastic Transcoder to apply to your watermarks.
--
-- * 'jwPresetWatermarkId' - The ID of the watermark settings that Elastic Transcoder uses to add watermarks to the video during transcoding. The settings are in the preset specified by Preset for the current output. In that preset, the value of Watermarks Id tells Elastic Transcoder which settings to use.
jobWatermark ::
  JobWatermark
jobWatermark =
  JobWatermark'
    { _jwInputKey = Nothing,
      _jwEncryption = Nothing,
      _jwPresetWatermarkId = Nothing
    }

-- | The name of the .png or .jpg file that you want to use for the watermark. To determine which Amazon S3 bucket contains the specified file, Elastic Transcoder checks the pipeline specified by @Pipeline@ ; the @Input Bucket@ object in that pipeline identifies the bucket. If the file name includes a prefix, for example, __logos/128x64.png__ , include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error.
jwInputKey :: Lens' JobWatermark (Maybe Text)
jwInputKey = lens _jwInputKey (\s a -> s {_jwInputKey = a})

-- | The encryption settings, if any, that you want Elastic Transcoder to apply to your watermarks.
jwEncryption :: Lens' JobWatermark (Maybe Encryption)
jwEncryption = lens _jwEncryption (\s a -> s {_jwEncryption = a})

-- | The ID of the watermark settings that Elastic Transcoder uses to add watermarks to the video during transcoding. The settings are in the preset specified by Preset for the current output. In that preset, the value of Watermarks Id tells Elastic Transcoder which settings to use.
jwPresetWatermarkId :: Lens' JobWatermark (Maybe Text)
jwPresetWatermarkId = lens _jwPresetWatermarkId (\s a -> s {_jwPresetWatermarkId = a})

instance FromJSON JobWatermark where
  parseJSON =
    withObject
      "JobWatermark"
      ( \x ->
          JobWatermark'
            <$> (x .:? "InputKey")
            <*> (x .:? "Encryption")
            <*> (x .:? "PresetWatermarkId")
      )

instance Hashable JobWatermark

instance NFData JobWatermark

instance ToJSON JobWatermark where
  toJSON JobWatermark' {..} =
    object
      ( catMaybes
          [ ("InputKey" .=) <$> _jwInputKey,
            ("Encryption" .=) <$> _jwEncryption,
            ("PresetWatermarkId" .=) <$> _jwPresetWatermarkId
          ]
      )
