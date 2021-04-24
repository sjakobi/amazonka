{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceUhdSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceUhdSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputDeviceActiveInput
import Network.AWS.MediaLive.Types.InputDeviceConfiguredInput
import Network.AWS.MediaLive.Types.InputDeviceScanType
import Network.AWS.MediaLive.Types.InputDeviceState
import Network.AWS.Prelude

-- | Settings that describe the active source from the input device, and the video characteristics of that source.
--
-- /See:/ 'inputDeviceUhdSettings' smart constructor.
data InputDeviceUhdSettings = InputDeviceUhdSettings'
  { _idusHeight ::
      !(Maybe Int),
    _idusScanType ::
      !( Maybe
           InputDeviceScanType
       ),
    _idusWidth ::
      !(Maybe Int),
    _idusConfiguredInput ::
      !( Maybe
           InputDeviceConfiguredInput
       ),
    _idusFramerate ::
      !(Maybe Double),
    _idusDeviceState ::
      !(Maybe InputDeviceState),
    _idusMaxBitrate ::
      !(Maybe Int),
    _idusActiveInput ::
      !( Maybe
           InputDeviceActiveInput
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

-- | Creates a value of 'InputDeviceUhdSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idusHeight' - The height of the video source, in pixels.
--
-- * 'idusScanType' - The scan type of the video source.
--
-- * 'idusWidth' - The width of the video source, in pixels.
--
-- * 'idusConfiguredInput' - The source at the input device that is currently active. You can specify this source.
--
-- * 'idusFramerate' - The frame rate of the video source.
--
-- * 'idusDeviceState' - The state of the input device.
--
-- * 'idusMaxBitrate' - The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum.
--
-- * 'idusActiveInput' - If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI).
inputDeviceUhdSettings ::
  InputDeviceUhdSettings
inputDeviceUhdSettings =
  InputDeviceUhdSettings'
    { _idusHeight = Nothing,
      _idusScanType = Nothing,
      _idusWidth = Nothing,
      _idusConfiguredInput = Nothing,
      _idusFramerate = Nothing,
      _idusDeviceState = Nothing,
      _idusMaxBitrate = Nothing,
      _idusActiveInput = Nothing
    }

-- | The height of the video source, in pixels.
idusHeight :: Lens' InputDeviceUhdSettings (Maybe Int)
idusHeight = lens _idusHeight (\s a -> s {_idusHeight = a})

-- | The scan type of the video source.
idusScanType :: Lens' InputDeviceUhdSettings (Maybe InputDeviceScanType)
idusScanType = lens _idusScanType (\s a -> s {_idusScanType = a})

-- | The width of the video source, in pixels.
idusWidth :: Lens' InputDeviceUhdSettings (Maybe Int)
idusWidth = lens _idusWidth (\s a -> s {_idusWidth = a})

-- | The source at the input device that is currently active. You can specify this source.
idusConfiguredInput :: Lens' InputDeviceUhdSettings (Maybe InputDeviceConfiguredInput)
idusConfiguredInput = lens _idusConfiguredInput (\s a -> s {_idusConfiguredInput = a})

-- | The frame rate of the video source.
idusFramerate :: Lens' InputDeviceUhdSettings (Maybe Double)
idusFramerate = lens _idusFramerate (\s a -> s {_idusFramerate = a})

-- | The state of the input device.
idusDeviceState :: Lens' InputDeviceUhdSettings (Maybe InputDeviceState)
idusDeviceState = lens _idusDeviceState (\s a -> s {_idusDeviceState = a})

-- | The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum.
idusMaxBitrate :: Lens' InputDeviceUhdSettings (Maybe Int)
idusMaxBitrate = lens _idusMaxBitrate (\s a -> s {_idusMaxBitrate = a})

-- | If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI).
idusActiveInput :: Lens' InputDeviceUhdSettings (Maybe InputDeviceActiveInput)
idusActiveInput = lens _idusActiveInput (\s a -> s {_idusActiveInput = a})

instance FromJSON InputDeviceUhdSettings where
  parseJSON =
    withObject
      "InputDeviceUhdSettings"
      ( \x ->
          InputDeviceUhdSettings'
            <$> (x .:? "height")
            <*> (x .:? "scanType")
            <*> (x .:? "width")
            <*> (x .:? "configuredInput")
            <*> (x .:? "framerate")
            <*> (x .:? "deviceState")
            <*> (x .:? "maxBitrate")
            <*> (x .:? "activeInput")
      )

instance Hashable InputDeviceUhdSettings

instance NFData InputDeviceUhdSettings
