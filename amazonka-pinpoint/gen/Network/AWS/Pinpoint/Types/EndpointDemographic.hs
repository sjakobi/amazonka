{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointDemographic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointDemographic where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies demographic information about an endpoint, such as the applicable time zone and platform.
--
--
--
-- /See:/ 'endpointDemographic' smart constructor.
data EndpointDemographic = EndpointDemographic'
  { _edModel ::
      !(Maybe Text),
    _edPlatform :: !(Maybe Text),
    _edAppVersion :: !(Maybe Text),
    _edLocale :: !(Maybe Text),
    _edPlatformVersion ::
      !(Maybe Text),
    _edModelVersion ::
      !(Maybe Text),
    _edTimezone :: !(Maybe Text),
    _edMake :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointDemographic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edModel' - The model name or number of the endpoint device, such as iPhone or SM-G900F.
--
-- * 'edPlatform' - The platform of the endpoint device, such as ios.
--
-- * 'edAppVersion' - The version of the app that's associated with the endpoint.
--
-- * 'edLocale' - The locale of the endpoint, in the following format: the ISO 639-1 alpha-2 code, followed by an underscore (_), followed by an ISO 3166-1 alpha-2 value.
--
-- * 'edPlatformVersion' - The platform version of the endpoint device.
--
-- * 'edModelVersion' - The model version of the endpoint device.
--
-- * 'edTimezone' - The time zone of the endpoint, specified as a tz database name value, such as America/Los_Angeles.
--
-- * 'edMake' - The manufacturer of the endpoint device, such as apple or samsung.
endpointDemographic ::
  EndpointDemographic
endpointDemographic =
  EndpointDemographic'
    { _edModel = Nothing,
      _edPlatform = Nothing,
      _edAppVersion = Nothing,
      _edLocale = Nothing,
      _edPlatformVersion = Nothing,
      _edModelVersion = Nothing,
      _edTimezone = Nothing,
      _edMake = Nothing
    }

-- | The model name or number of the endpoint device, such as iPhone or SM-G900F.
edModel :: Lens' EndpointDemographic (Maybe Text)
edModel = lens _edModel (\s a -> s {_edModel = a})

-- | The platform of the endpoint device, such as ios.
edPlatform :: Lens' EndpointDemographic (Maybe Text)
edPlatform = lens _edPlatform (\s a -> s {_edPlatform = a})

-- | The version of the app that's associated with the endpoint.
edAppVersion :: Lens' EndpointDemographic (Maybe Text)
edAppVersion = lens _edAppVersion (\s a -> s {_edAppVersion = a})

-- | The locale of the endpoint, in the following format: the ISO 639-1 alpha-2 code, followed by an underscore (_), followed by an ISO 3166-1 alpha-2 value.
edLocale :: Lens' EndpointDemographic (Maybe Text)
edLocale = lens _edLocale (\s a -> s {_edLocale = a})

-- | The platform version of the endpoint device.
edPlatformVersion :: Lens' EndpointDemographic (Maybe Text)
edPlatformVersion = lens _edPlatformVersion (\s a -> s {_edPlatformVersion = a})

-- | The model version of the endpoint device.
edModelVersion :: Lens' EndpointDemographic (Maybe Text)
edModelVersion = lens _edModelVersion (\s a -> s {_edModelVersion = a})

-- | The time zone of the endpoint, specified as a tz database name value, such as America/Los_Angeles.
edTimezone :: Lens' EndpointDemographic (Maybe Text)
edTimezone = lens _edTimezone (\s a -> s {_edTimezone = a})

-- | The manufacturer of the endpoint device, such as apple or samsung.
edMake :: Lens' EndpointDemographic (Maybe Text)
edMake = lens _edMake (\s a -> s {_edMake = a})

instance FromJSON EndpointDemographic where
  parseJSON =
    withObject
      "EndpointDemographic"
      ( \x ->
          EndpointDemographic'
            <$> (x .:? "Model")
            <*> (x .:? "Platform")
            <*> (x .:? "AppVersion")
            <*> (x .:? "Locale")
            <*> (x .:? "PlatformVersion")
            <*> (x .:? "ModelVersion")
            <*> (x .:? "Timezone")
            <*> (x .:? "Make")
      )

instance Hashable EndpointDemographic

instance NFData EndpointDemographic

instance ToJSON EndpointDemographic where
  toJSON EndpointDemographic' {..} =
    object
      ( catMaybes
          [ ("Model" .=) <$> _edModel,
            ("Platform" .=) <$> _edPlatform,
            ("AppVersion" .=) <$> _edAppVersion,
            ("Locale" .=) <$> _edLocale,
            ("PlatformVersion" .=) <$> _edPlatformVersion,
            ("ModelVersion" .=) <$> _edModelVersion,
            ("Timezone" .=) <$> _edTimezone,
            ("Make" .=) <$> _edMake
          ]
      )
