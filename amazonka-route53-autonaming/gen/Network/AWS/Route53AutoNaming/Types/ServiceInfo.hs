{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53AutoNaming.Types.DNSConfig
import Network.AWS.Route53AutoNaming.Types.HealthCheckConfig
import Network.AWS.Route53AutoNaming.Types.HealthCheckCustomConfig
import Network.AWS.Route53AutoNaming.Types.ServiceType

-- | A complex type that contains information about the specified service.
--
--
--
-- /See:/ 'serviceInfo' smart constructor.
data ServiceInfo = ServiceInfo'
  { _siNamespaceId ::
      !(Maybe Text),
    _siDNSConfig :: !(Maybe DNSConfig),
    _siCreateDate :: !(Maybe POSIX),
    _siCreatorRequestId :: !(Maybe Text),
    _siARN :: !(Maybe Text),
    _siId :: !(Maybe Text),
    _siName :: !(Maybe Text),
    _siDescription :: !(Maybe Text),
    _siHealthCheckCustomConfig ::
      !(Maybe HealthCheckCustomConfig),
    _siType :: !(Maybe ServiceType),
    _siHealthCheckConfig ::
      !(Maybe HealthCheckConfig),
    _siInstanceCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siNamespaceId' - The ID of the namespace that was used to create the service.
--
-- * 'siDNSConfig' - A complex type that contains information about the Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.
--
-- * 'siCreateDate' - The date and time that the service was created, in Unix format and Coordinated Universal Time (UTC). The value of @CreateDate@ is accurate to milliseconds. For example, the value @1516925490.087@ represents Friday, January 26, 2018 12:11:30.087 AM.
--
-- * 'siCreatorRequestId' - A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. @CreatorRequestId@ can be any unique string, for example, a date/time stamp.
--
-- * 'siARN' - The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the service when you create it.
--
-- * 'siId' - The ID that AWS Cloud Map assigned to the service when you created it.
--
-- * 'siName' - The name of the service.
--
-- * 'siDescription' - The description of the service.
--
-- * 'siHealthCheckCustomConfig' - A complex type that contains information about an optional custom health check. /Important:/ If you specify a health check configuration, you can specify either @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
--
-- * 'siType' - Describes the systems that can be used to discover the service instances.     * DNS_HTTP    * The service instances can be discovered using either DNS queries or the @DiscoverInstances@ API operation.     * HTTP    * The service instances can only be discovered using the @DiscoverInstances@ API operation.     * DNS    * Reserved.
--
-- * 'siHealthCheckConfig' - /Public DNS and HTTP namespaces only./ A complex type that contains settings for an optional health check. If you specify settings for a health check, AWS Cloud Map associates the health check with the records that you specify in @DnsConfig@ . For information about the charges for health checks, see <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing> .
--
-- * 'siInstanceCount' - The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count. The count might not reflect pending registrations and deregistrations.
serviceInfo ::
  ServiceInfo
serviceInfo =
  ServiceInfo'
    { _siNamespaceId = Nothing,
      _siDNSConfig = Nothing,
      _siCreateDate = Nothing,
      _siCreatorRequestId = Nothing,
      _siARN = Nothing,
      _siId = Nothing,
      _siName = Nothing,
      _siDescription = Nothing,
      _siHealthCheckCustomConfig = Nothing,
      _siType = Nothing,
      _siHealthCheckConfig = Nothing,
      _siInstanceCount = Nothing
    }

-- | The ID of the namespace that was used to create the service.
siNamespaceId :: Lens' ServiceInfo (Maybe Text)
siNamespaceId = lens _siNamespaceId (\s a -> s {_siNamespaceId = a})

-- | A complex type that contains information about the Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.
siDNSConfig :: Lens' ServiceInfo (Maybe DNSConfig)
siDNSConfig = lens _siDNSConfig (\s a -> s {_siDNSConfig = a})

-- | The date and time that the service was created, in Unix format and Coordinated Universal Time (UTC). The value of @CreateDate@ is accurate to milliseconds. For example, the value @1516925490.087@ represents Friday, January 26, 2018 12:11:30.087 AM.
siCreateDate :: Lens' ServiceInfo (Maybe UTCTime)
siCreateDate = lens _siCreateDate (\s a -> s {_siCreateDate = a}) . mapping _Time

-- | A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. @CreatorRequestId@ can be any unique string, for example, a date/time stamp.
siCreatorRequestId :: Lens' ServiceInfo (Maybe Text)
siCreatorRequestId = lens _siCreatorRequestId (\s a -> s {_siCreatorRequestId = a})

-- | The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the service when you create it.
siARN :: Lens' ServiceInfo (Maybe Text)
siARN = lens _siARN (\s a -> s {_siARN = a})

-- | The ID that AWS Cloud Map assigned to the service when you created it.
siId :: Lens' ServiceInfo (Maybe Text)
siId = lens _siId (\s a -> s {_siId = a})

-- | The name of the service.
siName :: Lens' ServiceInfo (Maybe Text)
siName = lens _siName (\s a -> s {_siName = a})

-- | The description of the service.
siDescription :: Lens' ServiceInfo (Maybe Text)
siDescription = lens _siDescription (\s a -> s {_siDescription = a})

-- | A complex type that contains information about an optional custom health check. /Important:/ If you specify a health check configuration, you can specify either @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
siHealthCheckCustomConfig :: Lens' ServiceInfo (Maybe HealthCheckCustomConfig)
siHealthCheckCustomConfig = lens _siHealthCheckCustomConfig (\s a -> s {_siHealthCheckCustomConfig = a})

-- | Describes the systems that can be used to discover the service instances.     * DNS_HTTP    * The service instances can be discovered using either DNS queries or the @DiscoverInstances@ API operation.     * HTTP    * The service instances can only be discovered using the @DiscoverInstances@ API operation.     * DNS    * Reserved.
siType :: Lens' ServiceInfo (Maybe ServiceType)
siType = lens _siType (\s a -> s {_siType = a})

-- | /Public DNS and HTTP namespaces only./ A complex type that contains settings for an optional health check. If you specify settings for a health check, AWS Cloud Map associates the health check with the records that you specify in @DnsConfig@ . For information about the charges for health checks, see <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing> .
siHealthCheckConfig :: Lens' ServiceInfo (Maybe HealthCheckConfig)
siHealthCheckConfig = lens _siHealthCheckConfig (\s a -> s {_siHealthCheckConfig = a})

-- | The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count. The count might not reflect pending registrations and deregistrations.
siInstanceCount :: Lens' ServiceInfo (Maybe Int)
siInstanceCount = lens _siInstanceCount (\s a -> s {_siInstanceCount = a})

instance FromJSON ServiceInfo where
  parseJSON =
    withObject
      "ServiceInfo"
      ( \x ->
          ServiceInfo'
            <$> (x .:? "NamespaceId")
            <*> (x .:? "DnsConfig")
            <*> (x .:? "CreateDate")
            <*> (x .:? "CreatorRequestId")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
            <*> (x .:? "HealthCheckCustomConfig")
            <*> (x .:? "Type")
            <*> (x .:? "HealthCheckConfig")
            <*> (x .:? "InstanceCount")
      )

instance Hashable ServiceInfo

instance NFData ServiceInfo
