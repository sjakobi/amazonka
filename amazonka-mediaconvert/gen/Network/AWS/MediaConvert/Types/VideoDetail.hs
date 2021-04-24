{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.VideoDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about the output's video stream
--
-- /See:/ 'videoDetail' smart constructor.
data VideoDetail = VideoDetail'
  { _vdWidthInPx ::
      !(Maybe Int),
    _vdHeightInPx :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdWidthInPx' - Width in pixels for the output
--
-- * 'vdHeightInPx' - Height in pixels for the output
videoDetail ::
  VideoDetail
videoDetail =
  VideoDetail'
    { _vdWidthInPx = Nothing,
      _vdHeightInPx = Nothing
    }

-- | Width in pixels for the output
vdWidthInPx :: Lens' VideoDetail (Maybe Int)
vdWidthInPx = lens _vdWidthInPx (\s a -> s {_vdWidthInPx = a})

-- | Height in pixels for the output
vdHeightInPx :: Lens' VideoDetail (Maybe Int)
vdHeightInPx = lens _vdHeightInPx (\s a -> s {_vdHeightInPx = a})

instance FromJSON VideoDetail where
  parseJSON =
    withObject
      "VideoDetail"
      ( \x ->
          VideoDetail'
            <$> (x .:? "widthInPx") <*> (x .:? "heightInPx")
      )

instance Hashable VideoDetail

instance NFData VideoDetail
