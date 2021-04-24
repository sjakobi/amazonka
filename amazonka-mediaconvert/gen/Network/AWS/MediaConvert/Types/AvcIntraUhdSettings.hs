{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraUhdSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraUhdSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AvcIntraUhdQualityTuningLevel
import Network.AWS.Prelude

-- | Optional when you set AVC-Intra class (avcIntraClass) to Class 4K/2K (CLASS_4K_2K). When you set AVC-Intra class to a different value, this object isn't allowed.
--
-- /See:/ 'avcIntraUhdSettings' smart constructor.
newtype AvcIntraUhdSettings = AvcIntraUhdSettings'
  { _aiusQualityTuningLevel ::
      Maybe
        AvcIntraUhdQualityTuningLevel
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AvcIntraUhdSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiusQualityTuningLevel' - Optional. Use Quality tuning level (qualityTuningLevel) to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass (MULTI_PASS), your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass (SINGLE_PASS), your encoding time is faster. The default behavior is Single-pass (SINGLE_PASS).
avcIntraUhdSettings ::
  AvcIntraUhdSettings
avcIntraUhdSettings =
  AvcIntraUhdSettings'
    { _aiusQualityTuningLevel =
        Nothing
    }

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass (MULTI_PASS), your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass (SINGLE_PASS), your encoding time is faster. The default behavior is Single-pass (SINGLE_PASS).
aiusQualityTuningLevel :: Lens' AvcIntraUhdSettings (Maybe AvcIntraUhdQualityTuningLevel)
aiusQualityTuningLevel = lens _aiusQualityTuningLevel (\s a -> s {_aiusQualityTuningLevel = a})

instance FromJSON AvcIntraUhdSettings where
  parseJSON =
    withObject
      "AvcIntraUhdSettings"
      ( \x ->
          AvcIntraUhdSettings'
            <$> (x .:? "qualityTuningLevel")
      )

instance Hashable AvcIntraUhdSettings

instance NFData AvcIntraUhdSettings

instance ToJSON AvcIntraUhdSettings where
  toJSON AvcIntraUhdSettings' {..} =
    object
      ( catMaybes
          [ ("qualityTuningLevel" .=)
              <$> _aiusQualityTuningLevel
          ]
      )
