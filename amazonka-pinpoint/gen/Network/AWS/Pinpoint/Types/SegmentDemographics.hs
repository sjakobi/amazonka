{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SegmentDemographics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SegmentDemographics where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.SetDimension
import Network.AWS.Prelude

-- | Specifies demographic-based dimension settings for including or excluding endpoints from a segment. These settings derive from characteristics of endpoint devices, such as platform, make, and model.
--
--
--
-- /See:/ 'segmentDemographics' smart constructor.
data SegmentDemographics = SegmentDemographics'
  { _sdModel ::
      !(Maybe SetDimension),
    _sdPlatform ::
      !(Maybe SetDimension),
    _sdAppVersion ::
      !(Maybe SetDimension),
    _sdChannel ::
      !(Maybe SetDimension),
    _sdDeviceType ::
      !(Maybe SetDimension),
    _sdMake ::
      !(Maybe SetDimension)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentDemographics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdModel' - The device model criteria for the segment.
--
-- * 'sdPlatform' - The device platform criteria for the segment.
--
-- * 'sdAppVersion' - The app version criteria for the segment.
--
-- * 'sdChannel' - The channel criteria for the segment.
--
-- * 'sdDeviceType' - The device type criteria for the segment.
--
-- * 'sdMake' - The device make criteria for the segment.
segmentDemographics ::
  SegmentDemographics
segmentDemographics =
  SegmentDemographics'
    { _sdModel = Nothing,
      _sdPlatform = Nothing,
      _sdAppVersion = Nothing,
      _sdChannel = Nothing,
      _sdDeviceType = Nothing,
      _sdMake = Nothing
    }

-- | The device model criteria for the segment.
sdModel :: Lens' SegmentDemographics (Maybe SetDimension)
sdModel = lens _sdModel (\s a -> s {_sdModel = a})

-- | The device platform criteria for the segment.
sdPlatform :: Lens' SegmentDemographics (Maybe SetDimension)
sdPlatform = lens _sdPlatform (\s a -> s {_sdPlatform = a})

-- | The app version criteria for the segment.
sdAppVersion :: Lens' SegmentDemographics (Maybe SetDimension)
sdAppVersion = lens _sdAppVersion (\s a -> s {_sdAppVersion = a})

-- | The channel criteria for the segment.
sdChannel :: Lens' SegmentDemographics (Maybe SetDimension)
sdChannel = lens _sdChannel (\s a -> s {_sdChannel = a})

-- | The device type criteria for the segment.
sdDeviceType :: Lens' SegmentDemographics (Maybe SetDimension)
sdDeviceType = lens _sdDeviceType (\s a -> s {_sdDeviceType = a})

-- | The device make criteria for the segment.
sdMake :: Lens' SegmentDemographics (Maybe SetDimension)
sdMake = lens _sdMake (\s a -> s {_sdMake = a})

instance FromJSON SegmentDemographics where
  parseJSON =
    withObject
      "SegmentDemographics"
      ( \x ->
          SegmentDemographics'
            <$> (x .:? "Model")
            <*> (x .:? "Platform")
            <*> (x .:? "AppVersion")
            <*> (x .:? "Channel")
            <*> (x .:? "DeviceType")
            <*> (x .:? "Make")
      )

instance Hashable SegmentDemographics

instance NFData SegmentDemographics

instance ToJSON SegmentDemographics where
  toJSON SegmentDemographics' {..} =
    object
      ( catMaybes
          [ ("Model" .=) <$> _sdModel,
            ("Platform" .=) <$> _sdPlatform,
            ("AppVersion" .=) <$> _sdAppVersion,
            ("Channel" .=) <$> _sdChannel,
            ("DeviceType" .=) <$> _sdDeviceType,
            ("Make" .=) <$> _sdMake
          ]
      )
