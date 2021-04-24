{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancer where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.IPAddressType
import Network.AWS.Lightsail.Types.InstanceHealthSummary
import Network.AWS.Lightsail.Types.LoadBalancerAttributeName
import Network.AWS.Lightsail.Types.LoadBalancerProtocol
import Network.AWS.Lightsail.Types.LoadBalancerState
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateSummary
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Prelude

-- | Describes the Lightsail load balancer.
--
--
--
-- /See:/ 'loadBalancer' smart constructor.
data LoadBalancer = LoadBalancer'
  { _lbIpAddressType ::
      !(Maybe IPAddressType),
    _lbTlsCertificateSummaries ::
      !(Maybe [LoadBalancerTLSCertificateSummary]),
    _lbInstanceHealthSummary ::
      !(Maybe [InstanceHealthSummary]),
    _lbPublicPorts :: !(Maybe [Int]),
    _lbConfigurationOptions ::
      !(Maybe (Map LoadBalancerAttributeName Text)),
    _lbInstancePort :: !(Maybe Int),
    _lbCreatedAt :: !(Maybe POSIX),
    _lbArn :: !(Maybe Text),
    _lbResourceType :: !(Maybe ResourceType),
    _lbSupportCode :: !(Maybe Text),
    _lbState :: !(Maybe LoadBalancerState),
    _lbName :: !(Maybe Text),
    _lbHealthCheckPath :: !(Maybe Text),
    _lbTags :: !(Maybe [Tag]),
    _lbDnsName :: !(Maybe Text),
    _lbProtocol :: !(Maybe LoadBalancerProtocol),
    _lbLocation :: !(Maybe ResourceLocation)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbIpAddressType' - The IP address type of the load balancer. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
--
-- * 'lbTlsCertificateSummaries' - An array of LoadBalancerTlsCertificateSummary objects that provide additional information about the SSL/TLS certificates. For example, if @true@ , the certificate is attached to the load balancer.
--
-- * 'lbInstanceHealthSummary' - An array of InstanceHealthSummary objects describing the health of the load balancer.
--
-- * 'lbPublicPorts' - An array of public port settings for your load balancer. For HTTP, use port 80. For HTTPS, use port 443.
--
-- * 'lbConfigurationOptions' - A string to string map of the configuration options for your load balancer. Valid values are listed below.
--
-- * 'lbInstancePort' - The port where the load balancer will direct traffic to your Lightsail instances. For HTTP traffic, it's port 80. For HTTPS traffic, it's port 443.
--
-- * 'lbCreatedAt' - The date when your load balancer was created.
--
-- * 'lbArn' - The Amazon Resource Name (ARN) of the load balancer.
--
-- * 'lbResourceType' - The resource type (e.g., @LoadBalancer@ .
--
-- * 'lbSupportCode' - The support code. Include this code in your email to support when you have questions about your Lightsail load balancer. This code enables our support team to look up your Lightsail information more easily.
--
-- * 'lbState' - The status of your load balancer. Valid values are below.
--
-- * 'lbName' - The name of the load balancer (e.g., @my-load-balancer@ ).
--
-- * 'lbHealthCheckPath' - The path you specified to perform your health checks. If no path is specified, the load balancer tries to make a request to the default (root) page.
--
-- * 'lbTags' - The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
--
-- * 'lbDnsName' - The DNS name of your Lightsail load balancer.
--
-- * 'lbProtocol' - The protocol you have enabled for your load balancer. Valid values are below. You can't just have @HTTP_HTTPS@ , but you can have just @HTTP@ .
--
-- * 'lbLocation' - The AWS Region where your load balancer was created (e.g., @us-east-2a@ ). Lightsail automatically creates your load balancer across Availability Zones.
loadBalancer ::
  LoadBalancer
loadBalancer =
  LoadBalancer'
    { _lbIpAddressType = Nothing,
      _lbTlsCertificateSummaries = Nothing,
      _lbInstanceHealthSummary = Nothing,
      _lbPublicPorts = Nothing,
      _lbConfigurationOptions = Nothing,
      _lbInstancePort = Nothing,
      _lbCreatedAt = Nothing,
      _lbArn = Nothing,
      _lbResourceType = Nothing,
      _lbSupportCode = Nothing,
      _lbState = Nothing,
      _lbName = Nothing,
      _lbHealthCheckPath = Nothing,
      _lbTags = Nothing,
      _lbDnsName = Nothing,
      _lbProtocol = Nothing,
      _lbLocation = Nothing
    }

-- | The IP address type of the load balancer. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
lbIpAddressType :: Lens' LoadBalancer (Maybe IPAddressType)
lbIpAddressType = lens _lbIpAddressType (\s a -> s {_lbIpAddressType = a})

-- | An array of LoadBalancerTlsCertificateSummary objects that provide additional information about the SSL/TLS certificates. For example, if @true@ , the certificate is attached to the load balancer.
lbTlsCertificateSummaries :: Lens' LoadBalancer [LoadBalancerTLSCertificateSummary]
lbTlsCertificateSummaries = lens _lbTlsCertificateSummaries (\s a -> s {_lbTlsCertificateSummaries = a}) . _Default . _Coerce

-- | An array of InstanceHealthSummary objects describing the health of the load balancer.
lbInstanceHealthSummary :: Lens' LoadBalancer [InstanceHealthSummary]
lbInstanceHealthSummary = lens _lbInstanceHealthSummary (\s a -> s {_lbInstanceHealthSummary = a}) . _Default . _Coerce

-- | An array of public port settings for your load balancer. For HTTP, use port 80. For HTTPS, use port 443.
lbPublicPorts :: Lens' LoadBalancer [Int]
lbPublicPorts = lens _lbPublicPorts (\s a -> s {_lbPublicPorts = a}) . _Default . _Coerce

-- | A string to string map of the configuration options for your load balancer. Valid values are listed below.
lbConfigurationOptions :: Lens' LoadBalancer (HashMap LoadBalancerAttributeName Text)
lbConfigurationOptions = lens _lbConfigurationOptions (\s a -> s {_lbConfigurationOptions = a}) . _Default . _Map

-- | The port where the load balancer will direct traffic to your Lightsail instances. For HTTP traffic, it's port 80. For HTTPS traffic, it's port 443.
lbInstancePort :: Lens' LoadBalancer (Maybe Int)
lbInstancePort = lens _lbInstancePort (\s a -> s {_lbInstancePort = a})

-- | The date when your load balancer was created.
lbCreatedAt :: Lens' LoadBalancer (Maybe UTCTime)
lbCreatedAt = lens _lbCreatedAt (\s a -> s {_lbCreatedAt = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the load balancer.
lbArn :: Lens' LoadBalancer (Maybe Text)
lbArn = lens _lbArn (\s a -> s {_lbArn = a})

-- | The resource type (e.g., @LoadBalancer@ .
lbResourceType :: Lens' LoadBalancer (Maybe ResourceType)
lbResourceType = lens _lbResourceType (\s a -> s {_lbResourceType = a})

-- | The support code. Include this code in your email to support when you have questions about your Lightsail load balancer. This code enables our support team to look up your Lightsail information more easily.
lbSupportCode :: Lens' LoadBalancer (Maybe Text)
lbSupportCode = lens _lbSupportCode (\s a -> s {_lbSupportCode = a})

-- | The status of your load balancer. Valid values are below.
lbState :: Lens' LoadBalancer (Maybe LoadBalancerState)
lbState = lens _lbState (\s a -> s {_lbState = a})

-- | The name of the load balancer (e.g., @my-load-balancer@ ).
lbName :: Lens' LoadBalancer (Maybe Text)
lbName = lens _lbName (\s a -> s {_lbName = a})

-- | The path you specified to perform your health checks. If no path is specified, the load balancer tries to make a request to the default (root) page.
lbHealthCheckPath :: Lens' LoadBalancer (Maybe Text)
lbHealthCheckPath = lens _lbHealthCheckPath (\s a -> s {_lbHealthCheckPath = a})

-- | The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
lbTags :: Lens' LoadBalancer [Tag]
lbTags = lens _lbTags (\s a -> s {_lbTags = a}) . _Default . _Coerce

-- | The DNS name of your Lightsail load balancer.
lbDnsName :: Lens' LoadBalancer (Maybe Text)
lbDnsName = lens _lbDnsName (\s a -> s {_lbDnsName = a})

-- | The protocol you have enabled for your load balancer. Valid values are below. You can't just have @HTTP_HTTPS@ , but you can have just @HTTP@ .
lbProtocol :: Lens' LoadBalancer (Maybe LoadBalancerProtocol)
lbProtocol = lens _lbProtocol (\s a -> s {_lbProtocol = a})

-- | The AWS Region where your load balancer was created (e.g., @us-east-2a@ ). Lightsail automatically creates your load balancer across Availability Zones.
lbLocation :: Lens' LoadBalancer (Maybe ResourceLocation)
lbLocation = lens _lbLocation (\s a -> s {_lbLocation = a})

instance FromJSON LoadBalancer where
  parseJSON =
    withObject
      "LoadBalancer"
      ( \x ->
          LoadBalancer'
            <$> (x .:? "ipAddressType")
            <*> (x .:? "tlsCertificateSummaries" .!= mempty)
            <*> (x .:? "instanceHealthSummary" .!= mempty)
            <*> (x .:? "publicPorts" .!= mempty)
            <*> (x .:? "configurationOptions" .!= mempty)
            <*> (x .:? "instancePort")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "resourceType")
            <*> (x .:? "supportCode")
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "healthCheckPath")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "dnsName")
            <*> (x .:? "protocol")
            <*> (x .:? "location")
      )

instance Hashable LoadBalancer

instance NFData LoadBalancer
