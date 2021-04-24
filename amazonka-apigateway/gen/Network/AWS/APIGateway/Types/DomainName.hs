{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.DomainName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.DomainName where

import Network.AWS.APIGateway.Types.DomainNameStatus
import Network.AWS.APIGateway.Types.EndpointConfiguration
import Network.AWS.APIGateway.Types.MutualTLSAuthentication
import Network.AWS.APIGateway.Types.SecurityPolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a custom domain name as a user-friendly host name of an API ('RestApi' ).
--
--
-- When you deploy an API, API Gateway creates a default host name for the API. This default API host name is of the @{restapi-id}.execute-api.{region}.amazonaws.com@ format. With the default host name, you can access the API's root resource with the URL of @https://{restapi-id}.execute-api.{region}.amazonaws.com/{stage}/@ . When you set up a custom domain name of @apis.example.com@ for this API, you can then access the same resource using the URL of the @https://apis.examples.com/myApi@ , where @myApi@ is the base path mapping ('BasePathMapping' ) of your API under the custom domain name.
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html Set a Custom Host Name for an API>
--
-- /See:/ 'domainName' smart constructor.
data DomainName = DomainName'
  { _dnRegionalHostedZoneId ::
      !(Maybe Text),
    _dnRegionalCertificateName :: !(Maybe Text),
    _dnMutualTLSAuthentication ::
      !(Maybe MutualTLSAuthentication),
    _dnEndpointConfiguration ::
      !(Maybe EndpointConfiguration),
    _dnDistributionHostedZoneId :: !(Maybe Text),
    _dnCertificateARN :: !(Maybe Text),
    _dnDomainNameStatusMessage :: !(Maybe Text),
    _dnDistributionDomainName :: !(Maybe Text),
    _dnCertificateUploadDate :: !(Maybe POSIX),
    _dnDomainName :: !(Maybe Text),
    _dnTags :: !(Maybe (Map Text Text)),
    _dnSecurityPolicy :: !(Maybe SecurityPolicy),
    _dnDomainNameStatus :: !(Maybe DomainNameStatus),
    _dnRegionalCertificateARN :: !(Maybe Text),
    _dnCertificateName :: !(Maybe Text),
    _dnRegionalDomainName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnRegionalHostedZoneId' - The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html Set up a Regional Custom Domain Name> and <https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region AWS Regions and Endpoints for API Gateway> .
--
-- * 'dnRegionalCertificateName' - The name of the certificate that will be used for validating the regional domain name.
--
-- * 'dnMutualTLSAuthentication' - The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
--
-- * 'dnEndpointConfiguration' - The endpoint configuration of this 'DomainName' showing the endpoint types of the domain name.
--
-- * 'dnDistributionHostedZoneId' - The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is @Z2FDTNDATAQYW2@ for all the regions. For more information, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html Set up a Regional Custom Domain Name> and <https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region AWS Regions and Endpoints for API Gateway> .
--
-- * 'dnCertificateARN' - The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
--
-- * 'dnDomainNameStatusMessage' - An optional text message containing detailed information about status of the 'DomainName' migration.
--
-- * 'dnDistributionDomainName' - The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the <https://aws.amazon.com/documentation/cloudfront/ Amazon CloudFront documentation> .
--
-- * 'dnCertificateUploadDate' - The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.
--
-- * 'dnDomainName' - The custom domain name as an API host name, for example, @my-api.example.com@ .
--
-- * 'dnTags' - The collection of tags. Each tag element is associated with a given resource.
--
-- * 'dnSecurityPolicy' - The Transport Layer Security (TLS) version + cipher suite for this 'DomainName' . The valid values are @TLS_1_0@ and @TLS_1_2@ .
--
-- * 'dnDomainNameStatus' - The status of the 'DomainName' migration. The valid values are @AVAILABLE@ and @UPDATING@ . If the status is @UPDATING@ , the domain cannot be modified further until the existing operation is complete. If it is @AVAILABLE@ , the domain can be updated.
--
-- * 'dnRegionalCertificateARN' - The reference to an AWS-managed certificate that will be used for validating the regional domain name. AWS Certificate Manager is the only supported source.
--
-- * 'dnCertificateName' - The name of the certificate that will be used by edge-optimized endpoint for this domain name.
--
-- * 'dnRegionalDomainName' - The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.
domainName ::
  DomainName
domainName =
  DomainName'
    { _dnRegionalHostedZoneId = Nothing,
      _dnRegionalCertificateName = Nothing,
      _dnMutualTLSAuthentication = Nothing,
      _dnEndpointConfiguration = Nothing,
      _dnDistributionHostedZoneId = Nothing,
      _dnCertificateARN = Nothing,
      _dnDomainNameStatusMessage = Nothing,
      _dnDistributionDomainName = Nothing,
      _dnCertificateUploadDate = Nothing,
      _dnDomainName = Nothing,
      _dnTags = Nothing,
      _dnSecurityPolicy = Nothing,
      _dnDomainNameStatus = Nothing,
      _dnRegionalCertificateARN = Nothing,
      _dnCertificateName = Nothing,
      _dnRegionalDomainName = Nothing
    }

-- | The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html Set up a Regional Custom Domain Name> and <https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region AWS Regions and Endpoints for API Gateway> .
dnRegionalHostedZoneId :: Lens' DomainName (Maybe Text)
dnRegionalHostedZoneId = lens _dnRegionalHostedZoneId (\s a -> s {_dnRegionalHostedZoneId = a})

-- | The name of the certificate that will be used for validating the regional domain name.
dnRegionalCertificateName :: Lens' DomainName (Maybe Text)
dnRegionalCertificateName = lens _dnRegionalCertificateName (\s a -> s {_dnRegionalCertificateName = a})

-- | The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
dnMutualTLSAuthentication :: Lens' DomainName (Maybe MutualTLSAuthentication)
dnMutualTLSAuthentication = lens _dnMutualTLSAuthentication (\s a -> s {_dnMutualTLSAuthentication = a})

-- | The endpoint configuration of this 'DomainName' showing the endpoint types of the domain name.
dnEndpointConfiguration :: Lens' DomainName (Maybe EndpointConfiguration)
dnEndpointConfiguration = lens _dnEndpointConfiguration (\s a -> s {_dnEndpointConfiguration = a})

-- | The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is @Z2FDTNDATAQYW2@ for all the regions. For more information, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html Set up a Regional Custom Domain Name> and <https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region AWS Regions and Endpoints for API Gateway> .
dnDistributionHostedZoneId :: Lens' DomainName (Maybe Text)
dnDistributionHostedZoneId = lens _dnDistributionHostedZoneId (\s a -> s {_dnDistributionHostedZoneId = a})

-- | The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
dnCertificateARN :: Lens' DomainName (Maybe Text)
dnCertificateARN = lens _dnCertificateARN (\s a -> s {_dnCertificateARN = a})

-- | An optional text message containing detailed information about status of the 'DomainName' migration.
dnDomainNameStatusMessage :: Lens' DomainName (Maybe Text)
dnDomainNameStatusMessage = lens _dnDomainNameStatusMessage (\s a -> s {_dnDomainNameStatusMessage = a})

-- | The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the <https://aws.amazon.com/documentation/cloudfront/ Amazon CloudFront documentation> .
dnDistributionDomainName :: Lens' DomainName (Maybe Text)
dnDistributionDomainName = lens _dnDistributionDomainName (\s a -> s {_dnDistributionDomainName = a})

-- | The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.
dnCertificateUploadDate :: Lens' DomainName (Maybe UTCTime)
dnCertificateUploadDate = lens _dnCertificateUploadDate (\s a -> s {_dnCertificateUploadDate = a}) . mapping _Time

-- | The custom domain name as an API host name, for example, @my-api.example.com@ .
dnDomainName :: Lens' DomainName (Maybe Text)
dnDomainName = lens _dnDomainName (\s a -> s {_dnDomainName = a})

-- | The collection of tags. Each tag element is associated with a given resource.
dnTags :: Lens' DomainName (HashMap Text Text)
dnTags = lens _dnTags (\s a -> s {_dnTags = a}) . _Default . _Map

-- | The Transport Layer Security (TLS) version + cipher suite for this 'DomainName' . The valid values are @TLS_1_0@ and @TLS_1_2@ .
dnSecurityPolicy :: Lens' DomainName (Maybe SecurityPolicy)
dnSecurityPolicy = lens _dnSecurityPolicy (\s a -> s {_dnSecurityPolicy = a})

-- | The status of the 'DomainName' migration. The valid values are @AVAILABLE@ and @UPDATING@ . If the status is @UPDATING@ , the domain cannot be modified further until the existing operation is complete. If it is @AVAILABLE@ , the domain can be updated.
dnDomainNameStatus :: Lens' DomainName (Maybe DomainNameStatus)
dnDomainNameStatus = lens _dnDomainNameStatus (\s a -> s {_dnDomainNameStatus = a})

-- | The reference to an AWS-managed certificate that will be used for validating the regional domain name. AWS Certificate Manager is the only supported source.
dnRegionalCertificateARN :: Lens' DomainName (Maybe Text)
dnRegionalCertificateARN = lens _dnRegionalCertificateARN (\s a -> s {_dnRegionalCertificateARN = a})

-- | The name of the certificate that will be used by edge-optimized endpoint for this domain name.
dnCertificateName :: Lens' DomainName (Maybe Text)
dnCertificateName = lens _dnCertificateName (\s a -> s {_dnCertificateName = a})

-- | The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.
dnRegionalDomainName :: Lens' DomainName (Maybe Text)
dnRegionalDomainName = lens _dnRegionalDomainName (\s a -> s {_dnRegionalDomainName = a})

instance FromJSON DomainName where
  parseJSON =
    withObject
      "DomainName"
      ( \x ->
          DomainName'
            <$> (x .:? "regionalHostedZoneId")
            <*> (x .:? "regionalCertificateName")
            <*> (x .:? "mutualTlsAuthentication")
            <*> (x .:? "endpointConfiguration")
            <*> (x .:? "distributionHostedZoneId")
            <*> (x .:? "certificateArn")
            <*> (x .:? "domainNameStatusMessage")
            <*> (x .:? "distributionDomainName")
            <*> (x .:? "certificateUploadDate")
            <*> (x .:? "domainName")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "securityPolicy")
            <*> (x .:? "domainNameStatus")
            <*> (x .:? "regionalCertificateArn")
            <*> (x .:? "certificateName")
            <*> (x .:? "regionalDomainName")
      )

instance Hashable DomainName

instance NFData DomainName
