{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerService where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.ContainerServiceDeployment
import Network.AWS.Lightsail.Types.ContainerServicePowerName
import Network.AWS.Lightsail.Types.ContainerServiceState
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Prelude

-- | Describes an Amazon Lightsail container service.
--
--
--
-- /See:/ 'containerService' smart constructor.
data ContainerService = ContainerService'
  { _csPower ::
      !(Maybe ContainerServicePowerName),
    _csCurrentDeployment ::
      !(Maybe ContainerServiceDeployment),
    _csCreatedAt :: !(Maybe POSIX),
    _csArn :: !(Maybe Text),
    _csContainerServiceName ::
      !(Maybe Text),
    _csPrivateDomainName :: !(Maybe Text),
    _csResourceType ::
      !(Maybe ResourceType),
    _csState ::
      !(Maybe ContainerServiceState),
    _csPrincipalARN :: !(Maybe Text),
    _csTags :: !(Maybe [Tag]),
    _csNextDeployment ::
      !(Maybe ContainerServiceDeployment),
    _csUrl :: !(Maybe Text),
    _csScale :: !(Maybe Nat),
    _csPublicDomainNames ::
      !(Maybe (Map Text [Text])),
    _csLocation ::
      !(Maybe ResourceLocation),
    _csPowerId :: !(Maybe Text),
    _csIsDisabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csPower' - The power specification of the container service. The power specifies the amount of RAM, the number of vCPUs, and the base price of the container service.
--
-- * 'csCurrentDeployment' - An object that describes the current container deployment of the container service.
--
-- * 'csCreatedAt' - The timestamp when the container service was created.
--
-- * 'csArn' - The Amazon Resource Name (ARN) of the container service.
--
-- * 'csContainerServiceName' - The name of the container service.
--
-- * 'csPrivateDomainName' - The private domain name of the container service. The private domain name is accessible only by other resources within the default virtual private cloud (VPC) of your Lightsail account.
--
-- * 'csResourceType' - The Lightsail resource type of the container service (i.e., @ContainerService@ ).
--
-- * 'csState' - The current state of the container service. The state can be:     * @Pending@ - The container service is being created.     * @Ready@ - The container service is created but does not have a container deployment.     * @Disabled@ - The container service is disabled.     * @Updating@ - The container service capacity or other setting is being updated.     * @Deploying@ - The container service is launching a container deployment.     * @Running@ - The container service is created and it has a container deployment.
--
-- * 'csPrincipalARN' - The principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service. This allows you to give your service permission to access resources in your standard AWS account.
--
-- * 'csTags' - The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
--
-- * 'csNextDeployment' - An object that describes the next deployment of the container service. This value is @null@ when there is no deployment in a @pending@ state.
--
-- * 'csUrl' - The publicly accessible URL of the container service. If no public endpoint is specified in the @currentDeployment@ , this URL returns a 404 response.
--
-- * 'csScale' - The scale specification of the container service. The scale specifies the allocated compute nodes of the container service.
--
-- * 'csPublicDomainNames' - The public domain name of the container service, such as @example.com@ and @www.example.com@ . You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. /Important:/ You must create and validate an SSL/TLS certificate before you can use public domain names with your container service. Use the @CreateCertificate@ action to create a certificate for the public domain names you want to use with your container service. See @CreateContainerService@ or @UpdateContainerService@ for information about how to specify public domain names for your Lightsail container service.
--
-- * 'csLocation' - An object that describes the location of the container service, such as the AWS Region and Availability Zone.
--
-- * 'csPowerId' - The ID of the power of the container service.
--
-- * 'csIsDisabled' - A Boolean value indicating whether the container service is disabled.
containerService ::
  ContainerService
containerService =
  ContainerService'
    { _csPower = Nothing,
      _csCurrentDeployment = Nothing,
      _csCreatedAt = Nothing,
      _csArn = Nothing,
      _csContainerServiceName = Nothing,
      _csPrivateDomainName = Nothing,
      _csResourceType = Nothing,
      _csState = Nothing,
      _csPrincipalARN = Nothing,
      _csTags = Nothing,
      _csNextDeployment = Nothing,
      _csUrl = Nothing,
      _csScale = Nothing,
      _csPublicDomainNames = Nothing,
      _csLocation = Nothing,
      _csPowerId = Nothing,
      _csIsDisabled = Nothing
    }

-- | The power specification of the container service. The power specifies the amount of RAM, the number of vCPUs, and the base price of the container service.
csPower :: Lens' ContainerService (Maybe ContainerServicePowerName)
csPower = lens _csPower (\s a -> s {_csPower = a})

-- | An object that describes the current container deployment of the container service.
csCurrentDeployment :: Lens' ContainerService (Maybe ContainerServiceDeployment)
csCurrentDeployment = lens _csCurrentDeployment (\s a -> s {_csCurrentDeployment = a})

-- | The timestamp when the container service was created.
csCreatedAt :: Lens' ContainerService (Maybe UTCTime)
csCreatedAt = lens _csCreatedAt (\s a -> s {_csCreatedAt = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the container service.
csArn :: Lens' ContainerService (Maybe Text)
csArn = lens _csArn (\s a -> s {_csArn = a})

-- | The name of the container service.
csContainerServiceName :: Lens' ContainerService (Maybe Text)
csContainerServiceName = lens _csContainerServiceName (\s a -> s {_csContainerServiceName = a})

-- | The private domain name of the container service. The private domain name is accessible only by other resources within the default virtual private cloud (VPC) of your Lightsail account.
csPrivateDomainName :: Lens' ContainerService (Maybe Text)
csPrivateDomainName = lens _csPrivateDomainName (\s a -> s {_csPrivateDomainName = a})

-- | The Lightsail resource type of the container service (i.e., @ContainerService@ ).
csResourceType :: Lens' ContainerService (Maybe ResourceType)
csResourceType = lens _csResourceType (\s a -> s {_csResourceType = a})

-- | The current state of the container service. The state can be:     * @Pending@ - The container service is being created.     * @Ready@ - The container service is created but does not have a container deployment.     * @Disabled@ - The container service is disabled.     * @Updating@ - The container service capacity or other setting is being updated.     * @Deploying@ - The container service is launching a container deployment.     * @Running@ - The container service is created and it has a container deployment.
csState :: Lens' ContainerService (Maybe ContainerServiceState)
csState = lens _csState (\s a -> s {_csState = a})

-- | The principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service. This allows you to give your service permission to access resources in your standard AWS account.
csPrincipalARN :: Lens' ContainerService (Maybe Text)
csPrincipalARN = lens _csPrincipalARN (\s a -> s {_csPrincipalARN = a})

-- | The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
csTags :: Lens' ContainerService [Tag]
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Coerce

-- | An object that describes the next deployment of the container service. This value is @null@ when there is no deployment in a @pending@ state.
csNextDeployment :: Lens' ContainerService (Maybe ContainerServiceDeployment)
csNextDeployment = lens _csNextDeployment (\s a -> s {_csNextDeployment = a})

-- | The publicly accessible URL of the container service. If no public endpoint is specified in the @currentDeployment@ , this URL returns a 404 response.
csUrl :: Lens' ContainerService (Maybe Text)
csUrl = lens _csUrl (\s a -> s {_csUrl = a})

-- | The scale specification of the container service. The scale specifies the allocated compute nodes of the container service.
csScale :: Lens' ContainerService (Maybe Natural)
csScale = lens _csScale (\s a -> s {_csScale = a}) . mapping _Nat

-- | The public domain name of the container service, such as @example.com@ and @www.example.com@ . You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. /Important:/ You must create and validate an SSL/TLS certificate before you can use public domain names with your container service. Use the @CreateCertificate@ action to create a certificate for the public domain names you want to use with your container service. See @CreateContainerService@ or @UpdateContainerService@ for information about how to specify public domain names for your Lightsail container service.
csPublicDomainNames :: Lens' ContainerService (HashMap Text [Text])
csPublicDomainNames = lens _csPublicDomainNames (\s a -> s {_csPublicDomainNames = a}) . _Default . _Map

-- | An object that describes the location of the container service, such as the AWS Region and Availability Zone.
csLocation :: Lens' ContainerService (Maybe ResourceLocation)
csLocation = lens _csLocation (\s a -> s {_csLocation = a})

-- | The ID of the power of the container service.
csPowerId :: Lens' ContainerService (Maybe Text)
csPowerId = lens _csPowerId (\s a -> s {_csPowerId = a})

-- | A Boolean value indicating whether the container service is disabled.
csIsDisabled :: Lens' ContainerService (Maybe Bool)
csIsDisabled = lens _csIsDisabled (\s a -> s {_csIsDisabled = a})

instance FromJSON ContainerService where
  parseJSON =
    withObject
      "ContainerService"
      ( \x ->
          ContainerService'
            <$> (x .:? "power")
            <*> (x .:? "currentDeployment")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "containerServiceName")
            <*> (x .:? "privateDomainName")
            <*> (x .:? "resourceType")
            <*> (x .:? "state")
            <*> (x .:? "principalArn")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "nextDeployment")
            <*> (x .:? "url")
            <*> (x .:? "scale")
            <*> (x .:? "publicDomainNames" .!= mempty)
            <*> (x .:? "location")
            <*> (x .:? "powerId")
            <*> (x .:? "isDisabled")
      )

instance Hashable ContainerService

instance NFData ContainerService
