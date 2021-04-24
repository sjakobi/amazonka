{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ScheduleRunConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ScheduleRunConfiguration where

import Network.AWS.DeviceFarm.Types.BillingMethod
import Network.AWS.DeviceFarm.Types.CustomerArtifactPaths
import Network.AWS.DeviceFarm.Types.Location
import Network.AWS.DeviceFarm.Types.Radios
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the settings for a run. Includes things like location, radio states, auxiliary apps, and network profiles.
--
--
--
-- /See:/ 'scheduleRunConfiguration' smart constructor.
data ScheduleRunConfiguration = ScheduleRunConfiguration'
  { _srcLocale ::
      !(Maybe Text),
    _srcAuxiliaryApps ::
      !(Maybe [Text]),
    _srcRadios ::
      !(Maybe Radios),
    _srcBillingMethod ::
      !( Maybe
           BillingMethod
       ),
    _srcCustomerArtifactPaths ::
      !( Maybe
           CustomerArtifactPaths
       ),
    _srcVpceConfigurationARNs ::
      !(Maybe [Text]),
    _srcNetworkProfileARN ::
      !(Maybe Text),
    _srcLocation ::
      !(Maybe Location),
    _srcExtraDataPackageARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ScheduleRunConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcLocale' - Information about the locale that is used for the run.
--
-- * 'srcAuxiliaryApps' - A list of upload ARNs for app packages to be installed with your app.
--
-- * 'srcRadios' - Information about the radio states for the run.
--
-- * 'srcBillingMethod' - Specifies the billing method for a test run: @metered@ or @unmetered@ . If the parameter is not specified, the default value is @metered@ .
--
-- * 'srcCustomerArtifactPaths' - Input @CustomerArtifactPaths@ object for the scheduled run configuration.
--
-- * 'srcVpceConfigurationARNs' - An array of ARNs for your VPC endpoint configurations.
--
-- * 'srcNetworkProfileARN' - Reserved for internal use.
--
-- * 'srcLocation' - Information about the location that is used for the run.
--
-- * 'srcExtraDataPackageARN' - The ARN of the extra data for the run. The extra data is a .zip file that AWS Device Farm extracts to external data for Android or the app's sandbox for iOS.
scheduleRunConfiguration ::
  ScheduleRunConfiguration
scheduleRunConfiguration =
  ScheduleRunConfiguration'
    { _srcLocale = Nothing,
      _srcAuxiliaryApps = Nothing,
      _srcRadios = Nothing,
      _srcBillingMethod = Nothing,
      _srcCustomerArtifactPaths = Nothing,
      _srcVpceConfigurationARNs = Nothing,
      _srcNetworkProfileARN = Nothing,
      _srcLocation = Nothing,
      _srcExtraDataPackageARN = Nothing
    }

-- | Information about the locale that is used for the run.
srcLocale :: Lens' ScheduleRunConfiguration (Maybe Text)
srcLocale = lens _srcLocale (\s a -> s {_srcLocale = a})

-- | A list of upload ARNs for app packages to be installed with your app.
srcAuxiliaryApps :: Lens' ScheduleRunConfiguration [Text]
srcAuxiliaryApps = lens _srcAuxiliaryApps (\s a -> s {_srcAuxiliaryApps = a}) . _Default . _Coerce

-- | Information about the radio states for the run.
srcRadios :: Lens' ScheduleRunConfiguration (Maybe Radios)
srcRadios = lens _srcRadios (\s a -> s {_srcRadios = a})

-- | Specifies the billing method for a test run: @metered@ or @unmetered@ . If the parameter is not specified, the default value is @metered@ .
srcBillingMethod :: Lens' ScheduleRunConfiguration (Maybe BillingMethod)
srcBillingMethod = lens _srcBillingMethod (\s a -> s {_srcBillingMethod = a})

-- | Input @CustomerArtifactPaths@ object for the scheduled run configuration.
srcCustomerArtifactPaths :: Lens' ScheduleRunConfiguration (Maybe CustomerArtifactPaths)
srcCustomerArtifactPaths = lens _srcCustomerArtifactPaths (\s a -> s {_srcCustomerArtifactPaths = a})

-- | An array of ARNs for your VPC endpoint configurations.
srcVpceConfigurationARNs :: Lens' ScheduleRunConfiguration [Text]
srcVpceConfigurationARNs = lens _srcVpceConfigurationARNs (\s a -> s {_srcVpceConfigurationARNs = a}) . _Default . _Coerce

-- | Reserved for internal use.
srcNetworkProfileARN :: Lens' ScheduleRunConfiguration (Maybe Text)
srcNetworkProfileARN = lens _srcNetworkProfileARN (\s a -> s {_srcNetworkProfileARN = a})

-- | Information about the location that is used for the run.
srcLocation :: Lens' ScheduleRunConfiguration (Maybe Location)
srcLocation = lens _srcLocation (\s a -> s {_srcLocation = a})

-- | The ARN of the extra data for the run. The extra data is a .zip file that AWS Device Farm extracts to external data for Android or the app's sandbox for iOS.
srcExtraDataPackageARN :: Lens' ScheduleRunConfiguration (Maybe Text)
srcExtraDataPackageARN = lens _srcExtraDataPackageARN (\s a -> s {_srcExtraDataPackageARN = a})

instance Hashable ScheduleRunConfiguration

instance NFData ScheduleRunConfiguration

instance ToJSON ScheduleRunConfiguration where
  toJSON ScheduleRunConfiguration' {..} =
    object
      ( catMaybes
          [ ("locale" .=) <$> _srcLocale,
            ("auxiliaryApps" .=) <$> _srcAuxiliaryApps,
            ("radios" .=) <$> _srcRadios,
            ("billingMethod" .=) <$> _srcBillingMethod,
            ("customerArtifactPaths" .=)
              <$> _srcCustomerArtifactPaths,
            ("vpceConfigurationArns" .=)
              <$> _srcVpceConfigurationARNs,
            ("networkProfileArn" .=) <$> _srcNetworkProfileARN,
            ("location" .=) <$> _srcLocation,
            ("extraDataPackageArn" .=)
              <$> _srcExtraDataPackageARN
          ]
      )
