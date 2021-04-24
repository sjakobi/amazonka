{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265ColorSpaceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265ColorSpaceSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ColorSpacePassthroughSettings
import Network.AWS.MediaLive.Types.Hdr10Settings
import Network.AWS.MediaLive.Types.Rec601Settings
import Network.AWS.MediaLive.Types.Rec709Settings
import Network.AWS.Prelude

-- | H265 Color Space Settings
--
-- /See:/ 'h265ColorSpaceSettings' smart constructor.
data H265ColorSpaceSettings = H265ColorSpaceSettings'
  { _hRec601Settings ::
      !(Maybe Rec601Settings),
    _hRec709Settings ::
      !(Maybe Rec709Settings),
    _hColorSpacePassthroughSettings ::
      !( Maybe
           ColorSpacePassthroughSettings
       ),
    _hHdr10Settings ::
      !(Maybe Hdr10Settings)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'H265ColorSpaceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hRec601Settings' - Undocumented member.
--
-- * 'hRec709Settings' - Undocumented member.
--
-- * 'hColorSpacePassthroughSettings' - Undocumented member.
--
-- * 'hHdr10Settings' - Undocumented member.
h265ColorSpaceSettings ::
  H265ColorSpaceSettings
h265ColorSpaceSettings =
  H265ColorSpaceSettings'
    { _hRec601Settings = Nothing,
      _hRec709Settings = Nothing,
      _hColorSpacePassthroughSettings = Nothing,
      _hHdr10Settings = Nothing
    }

-- | Undocumented member.
hRec601Settings :: Lens' H265ColorSpaceSettings (Maybe Rec601Settings)
hRec601Settings = lens _hRec601Settings (\s a -> s {_hRec601Settings = a})

-- | Undocumented member.
hRec709Settings :: Lens' H265ColorSpaceSettings (Maybe Rec709Settings)
hRec709Settings = lens _hRec709Settings (\s a -> s {_hRec709Settings = a})

-- | Undocumented member.
hColorSpacePassthroughSettings :: Lens' H265ColorSpaceSettings (Maybe ColorSpacePassthroughSettings)
hColorSpacePassthroughSettings = lens _hColorSpacePassthroughSettings (\s a -> s {_hColorSpacePassthroughSettings = a})

-- | Undocumented member.
hHdr10Settings :: Lens' H265ColorSpaceSettings (Maybe Hdr10Settings)
hHdr10Settings = lens _hHdr10Settings (\s a -> s {_hHdr10Settings = a})

instance FromJSON H265ColorSpaceSettings where
  parseJSON =
    withObject
      "H265ColorSpaceSettings"
      ( \x ->
          H265ColorSpaceSettings'
            <$> (x .:? "rec601Settings")
            <*> (x .:? "rec709Settings")
            <*> (x .:? "colorSpacePassthroughSettings")
            <*> (x .:? "hdr10Settings")
      )

instance Hashable H265ColorSpaceSettings

instance NFData H265ColorSpaceSettings

instance ToJSON H265ColorSpaceSettings where
  toJSON H265ColorSpaceSettings' {..} =
    object
      ( catMaybes
          [ ("rec601Settings" .=) <$> _hRec601Settings,
            ("rec709Settings" .=) <$> _hRec709Settings,
            ("colorSpacePassthroughSettings" .=)
              <$> _hColorSpacePassthroughSettings,
            ("hdr10Settings" .=) <$> _hHdr10Settings
          ]
      )
