{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.CreateDomainConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a domain configuration.
module Network.AWS.IoT.CreateDomainConfiguration
  ( -- * Creating a Request
    createDomainConfiguration,
    CreateDomainConfiguration,

    -- * Request Lenses
    cdcServerCertificateARNs,
    cdcAuthorizerConfig,
    cdcDomainName,
    cdcTags,
    cdcValidationCertificateARN,
    cdcServiceType,
    cdcDomainConfigurationName,

    -- * Destructuring the Response
    createDomainConfigurationResponse,
    CreateDomainConfigurationResponse,

    -- * Response Lenses
    cdcrrsDomainConfigurationARN,
    cdcrrsDomainConfigurationName,
    cdcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDomainConfiguration' smart constructor.
data CreateDomainConfiguration = CreateDomainConfiguration'
  { _cdcServerCertificateARNs ::
      !(Maybe [Text]),
    _cdcAuthorizerConfig ::
      !( Maybe
           AuthorizerConfig
       ),
    _cdcDomainName ::
      !(Maybe Text),
    _cdcTags ::
      !(Maybe [Tag]),
    _cdcValidationCertificateARN ::
      !(Maybe Text),
    _cdcServiceType ::
      !( Maybe
           ServiceType
       ),
    _cdcDomainConfigurationName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDomainConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcServerCertificateARNs' - The ARNs of the certificates that AWS IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for AWS-managed domains.
--
-- * 'cdcAuthorizerConfig' - An object that specifies the authorization service for a domain.
--
-- * 'cdcDomainName' - The name of the domain.
--
-- * 'cdcTags' - Metadata which can be used to manage the domain configuration.
--
-- * 'cdcValidationCertificateARN' - The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for AWS-managed domains.
--
-- * 'cdcServiceType' - The type of service delivered by the endpoint.
--
-- * 'cdcDomainConfigurationName' - The name of the domain configuration. This value must be unique to a region.
createDomainConfiguration ::
  -- | 'cdcDomainConfigurationName'
  Text ->
  CreateDomainConfiguration
createDomainConfiguration pDomainConfigurationName_ =
  CreateDomainConfiguration'
    { _cdcServerCertificateARNs =
        Nothing,
      _cdcAuthorizerConfig = Nothing,
      _cdcDomainName = Nothing,
      _cdcTags = Nothing,
      _cdcValidationCertificateARN = Nothing,
      _cdcServiceType = Nothing,
      _cdcDomainConfigurationName =
        pDomainConfigurationName_
    }

-- | The ARNs of the certificates that AWS IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for AWS-managed domains.
cdcServerCertificateARNs :: Lens' CreateDomainConfiguration [Text]
cdcServerCertificateARNs = lens _cdcServerCertificateARNs (\s a -> s {_cdcServerCertificateARNs = a}) . _Default . _Coerce

-- | An object that specifies the authorization service for a domain.
cdcAuthorizerConfig :: Lens' CreateDomainConfiguration (Maybe AuthorizerConfig)
cdcAuthorizerConfig = lens _cdcAuthorizerConfig (\s a -> s {_cdcAuthorizerConfig = a})

-- | The name of the domain.
cdcDomainName :: Lens' CreateDomainConfiguration (Maybe Text)
cdcDomainName = lens _cdcDomainName (\s a -> s {_cdcDomainName = a})

-- | Metadata which can be used to manage the domain configuration.
cdcTags :: Lens' CreateDomainConfiguration [Tag]
cdcTags = lens _cdcTags (\s a -> s {_cdcTags = a}) . _Default . _Coerce

-- | The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for AWS-managed domains.
cdcValidationCertificateARN :: Lens' CreateDomainConfiguration (Maybe Text)
cdcValidationCertificateARN = lens _cdcValidationCertificateARN (\s a -> s {_cdcValidationCertificateARN = a})

-- | The type of service delivered by the endpoint.
cdcServiceType :: Lens' CreateDomainConfiguration (Maybe ServiceType)
cdcServiceType = lens _cdcServiceType (\s a -> s {_cdcServiceType = a})

-- | The name of the domain configuration. This value must be unique to a region.
cdcDomainConfigurationName :: Lens' CreateDomainConfiguration Text
cdcDomainConfigurationName = lens _cdcDomainConfigurationName (\s a -> s {_cdcDomainConfigurationName = a})

instance AWSRequest CreateDomainConfiguration where
  type
    Rs CreateDomainConfiguration =
      CreateDomainConfigurationResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateDomainConfigurationResponse'
            <$> (x .?> "domainConfigurationArn")
            <*> (x .?> "domainConfigurationName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDomainConfiguration

instance NFData CreateDomainConfiguration

instance ToHeaders CreateDomainConfiguration where
  toHeaders = const mempty

instance ToJSON CreateDomainConfiguration where
  toJSON CreateDomainConfiguration' {..} =
    object
      ( catMaybes
          [ ("serverCertificateArns" .=)
              <$> _cdcServerCertificateARNs,
            ("authorizerConfig" .=) <$> _cdcAuthorizerConfig,
            ("domainName" .=) <$> _cdcDomainName,
            ("tags" .=) <$> _cdcTags,
            ("validationCertificateArn" .=)
              <$> _cdcValidationCertificateARN,
            ("serviceType" .=) <$> _cdcServiceType
          ]
      )

instance ToPath CreateDomainConfiguration where
  toPath CreateDomainConfiguration' {..} =
    mconcat
      [ "/domainConfigurations/",
        toBS _cdcDomainConfigurationName
      ]

instance ToQuery CreateDomainConfiguration where
  toQuery = const mempty

-- | /See:/ 'createDomainConfigurationResponse' smart constructor.
data CreateDomainConfigurationResponse = CreateDomainConfigurationResponse'
  { _cdcrrsDomainConfigurationARN ::
      !( Maybe
           Text
       ),
    _cdcrrsDomainConfigurationName ::
      !( Maybe
           Text
       ),
    _cdcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDomainConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcrrsDomainConfigurationARN' - The ARN of the domain configuration.
--
-- * 'cdcrrsDomainConfigurationName' - The name of the domain configuration.
--
-- * 'cdcrrsResponseStatus' - -- | The response status code.
createDomainConfigurationResponse ::
  -- | 'cdcrrsResponseStatus'
  Int ->
  CreateDomainConfigurationResponse
createDomainConfigurationResponse pResponseStatus_ =
  CreateDomainConfigurationResponse'
    { _cdcrrsDomainConfigurationARN =
        Nothing,
      _cdcrrsDomainConfigurationName = Nothing,
      _cdcrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the domain configuration.
cdcrrsDomainConfigurationARN :: Lens' CreateDomainConfigurationResponse (Maybe Text)
cdcrrsDomainConfigurationARN = lens _cdcrrsDomainConfigurationARN (\s a -> s {_cdcrrsDomainConfigurationARN = a})

-- | The name of the domain configuration.
cdcrrsDomainConfigurationName :: Lens' CreateDomainConfigurationResponse (Maybe Text)
cdcrrsDomainConfigurationName = lens _cdcrrsDomainConfigurationName (\s a -> s {_cdcrrsDomainConfigurationName = a})

-- | -- | The response status code.
cdcrrsResponseStatus :: Lens' CreateDomainConfigurationResponse Int
cdcrrsResponseStatus = lens _cdcrrsResponseStatus (\s a -> s {_cdcrrsResponseStatus = a})

instance NFData CreateDomainConfigurationResponse
