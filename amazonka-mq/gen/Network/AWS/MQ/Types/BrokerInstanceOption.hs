{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.BrokerInstanceOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.BrokerInstanceOption where

import Network.AWS.Lens
import Network.AWS.MQ.Types.AvailabilityZone
import Network.AWS.MQ.Types.BrokerStorageType
import Network.AWS.MQ.Types.DeploymentMode
import Network.AWS.MQ.Types.EngineType
import Network.AWS.Prelude

-- | Option for host instance type.
--
-- /See:/ 'brokerInstanceOption' smart constructor.
data BrokerInstanceOption = BrokerInstanceOption'
  { _bioAvailabilityZones ::
      !(Maybe [AvailabilityZone]),
    _bioStorageType ::
      !(Maybe BrokerStorageType),
    _bioEngineType ::
      !(Maybe EngineType),
    _bioSupportedDeploymentModes ::
      !(Maybe [DeploymentMode]),
    _bioSupportedEngineVersions ::
      !(Maybe [Text]),
    _bioHostInstanceType ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BrokerInstanceOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bioAvailabilityZones' - The list of available az.
--
-- * 'bioStorageType' - The broker's storage type.
--
-- * 'bioEngineType' - The type of broker engine.
--
-- * 'bioSupportedDeploymentModes' - The list of supported deployment modes.
--
-- * 'bioSupportedEngineVersions' - The list of supported engine versions.
--
-- * 'bioHostInstanceType' - The type of broker instance.
brokerInstanceOption ::
  BrokerInstanceOption
brokerInstanceOption =
  BrokerInstanceOption'
    { _bioAvailabilityZones =
        Nothing,
      _bioStorageType = Nothing,
      _bioEngineType = Nothing,
      _bioSupportedDeploymentModes = Nothing,
      _bioSupportedEngineVersions = Nothing,
      _bioHostInstanceType = Nothing
    }

-- | The list of available az.
bioAvailabilityZones :: Lens' BrokerInstanceOption [AvailabilityZone]
bioAvailabilityZones = lens _bioAvailabilityZones (\s a -> s {_bioAvailabilityZones = a}) . _Default . _Coerce

-- | The broker's storage type.
bioStorageType :: Lens' BrokerInstanceOption (Maybe BrokerStorageType)
bioStorageType = lens _bioStorageType (\s a -> s {_bioStorageType = a})

-- | The type of broker engine.
bioEngineType :: Lens' BrokerInstanceOption (Maybe EngineType)
bioEngineType = lens _bioEngineType (\s a -> s {_bioEngineType = a})

-- | The list of supported deployment modes.
bioSupportedDeploymentModes :: Lens' BrokerInstanceOption [DeploymentMode]
bioSupportedDeploymentModes = lens _bioSupportedDeploymentModes (\s a -> s {_bioSupportedDeploymentModes = a}) . _Default . _Coerce

-- | The list of supported engine versions.
bioSupportedEngineVersions :: Lens' BrokerInstanceOption [Text]
bioSupportedEngineVersions = lens _bioSupportedEngineVersions (\s a -> s {_bioSupportedEngineVersions = a}) . _Default . _Coerce

-- | The type of broker instance.
bioHostInstanceType :: Lens' BrokerInstanceOption (Maybe Text)
bioHostInstanceType = lens _bioHostInstanceType (\s a -> s {_bioHostInstanceType = a})

instance FromJSON BrokerInstanceOption where
  parseJSON =
    withObject
      "BrokerInstanceOption"
      ( \x ->
          BrokerInstanceOption'
            <$> (x .:? "availabilityZones" .!= mempty)
            <*> (x .:? "storageType")
            <*> (x .:? "engineType")
            <*> (x .:? "supportedDeploymentModes" .!= mempty)
            <*> (x .:? "supportedEngineVersions" .!= mempty)
            <*> (x .:? "hostInstanceType")
      )

instance Hashable BrokerInstanceOption

instance NFData BrokerInstanceOption
