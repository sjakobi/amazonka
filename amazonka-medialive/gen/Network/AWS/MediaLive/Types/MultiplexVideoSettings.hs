{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MultiplexVideoSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexVideoSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.MultiplexStatmuxVideoSettings
import Network.AWS.Prelude

-- | The video configuration for each program in a multiplex.
--
-- /See:/ 'multiplexVideoSettings' smart constructor.
data MultiplexVideoSettings = MultiplexVideoSettings'
  { _mvsConstantBitrate ::
      !(Maybe Nat),
    _mvsStatmuxSettings ::
      !( Maybe
           MultiplexStatmuxVideoSettings
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

-- | Creates a value of 'MultiplexVideoSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvsConstantBitrate' - The constant bitrate configuration for the video encode. When this field is defined, StatmuxSettings must be undefined.
--
-- * 'mvsStatmuxSettings' - Statmux rate control settings. When this field is defined, ConstantBitrate must be undefined.
multiplexVideoSettings ::
  MultiplexVideoSettings
multiplexVideoSettings =
  MultiplexVideoSettings'
    { _mvsConstantBitrate =
        Nothing,
      _mvsStatmuxSettings = Nothing
    }

-- | The constant bitrate configuration for the video encode. When this field is defined, StatmuxSettings must be undefined.
mvsConstantBitrate :: Lens' MultiplexVideoSettings (Maybe Natural)
mvsConstantBitrate = lens _mvsConstantBitrate (\s a -> s {_mvsConstantBitrate = a}) . mapping _Nat

-- | Statmux rate control settings. When this field is defined, ConstantBitrate must be undefined.
mvsStatmuxSettings :: Lens' MultiplexVideoSettings (Maybe MultiplexStatmuxVideoSettings)
mvsStatmuxSettings = lens _mvsStatmuxSettings (\s a -> s {_mvsStatmuxSettings = a})

instance FromJSON MultiplexVideoSettings where
  parseJSON =
    withObject
      "MultiplexVideoSettings"
      ( \x ->
          MultiplexVideoSettings'
            <$> (x .:? "constantBitrate")
            <*> (x .:? "statmuxSettings")
      )

instance Hashable MultiplexVideoSettings

instance NFData MultiplexVideoSettings

instance ToJSON MultiplexVideoSettings where
  toJSON MultiplexVideoSettings' {..} =
    object
      ( catMaybes
          [ ("constantBitrate" .=) <$> _mvsConstantBitrate,
            ("statmuxSettings" .=) <$> _mvsStatmuxSettings
          ]
      )
