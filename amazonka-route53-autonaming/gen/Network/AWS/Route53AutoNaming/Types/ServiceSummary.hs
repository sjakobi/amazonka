{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53AutoNaming.Types.DNSConfig
import Network.AWS.Route53AutoNaming.Types.HealthCheckConfig
import Network.AWS.Route53AutoNaming.Types.HealthCheckCustomConfig
import Network.AWS.Route53AutoNaming.Types.ServiceType

-- | A complex type that contains information about a specified service.
--
--
--
-- /See:/ 'serviceSummary' smart constructor.
data ServiceSummary = ServiceSummary'
  { _ssDNSConfig ::
      !(Maybe DNSConfig),
    _ssCreateDate :: !(Maybe POSIX),
    _ssARN :: !(Maybe Text),
    _ssId :: !(Maybe Text),
    _ssName :: !(Maybe Text),
    _ssDescription :: !(Maybe Text),
    _ssHealthCheckCustomConfig ::
      !(Maybe HealthCheckCustomConfig),
    _ssType :: !(Maybe ServiceType),
    _ssHealthCheckConfig ::
      !(Maybe HealthCheckConfig),
    _ssInstanceCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssDNSConfig' - Undocumented member.
--
-- * 'ssCreateDate' - The date and time that the service was created.
--
-- * 'ssARN' - The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the service when you create it.
--
-- * 'ssId' - The ID that AWS Cloud Map assigned to the service when you created it.
--
-- * 'ssName' - The name of the service.
--
-- * 'ssDescription' - The description that you specify when you create the service.
--
-- * 'ssHealthCheckCustomConfig' - Undocumented member.
--
-- * 'ssType' - Describes the systems that can be used to discover the service instances.     * DNS_HTTP    * The service instances can be discovered using either DNS queries or the @DiscoverInstances@ API operation.     * HTTP    * The service instances can only be discovered using the @DiscoverInstances@ API operation.     * DNS    * Reserved.
--
-- * 'ssHealthCheckConfig' - Undocumented member.
--
-- * 'ssInstanceCount' - The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count. The count might not reflect pending registrations and deregistrations.
serviceSummary ::
  ServiceSummary
serviceSummary =
  ServiceSummary'
    { _ssDNSConfig = Nothing,
      _ssCreateDate = Nothing,
      _ssARN = Nothing,
      _ssId = Nothing,
      _ssName = Nothing,
      _ssDescription = Nothing,
      _ssHealthCheckCustomConfig = Nothing,
      _ssType = Nothing,
      _ssHealthCheckConfig = Nothing,
      _ssInstanceCount = Nothing
    }

-- | Undocumented member.
ssDNSConfig :: Lens' ServiceSummary (Maybe DNSConfig)
ssDNSConfig = lens _ssDNSConfig (\s a -> s {_ssDNSConfig = a})

-- | The date and time that the service was created.
ssCreateDate :: Lens' ServiceSummary (Maybe UTCTime)
ssCreateDate = lens _ssCreateDate (\s a -> s {_ssCreateDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the service when you create it.
ssARN :: Lens' ServiceSummary (Maybe Text)
ssARN = lens _ssARN (\s a -> s {_ssARN = a})

-- | The ID that AWS Cloud Map assigned to the service when you created it.
ssId :: Lens' ServiceSummary (Maybe Text)
ssId = lens _ssId (\s a -> s {_ssId = a})

-- | The name of the service.
ssName :: Lens' ServiceSummary (Maybe Text)
ssName = lens _ssName (\s a -> s {_ssName = a})

-- | The description that you specify when you create the service.
ssDescription :: Lens' ServiceSummary (Maybe Text)
ssDescription = lens _ssDescription (\s a -> s {_ssDescription = a})

-- | Undocumented member.
ssHealthCheckCustomConfig :: Lens' ServiceSummary (Maybe HealthCheckCustomConfig)
ssHealthCheckCustomConfig = lens _ssHealthCheckCustomConfig (\s a -> s {_ssHealthCheckCustomConfig = a})

-- | Describes the systems that can be used to discover the service instances.     * DNS_HTTP    * The service instances can be discovered using either DNS queries or the @DiscoverInstances@ API operation.     * HTTP    * The service instances can only be discovered using the @DiscoverInstances@ API operation.     * DNS    * Reserved.
ssType :: Lens' ServiceSummary (Maybe ServiceType)
ssType = lens _ssType (\s a -> s {_ssType = a})

-- | Undocumented member.
ssHealthCheckConfig :: Lens' ServiceSummary (Maybe HealthCheckConfig)
ssHealthCheckConfig = lens _ssHealthCheckConfig (\s a -> s {_ssHealthCheckConfig = a})

-- | The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count. The count might not reflect pending registrations and deregistrations.
ssInstanceCount :: Lens' ServiceSummary (Maybe Int)
ssInstanceCount = lens _ssInstanceCount (\s a -> s {_ssInstanceCount = a})

instance FromJSON ServiceSummary where
  parseJSON =
    withObject
      "ServiceSummary"
      ( \x ->
          ServiceSummary'
            <$> (x .:? "DnsConfig")
            <*> (x .:? "CreateDate")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
            <*> (x .:? "HealthCheckCustomConfig")
            <*> (x .:? "Type")
            <*> (x .:? "HealthCheckConfig")
            <*> (x .:? "InstanceCount")
      )

instance Hashable ServiceSummary

instance NFData ServiceSummary
