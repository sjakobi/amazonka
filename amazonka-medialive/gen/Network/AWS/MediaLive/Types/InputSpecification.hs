{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSpecification where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputCodec
import Network.AWS.MediaLive.Types.InputMaximumBitrate
import Network.AWS.MediaLive.Types.InputResolution
import Network.AWS.Prelude

-- | Placeholder documentation for InputSpecification
--
-- /See:/ 'inputSpecification' smart constructor.
data InputSpecification = InputSpecification'
  { _isCodec ::
      !(Maybe InputCodec),
    _isMaximumBitrate ::
      !(Maybe InputMaximumBitrate),
    _isResolution ::
      !(Maybe InputResolution)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isCodec' - Input codec
--
-- * 'isMaximumBitrate' - Maximum input bitrate, categorized coarsely
--
-- * 'isResolution' - Input resolution, categorized coarsely
inputSpecification ::
  InputSpecification
inputSpecification =
  InputSpecification'
    { _isCodec = Nothing,
      _isMaximumBitrate = Nothing,
      _isResolution = Nothing
    }

-- | Input codec
isCodec :: Lens' InputSpecification (Maybe InputCodec)
isCodec = lens _isCodec (\s a -> s {_isCodec = a})

-- | Maximum input bitrate, categorized coarsely
isMaximumBitrate :: Lens' InputSpecification (Maybe InputMaximumBitrate)
isMaximumBitrate = lens _isMaximumBitrate (\s a -> s {_isMaximumBitrate = a})

-- | Input resolution, categorized coarsely
isResolution :: Lens' InputSpecification (Maybe InputResolution)
isResolution = lens _isResolution (\s a -> s {_isResolution = a})

instance FromJSON InputSpecification where
  parseJSON =
    withObject
      "InputSpecification"
      ( \x ->
          InputSpecification'
            <$> (x .:? "codec")
            <*> (x .:? "maximumBitrate")
            <*> (x .:? "resolution")
      )

instance Hashable InputSpecification

instance NFData InputSpecification

instance ToJSON InputSpecification where
  toJSON InputSpecification' {..} =
    object
      ( catMaybes
          [ ("codec" .=) <$> _isCodec,
            ("maximumBitrate" .=) <$> _isMaximumBitrate,
            ("resolution" .=) <$> _isResolution
          ]
      )
