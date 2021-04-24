{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.MovClapAtom
import Network.AWS.MediaConvert.Types.MovCslgAtom
import Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
import Network.AWS.MediaConvert.Types.MovPaddingControl
import Network.AWS.MediaConvert.Types.MovReference
import Network.AWS.Prelude

-- | Settings for MOV Container.
--
-- /See:/ 'movSettings' smart constructor.
data MovSettings = MovSettings'
  { _msPaddingControl ::
      !(Maybe MovPaddingControl),
    _msCslgAtom :: !(Maybe MovCslgAtom),
    _msMpeg2FourCCControl ::
      !(Maybe MovMpeg2FourCCControl),
    _msClapAtom :: !(Maybe MovClapAtom),
    _msReference :: !(Maybe MovReference)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MovSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msPaddingControl' - To make this output compatible with Omenon, keep the default value, OMNEON. Unless you need Omneon compatibility, set this value to NONE. When you keep the default value, OMNEON, MediaConvert increases the length of the edit list atom. This might cause file rejections when a recipient of the output file doesn't expct this extra padding.
--
-- * 'msCslgAtom' - When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
--
-- * 'msMpeg2FourCCControl' - When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
--
-- * 'msClapAtom' - When enabled, include 'clap' atom if appropriate for the video output settings.
--
-- * 'msReference' - Always keep the default value (SELF_CONTAINED) for this setting.
movSettings ::
  MovSettings
movSettings =
  MovSettings'
    { _msPaddingControl = Nothing,
      _msCslgAtom = Nothing,
      _msMpeg2FourCCControl = Nothing,
      _msClapAtom = Nothing,
      _msReference = Nothing
    }

-- | To make this output compatible with Omenon, keep the default value, OMNEON. Unless you need Omneon compatibility, set this value to NONE. When you keep the default value, OMNEON, MediaConvert increases the length of the edit list atom. This might cause file rejections when a recipient of the output file doesn't expct this extra padding.
msPaddingControl :: Lens' MovSettings (Maybe MovPaddingControl)
msPaddingControl = lens _msPaddingControl (\s a -> s {_msPaddingControl = a})

-- | When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
msCslgAtom :: Lens' MovSettings (Maybe MovCslgAtom)
msCslgAtom = lens _msCslgAtom (\s a -> s {_msCslgAtom = a})

-- | When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
msMpeg2FourCCControl :: Lens' MovSettings (Maybe MovMpeg2FourCCControl)
msMpeg2FourCCControl = lens _msMpeg2FourCCControl (\s a -> s {_msMpeg2FourCCControl = a})

-- | When enabled, include 'clap' atom if appropriate for the video output settings.
msClapAtom :: Lens' MovSettings (Maybe MovClapAtom)
msClapAtom = lens _msClapAtom (\s a -> s {_msClapAtom = a})

-- | Always keep the default value (SELF_CONTAINED) for this setting.
msReference :: Lens' MovSettings (Maybe MovReference)
msReference = lens _msReference (\s a -> s {_msReference = a})

instance FromJSON MovSettings where
  parseJSON =
    withObject
      "MovSettings"
      ( \x ->
          MovSettings'
            <$> (x .:? "paddingControl")
            <*> (x .:? "cslgAtom")
            <*> (x .:? "mpeg2FourCCControl")
            <*> (x .:? "clapAtom")
            <*> (x .:? "reference")
      )

instance Hashable MovSettings

instance NFData MovSettings

instance ToJSON MovSettings where
  toJSON MovSettings' {..} =
    object
      ( catMaybes
          [ ("paddingControl" .=) <$> _msPaddingControl,
            ("cslgAtom" .=) <$> _msCslgAtom,
            ("mpeg2FourCCControl" .=) <$> _msMpeg2FourCCControl,
            ("clapAtom" .=) <$> _msClapAtom,
            ("reference" .=) <$> _msReference
          ]
      )
