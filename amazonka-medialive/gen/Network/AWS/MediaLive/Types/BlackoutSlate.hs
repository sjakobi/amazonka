{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BlackoutSlate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BlackoutSlate where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.BlackoutSlateNetworkEndBlackout
import Network.AWS.MediaLive.Types.BlackoutSlateState
import Network.AWS.MediaLive.Types.InputLocation
import Network.AWS.Prelude

-- | Blackout Slate
--
-- /See:/ 'blackoutSlate' smart constructor.
data BlackoutSlate = BlackoutSlate'
  { _bsBlackoutSlateImage ::
      !(Maybe InputLocation),
    _bsNetworkEndBlackout ::
      !(Maybe BlackoutSlateNetworkEndBlackout),
    _bsState :: !(Maybe BlackoutSlateState),
    _bsNetworkEndBlackoutImage ::
      !(Maybe InputLocation),
    _bsNetworkId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BlackoutSlate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsBlackoutSlateImage' - Blackout slate image to be used. Leave empty for solid black. Only bmp and png images are supported.
--
-- * 'bsNetworkEndBlackout' - Setting to enabled causes the encoder to blackout the video, audio, and captions, and raise the "Network Blackout Image" slate when an SCTE104/35 Network End Segmentation Descriptor is encountered. The blackout will be lifted when the Network Start Segmentation Descriptor is encountered. The Network End and Network Start descriptors must contain a network ID that matches the value entered in "Network ID".
--
-- * 'bsState' - When set to enabled, causes video, audio and captions to be blanked when indicated by program metadata.
--
-- * 'bsNetworkEndBlackoutImage' - Path to local file to use as Network End Blackout image. Image will be scaled to fill the entire output raster.
--
-- * 'bsNetworkId' - Provides Network ID that matches EIDR ID format (e.g., "10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C").
blackoutSlate ::
  BlackoutSlate
blackoutSlate =
  BlackoutSlate'
    { _bsBlackoutSlateImage = Nothing,
      _bsNetworkEndBlackout = Nothing,
      _bsState = Nothing,
      _bsNetworkEndBlackoutImage = Nothing,
      _bsNetworkId = Nothing
    }

-- | Blackout slate image to be used. Leave empty for solid black. Only bmp and png images are supported.
bsBlackoutSlateImage :: Lens' BlackoutSlate (Maybe InputLocation)
bsBlackoutSlateImage = lens _bsBlackoutSlateImage (\s a -> s {_bsBlackoutSlateImage = a})

-- | Setting to enabled causes the encoder to blackout the video, audio, and captions, and raise the "Network Blackout Image" slate when an SCTE104/35 Network End Segmentation Descriptor is encountered. The blackout will be lifted when the Network Start Segmentation Descriptor is encountered. The Network End and Network Start descriptors must contain a network ID that matches the value entered in "Network ID".
bsNetworkEndBlackout :: Lens' BlackoutSlate (Maybe BlackoutSlateNetworkEndBlackout)
bsNetworkEndBlackout = lens _bsNetworkEndBlackout (\s a -> s {_bsNetworkEndBlackout = a})

-- | When set to enabled, causes video, audio and captions to be blanked when indicated by program metadata.
bsState :: Lens' BlackoutSlate (Maybe BlackoutSlateState)
bsState = lens _bsState (\s a -> s {_bsState = a})

-- | Path to local file to use as Network End Blackout image. Image will be scaled to fill the entire output raster.
bsNetworkEndBlackoutImage :: Lens' BlackoutSlate (Maybe InputLocation)
bsNetworkEndBlackoutImage = lens _bsNetworkEndBlackoutImage (\s a -> s {_bsNetworkEndBlackoutImage = a})

-- | Provides Network ID that matches EIDR ID format (e.g., "10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C").
bsNetworkId :: Lens' BlackoutSlate (Maybe Text)
bsNetworkId = lens _bsNetworkId (\s a -> s {_bsNetworkId = a})

instance FromJSON BlackoutSlate where
  parseJSON =
    withObject
      "BlackoutSlate"
      ( \x ->
          BlackoutSlate'
            <$> (x .:? "blackoutSlateImage")
            <*> (x .:? "networkEndBlackout")
            <*> (x .:? "state")
            <*> (x .:? "networkEndBlackoutImage")
            <*> (x .:? "networkId")
      )

instance Hashable BlackoutSlate

instance NFData BlackoutSlate

instance ToJSON BlackoutSlate where
  toJSON BlackoutSlate' {..} =
    object
      ( catMaybes
          [ ("blackoutSlateImage" .=) <$> _bsBlackoutSlateImage,
            ("networkEndBlackout" .=) <$> _bsNetworkEndBlackout,
            ("state" .=) <$> _bsState,
            ("networkEndBlackoutImage" .=)
              <$> _bsNetworkEndBlackoutImage,
            ("networkId" .=) <$> _bsNetworkId
          ]
      )
