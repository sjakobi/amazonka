{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.GraphqlAPI
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.GraphqlAPI where

import Network.AWS.AppSync.Types.AdditionalAuthenticationProvider
import Network.AWS.AppSync.Types.AuthenticationType
import Network.AWS.AppSync.Types.LogConfig
import Network.AWS.AppSync.Types.OpenIdConnectConfig
import Network.AWS.AppSync.Types.UserPoolConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a GraphQL API.
--
--
--
-- /See:/ 'graphqlAPI' smart constructor.
data GraphqlAPI = GraphqlAPI'
  { _gaWafWebACLARN ::
      !(Maybe Text),
    _gaOpenIdConnectConfig ::
      !(Maybe OpenIdConnectConfig),
    _gaApiId :: !(Maybe Text),
    _gaArn :: !(Maybe Text),
    _gaName :: !(Maybe Text),
    _gaUserPoolConfig :: !(Maybe UserPoolConfig),
    _gaXrayEnabled :: !(Maybe Bool),
    _gaTags :: !(Maybe (Map Text Text)),
    _gaLogConfig :: !(Maybe LogConfig),
    _gaAdditionalAuthenticationProviders ::
      !(Maybe [AdditionalAuthenticationProvider]),
    _gaAuthenticationType ::
      !(Maybe AuthenticationType),
    _gaUris :: !(Maybe (Map Text Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GraphqlAPI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaWafWebACLARN' - The ARN of the AWS Web Application Firewall (WAF) ACL associated with this @GraphqlApi@ , if one exists.
--
-- * 'gaOpenIdConnectConfig' - The OpenID Connect configuration.
--
-- * 'gaApiId' - The API ID.
--
-- * 'gaArn' - The ARN.
--
-- * 'gaName' - The API name.
--
-- * 'gaUserPoolConfig' - The Amazon Cognito user pool configuration.
--
-- * 'gaXrayEnabled' - A flag representing whether X-Ray tracing is enabled for this @GraphqlApi@ .
--
-- * 'gaTags' - The tags.
--
-- * 'gaLogConfig' - The Amazon CloudWatch Logs configuration.
--
-- * 'gaAdditionalAuthenticationProviders' - A list of additional authentication providers for the @GraphqlApi@ API.
--
-- * 'gaAuthenticationType' - The authentication type.
--
-- * 'gaUris' - The URIs.
graphqlAPI ::
  GraphqlAPI
graphqlAPI =
  GraphqlAPI'
    { _gaWafWebACLARN = Nothing,
      _gaOpenIdConnectConfig = Nothing,
      _gaApiId = Nothing,
      _gaArn = Nothing,
      _gaName = Nothing,
      _gaUserPoolConfig = Nothing,
      _gaXrayEnabled = Nothing,
      _gaTags = Nothing,
      _gaLogConfig = Nothing,
      _gaAdditionalAuthenticationProviders = Nothing,
      _gaAuthenticationType = Nothing,
      _gaUris = Nothing
    }

-- | The ARN of the AWS Web Application Firewall (WAF) ACL associated with this @GraphqlApi@ , if one exists.
gaWafWebACLARN :: Lens' GraphqlAPI (Maybe Text)
gaWafWebACLARN = lens _gaWafWebACLARN (\s a -> s {_gaWafWebACLARN = a})

-- | The OpenID Connect configuration.
gaOpenIdConnectConfig :: Lens' GraphqlAPI (Maybe OpenIdConnectConfig)
gaOpenIdConnectConfig = lens _gaOpenIdConnectConfig (\s a -> s {_gaOpenIdConnectConfig = a})

-- | The API ID.
gaApiId :: Lens' GraphqlAPI (Maybe Text)
gaApiId = lens _gaApiId (\s a -> s {_gaApiId = a})

-- | The ARN.
gaArn :: Lens' GraphqlAPI (Maybe Text)
gaArn = lens _gaArn (\s a -> s {_gaArn = a})

-- | The API name.
gaName :: Lens' GraphqlAPI (Maybe Text)
gaName = lens _gaName (\s a -> s {_gaName = a})

-- | The Amazon Cognito user pool configuration.
gaUserPoolConfig :: Lens' GraphqlAPI (Maybe UserPoolConfig)
gaUserPoolConfig = lens _gaUserPoolConfig (\s a -> s {_gaUserPoolConfig = a})

-- | A flag representing whether X-Ray tracing is enabled for this @GraphqlApi@ .
gaXrayEnabled :: Lens' GraphqlAPI (Maybe Bool)
gaXrayEnabled = lens _gaXrayEnabled (\s a -> s {_gaXrayEnabled = a})

-- | The tags.
gaTags :: Lens' GraphqlAPI (HashMap Text Text)
gaTags = lens _gaTags (\s a -> s {_gaTags = a}) . _Default . _Map

-- | The Amazon CloudWatch Logs configuration.
gaLogConfig :: Lens' GraphqlAPI (Maybe LogConfig)
gaLogConfig = lens _gaLogConfig (\s a -> s {_gaLogConfig = a})

-- | A list of additional authentication providers for the @GraphqlApi@ API.
gaAdditionalAuthenticationProviders :: Lens' GraphqlAPI [AdditionalAuthenticationProvider]
gaAdditionalAuthenticationProviders = lens _gaAdditionalAuthenticationProviders (\s a -> s {_gaAdditionalAuthenticationProviders = a}) . _Default . _Coerce

-- | The authentication type.
gaAuthenticationType :: Lens' GraphqlAPI (Maybe AuthenticationType)
gaAuthenticationType = lens _gaAuthenticationType (\s a -> s {_gaAuthenticationType = a})

-- | The URIs.
gaUris :: Lens' GraphqlAPI (HashMap Text Text)
gaUris = lens _gaUris (\s a -> s {_gaUris = a}) . _Default . _Map

instance FromJSON GraphqlAPI where
  parseJSON =
    withObject
      "GraphqlAPI"
      ( \x ->
          GraphqlAPI'
            <$> (x .:? "wafWebAclArn")
            <*> (x .:? "openIDConnectConfig")
            <*> (x .:? "apiId")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "userPoolConfig")
            <*> (x .:? "xrayEnabled")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "logConfig")
            <*> ( x .:? "additionalAuthenticationProviders"
                    .!= mempty
                )
            <*> (x .:? "authenticationType")
            <*> (x .:? "uris" .!= mempty)
      )

instance Hashable GraphqlAPI

instance NFData GraphqlAPI
