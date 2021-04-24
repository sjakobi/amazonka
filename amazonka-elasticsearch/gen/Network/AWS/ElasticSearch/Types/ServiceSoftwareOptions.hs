{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ServiceSoftwareOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ServiceSoftwareOptions where

import Network.AWS.ElasticSearch.Types.DeploymentStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The current options of an Elasticsearch domain service software options.
--
--
--
-- /See:/ 'serviceSoftwareOptions' smart constructor.
data ServiceSoftwareOptions = ServiceSoftwareOptions'
  { _ssoNewVersion ::
      !(Maybe Text),
    _ssoCurrentVersion ::
      !(Maybe Text),
    _ssoUpdateAvailable ::
      !(Maybe Bool),
    _ssoCancellable ::
      !(Maybe Bool),
    _ssoUpdateStatus ::
      !(Maybe DeploymentStatus),
    _ssoOptionalDeployment ::
      !(Maybe Bool),
    _ssoDescription ::
      !(Maybe Text),
    _ssoAutomatedUpdateDate ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ServiceSoftwareOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssoNewVersion' - The new service software version if one is available.
--
-- * 'ssoCurrentVersion' - The current service software version that is present on the domain.
--
-- * 'ssoUpdateAvailable' - @True@ if you are able to update you service software version. @False@ if you are not able to update your service software version.
--
-- * 'ssoCancellable' - @True@ if you are able to cancel your service software version update. @False@ if you are not able to cancel your service software version.
--
-- * 'ssoUpdateStatus' - The status of your service software update. This field can take the following values: @ELIGIBLE@ , @PENDING_UPDATE@ , @IN_PROGRESS@ , @COMPLETED@ , and @NOT_ELIGIBLE@ .
--
-- * 'ssoOptionalDeployment' - @True@ if a service software is never automatically updated. @False@ if a service software is automatically updated after @AutomatedUpdateDate@ .
--
-- * 'ssoDescription' - The description of the @UpdateStatus@ .
--
-- * 'ssoAutomatedUpdateDate' - Timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.
serviceSoftwareOptions ::
  ServiceSoftwareOptions
serviceSoftwareOptions =
  ServiceSoftwareOptions'
    { _ssoNewVersion = Nothing,
      _ssoCurrentVersion = Nothing,
      _ssoUpdateAvailable = Nothing,
      _ssoCancellable = Nothing,
      _ssoUpdateStatus = Nothing,
      _ssoOptionalDeployment = Nothing,
      _ssoDescription = Nothing,
      _ssoAutomatedUpdateDate = Nothing
    }

-- | The new service software version if one is available.
ssoNewVersion :: Lens' ServiceSoftwareOptions (Maybe Text)
ssoNewVersion = lens _ssoNewVersion (\s a -> s {_ssoNewVersion = a})

-- | The current service software version that is present on the domain.
ssoCurrentVersion :: Lens' ServiceSoftwareOptions (Maybe Text)
ssoCurrentVersion = lens _ssoCurrentVersion (\s a -> s {_ssoCurrentVersion = a})

-- | @True@ if you are able to update you service software version. @False@ if you are not able to update your service software version.
ssoUpdateAvailable :: Lens' ServiceSoftwareOptions (Maybe Bool)
ssoUpdateAvailable = lens _ssoUpdateAvailable (\s a -> s {_ssoUpdateAvailable = a})

-- | @True@ if you are able to cancel your service software version update. @False@ if you are not able to cancel your service software version.
ssoCancellable :: Lens' ServiceSoftwareOptions (Maybe Bool)
ssoCancellable = lens _ssoCancellable (\s a -> s {_ssoCancellable = a})

-- | The status of your service software update. This field can take the following values: @ELIGIBLE@ , @PENDING_UPDATE@ , @IN_PROGRESS@ , @COMPLETED@ , and @NOT_ELIGIBLE@ .
ssoUpdateStatus :: Lens' ServiceSoftwareOptions (Maybe DeploymentStatus)
ssoUpdateStatus = lens _ssoUpdateStatus (\s a -> s {_ssoUpdateStatus = a})

-- | @True@ if a service software is never automatically updated. @False@ if a service software is automatically updated after @AutomatedUpdateDate@ .
ssoOptionalDeployment :: Lens' ServiceSoftwareOptions (Maybe Bool)
ssoOptionalDeployment = lens _ssoOptionalDeployment (\s a -> s {_ssoOptionalDeployment = a})

-- | The description of the @UpdateStatus@ .
ssoDescription :: Lens' ServiceSoftwareOptions (Maybe Text)
ssoDescription = lens _ssoDescription (\s a -> s {_ssoDescription = a})

-- | Timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.
ssoAutomatedUpdateDate :: Lens' ServiceSoftwareOptions (Maybe UTCTime)
ssoAutomatedUpdateDate = lens _ssoAutomatedUpdateDate (\s a -> s {_ssoAutomatedUpdateDate = a}) . mapping _Time

instance FromJSON ServiceSoftwareOptions where
  parseJSON =
    withObject
      "ServiceSoftwareOptions"
      ( \x ->
          ServiceSoftwareOptions'
            <$> (x .:? "NewVersion")
            <*> (x .:? "CurrentVersion")
            <*> (x .:? "UpdateAvailable")
            <*> (x .:? "Cancellable")
            <*> (x .:? "UpdateStatus")
            <*> (x .:? "OptionalDeployment")
            <*> (x .:? "Description")
            <*> (x .:? "AutomatedUpdateDate")
      )

instance Hashable ServiceSoftwareOptions

instance NFData ServiceSoftwareOptions
