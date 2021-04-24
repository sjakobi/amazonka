{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264ColorSpaceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ColorSpaceSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ColorSpacePassthroughSettings
import Network.AWS.MediaLive.Types.Rec601Settings
import Network.AWS.MediaLive.Types.Rec709Settings
import Network.AWS.Prelude

-- | H264 Color Space Settings
--
-- /See:/ 'h264ColorSpaceSettings' smart constructor.
data H264ColorSpaceSettings = H264ColorSpaceSettings'
  { _hcssRec601Settings ::
      !(Maybe Rec601Settings),
    _hcssRec709Settings ::
      !(Maybe Rec709Settings),
    _hcssColorSpacePassthroughSettings ::
      !( Maybe
           ColorSpacePassthroughSettings
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'H264ColorSpaceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcssRec601Settings' - Undocumented member.
--
-- * 'hcssRec709Settings' - Undocumented member.
--
-- * 'hcssColorSpacePassthroughSettings' - Undocumented member.
h264ColorSpaceSettings ::
  H264ColorSpaceSettings
h264ColorSpaceSettings =
  H264ColorSpaceSettings'
    { _hcssRec601Settings =
        Nothing,
      _hcssRec709Settings = Nothing,
      _hcssColorSpacePassthroughSettings = Nothing
    }

-- | Undocumented member.
hcssRec601Settings :: Lens' H264ColorSpaceSettings (Maybe Rec601Settings)
hcssRec601Settings = lens _hcssRec601Settings (\s a -> s {_hcssRec601Settings = a})

-- | Undocumented member.
hcssRec709Settings :: Lens' H264ColorSpaceSettings (Maybe Rec709Settings)
hcssRec709Settings = lens _hcssRec709Settings (\s a -> s {_hcssRec709Settings = a})

-- | Undocumented member.
hcssColorSpacePassthroughSettings :: Lens' H264ColorSpaceSettings (Maybe ColorSpacePassthroughSettings)
hcssColorSpacePassthroughSettings = lens _hcssColorSpacePassthroughSettings (\s a -> s {_hcssColorSpacePassthroughSettings = a})

instance FromJSON H264ColorSpaceSettings where
  parseJSON =
    withObject
      "H264ColorSpaceSettings"
      ( \x ->
          H264ColorSpaceSettings'
            <$> (x .:? "rec601Settings")
            <*> (x .:? "rec709Settings")
            <*> (x .:? "colorSpacePassthroughSettings")
      )

instance Hashable H264ColorSpaceSettings

instance NFData H264ColorSpaceSettings

instance ToJSON H264ColorSpaceSettings where
  toJSON H264ColorSpaceSettings' {..} =
    object
      ( catMaybes
          [ ("rec601Settings" .=) <$> _hcssRec601Settings,
            ("rec709Settings" .=) <$> _hcssRec709Settings,
            ("colorSpacePassthroughSettings" .=)
              <$> _hcssColorSpacePassthroughSettings
          ]
      )
