{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LightsailDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LightsailDistribution where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.CacheBehavior
import Network.AWS.Lightsail.Types.CacheBehaviorPerPath
import Network.AWS.Lightsail.Types.CacheSettings
import Network.AWS.Lightsail.Types.IPAddressType
import Network.AWS.Lightsail.Types.Origin
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Prelude

-- | Describes an Amazon Lightsail content delivery network (CDN) distribution.
--
--
--
-- /See:/ 'lightsailDistribution' smart constructor.
data LightsailDistribution = LightsailDistribution'
  { _ldIsEnabled ::
      !(Maybe Bool),
    _ldIpAddressType ::
      !(Maybe IPAddressType),
    _ldOrigin ::
      !(Maybe Origin),
    _ldStatus :: !(Maybe Text),
    _ldOriginPublicDNS ::
      !(Maybe Text),
    _ldBundleId ::
      !(Maybe Text),
    _ldAlternativeDomainNames ::
      !(Maybe [Text]),
    _ldCreatedAt ::
      !(Maybe POSIX),
    _ldCacheBehaviorSettings ::
      !(Maybe CacheSettings),
    _ldArn :: !(Maybe Text),
    _ldResourceType ::
      !(Maybe ResourceType),
    _ldSupportCode ::
      !(Maybe Text),
    _ldName :: !(Maybe Text),
    _ldDomainName ::
      !(Maybe Text),
    _ldAbleToUpdateBundle ::
      !(Maybe Bool),
    _ldTags :: !(Maybe [Tag]),
    _ldCacheBehaviors ::
      !( Maybe
           [CacheBehaviorPerPath]
       ),
    _ldDefaultCacheBehavior ::
      !(Maybe CacheBehavior),
    _ldLocation ::
      !(Maybe ResourceLocation),
    _ldCertificateName ::
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

-- | Creates a value of 'LightsailDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldIsEnabled' - Indicates whether the distribution is enabled.
--
-- * 'ldIpAddressType' - The IP address type of the distribution. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
--
-- * 'ldOrigin' - An object that describes the origin resource of the distribution, such as a Lightsail instance or load balancer. The distribution pulls, caches, and serves content from the origin.
--
-- * 'ldStatus' - The status of the distribution.
--
-- * 'ldOriginPublicDNS' - The public DNS of the origin.
--
-- * 'ldBundleId' - The ID of the bundle currently applied to the distribution.
--
-- * 'ldAlternativeDomainNames' - The alternate domain names of the distribution.
--
-- * 'ldCreatedAt' - The timestamp when the distribution was created.
--
-- * 'ldCacheBehaviorSettings' - An object that describes the cache behavior settings of the distribution.
--
-- * 'ldArn' - The Amazon Resource Name (ARN) of the distribution.
--
-- * 'ldResourceType' - The Lightsail resource type (e.g., @Distribution@ ).
--
-- * 'ldSupportCode' - The support code. Include this code in your email to support when you have questions about your Lightsail distribution. This code enables our support team to look up your Lightsail information more easily.
--
-- * 'ldName' - The name of the distribution.
--
-- * 'ldDomainName' - The domain name of the distribution.
--
-- * 'ldAbleToUpdateBundle' - Indicates whether the bundle that is currently applied to your distribution, specified using the @distributionName@ parameter, can be changed to another bundle. Use the @UpdateDistributionBundle@ action to change your distribution's bundle.
--
-- * 'ldTags' - The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
--
-- * 'ldCacheBehaviors' - An array of objects that describe the per-path cache behavior of the distribution.
--
-- * 'ldDefaultCacheBehavior' - An object that describes the default cache behavior of the distribution.
--
-- * 'ldLocation' - An object that describes the location of the distribution, such as the AWS Region and Availability Zone.
--
-- * 'ldCertificateName' - The name of the SSL/TLS certificate attached to the distribution, if any.
lightsailDistribution ::
  LightsailDistribution
lightsailDistribution =
  LightsailDistribution'
    { _ldIsEnabled = Nothing,
      _ldIpAddressType = Nothing,
      _ldOrigin = Nothing,
      _ldStatus = Nothing,
      _ldOriginPublicDNS = Nothing,
      _ldBundleId = Nothing,
      _ldAlternativeDomainNames = Nothing,
      _ldCreatedAt = Nothing,
      _ldCacheBehaviorSettings = Nothing,
      _ldArn = Nothing,
      _ldResourceType = Nothing,
      _ldSupportCode = Nothing,
      _ldName = Nothing,
      _ldDomainName = Nothing,
      _ldAbleToUpdateBundle = Nothing,
      _ldTags = Nothing,
      _ldCacheBehaviors = Nothing,
      _ldDefaultCacheBehavior = Nothing,
      _ldLocation = Nothing,
      _ldCertificateName = Nothing
    }

-- | Indicates whether the distribution is enabled.
ldIsEnabled :: Lens' LightsailDistribution (Maybe Bool)
ldIsEnabled = lens _ldIsEnabled (\s a -> s {_ldIsEnabled = a})

-- | The IP address type of the distribution. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
ldIpAddressType :: Lens' LightsailDistribution (Maybe IPAddressType)
ldIpAddressType = lens _ldIpAddressType (\s a -> s {_ldIpAddressType = a})

-- | An object that describes the origin resource of the distribution, such as a Lightsail instance or load balancer. The distribution pulls, caches, and serves content from the origin.
ldOrigin :: Lens' LightsailDistribution (Maybe Origin)
ldOrigin = lens _ldOrigin (\s a -> s {_ldOrigin = a})

-- | The status of the distribution.
ldStatus :: Lens' LightsailDistribution (Maybe Text)
ldStatus = lens _ldStatus (\s a -> s {_ldStatus = a})

-- | The public DNS of the origin.
ldOriginPublicDNS :: Lens' LightsailDistribution (Maybe Text)
ldOriginPublicDNS = lens _ldOriginPublicDNS (\s a -> s {_ldOriginPublicDNS = a})

-- | The ID of the bundle currently applied to the distribution.
ldBundleId :: Lens' LightsailDistribution (Maybe Text)
ldBundleId = lens _ldBundleId (\s a -> s {_ldBundleId = a})

-- | The alternate domain names of the distribution.
ldAlternativeDomainNames :: Lens' LightsailDistribution [Text]
ldAlternativeDomainNames = lens _ldAlternativeDomainNames (\s a -> s {_ldAlternativeDomainNames = a}) . _Default . _Coerce

-- | The timestamp when the distribution was created.
ldCreatedAt :: Lens' LightsailDistribution (Maybe UTCTime)
ldCreatedAt = lens _ldCreatedAt (\s a -> s {_ldCreatedAt = a}) . mapping _Time

-- | An object that describes the cache behavior settings of the distribution.
ldCacheBehaviorSettings :: Lens' LightsailDistribution (Maybe CacheSettings)
ldCacheBehaviorSettings = lens _ldCacheBehaviorSettings (\s a -> s {_ldCacheBehaviorSettings = a})

-- | The Amazon Resource Name (ARN) of the distribution.
ldArn :: Lens' LightsailDistribution (Maybe Text)
ldArn = lens _ldArn (\s a -> s {_ldArn = a})

-- | The Lightsail resource type (e.g., @Distribution@ ).
ldResourceType :: Lens' LightsailDistribution (Maybe ResourceType)
ldResourceType = lens _ldResourceType (\s a -> s {_ldResourceType = a})

-- | The support code. Include this code in your email to support when you have questions about your Lightsail distribution. This code enables our support team to look up your Lightsail information more easily.
ldSupportCode :: Lens' LightsailDistribution (Maybe Text)
ldSupportCode = lens _ldSupportCode (\s a -> s {_ldSupportCode = a})

-- | The name of the distribution.
ldName :: Lens' LightsailDistribution (Maybe Text)
ldName = lens _ldName (\s a -> s {_ldName = a})

-- | The domain name of the distribution.
ldDomainName :: Lens' LightsailDistribution (Maybe Text)
ldDomainName = lens _ldDomainName (\s a -> s {_ldDomainName = a})

-- | Indicates whether the bundle that is currently applied to your distribution, specified using the @distributionName@ parameter, can be changed to another bundle. Use the @UpdateDistributionBundle@ action to change your distribution's bundle.
ldAbleToUpdateBundle :: Lens' LightsailDistribution (Maybe Bool)
ldAbleToUpdateBundle = lens _ldAbleToUpdateBundle (\s a -> s {_ldAbleToUpdateBundle = a})

-- | The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
ldTags :: Lens' LightsailDistribution [Tag]
ldTags = lens _ldTags (\s a -> s {_ldTags = a}) . _Default . _Coerce

-- | An array of objects that describe the per-path cache behavior of the distribution.
ldCacheBehaviors :: Lens' LightsailDistribution [CacheBehaviorPerPath]
ldCacheBehaviors = lens _ldCacheBehaviors (\s a -> s {_ldCacheBehaviors = a}) . _Default . _Coerce

-- | An object that describes the default cache behavior of the distribution.
ldDefaultCacheBehavior :: Lens' LightsailDistribution (Maybe CacheBehavior)
ldDefaultCacheBehavior = lens _ldDefaultCacheBehavior (\s a -> s {_ldDefaultCacheBehavior = a})

-- | An object that describes the location of the distribution, such as the AWS Region and Availability Zone.
ldLocation :: Lens' LightsailDistribution (Maybe ResourceLocation)
ldLocation = lens _ldLocation (\s a -> s {_ldLocation = a})

-- | The name of the SSL/TLS certificate attached to the distribution, if any.
ldCertificateName :: Lens' LightsailDistribution (Maybe Text)
ldCertificateName = lens _ldCertificateName (\s a -> s {_ldCertificateName = a})

instance FromJSON LightsailDistribution where
  parseJSON =
    withObject
      "LightsailDistribution"
      ( \x ->
          LightsailDistribution'
            <$> (x .:? "isEnabled")
            <*> (x .:? "ipAddressType")
            <*> (x .:? "origin")
            <*> (x .:? "status")
            <*> (x .:? "originPublicDNS")
            <*> (x .:? "bundleId")
            <*> (x .:? "alternativeDomainNames" .!= mempty)
            <*> (x .:? "createdAt")
            <*> (x .:? "cacheBehaviorSettings")
            <*> (x .:? "arn")
            <*> (x .:? "resourceType")
            <*> (x .:? "supportCode")
            <*> (x .:? "name")
            <*> (x .:? "domainName")
            <*> (x .:? "ableToUpdateBundle")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "cacheBehaviors" .!= mempty)
            <*> (x .:? "defaultCacheBehavior")
            <*> (x .:? "location")
            <*> (x .:? "certificateName")
      )

instance Hashable LightsailDistribution

instance NFData LightsailDistribution
