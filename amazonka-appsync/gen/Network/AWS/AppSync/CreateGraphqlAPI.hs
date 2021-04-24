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
-- Module      : Network.AWS.AppSync.CreateGraphqlAPI
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @GraphqlApi@ object.
module Network.AWS.AppSync.CreateGraphqlAPI
  ( -- * Creating a Request
    createGraphqlAPI,
    CreateGraphqlAPI,

    -- * Request Lenses
    cgaOpenIdConnectConfig,
    cgaUserPoolConfig,
    cgaXrayEnabled,
    cgaTags,
    cgaLogConfig,
    cgaAdditionalAuthenticationProviders,
    cgaName,
    cgaAuthenticationType,

    -- * Destructuring the Response
    createGraphqlAPIResponse,
    CreateGraphqlAPIResponse,

    -- * Response Lenses
    cgarrsGraphqlAPI,
    cgarrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createGraphqlAPI' smart constructor.
data CreateGraphqlAPI = CreateGraphqlAPI'
  { _cgaOpenIdConnectConfig ::
      !(Maybe OpenIdConnectConfig),
    _cgaUserPoolConfig ::
      !(Maybe UserPoolConfig),
    _cgaXrayEnabled :: !(Maybe Bool),
    _cgaTags :: !(Maybe (Map Text Text)),
    _cgaLogConfig :: !(Maybe LogConfig),
    _cgaAdditionalAuthenticationProviders ::
      !( Maybe
           [AdditionalAuthenticationProvider]
       ),
    _cgaName :: !Text,
    _cgaAuthenticationType ::
      !AuthenticationType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGraphqlAPI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgaOpenIdConnectConfig' - The OpenID Connect configuration.
--
-- * 'cgaUserPoolConfig' - The Amazon Cognito user pool configuration.
--
-- * 'cgaXrayEnabled' - A flag indicating whether to enable X-Ray tracing for the @GraphqlApi@ .
--
-- * 'cgaTags' - A @TagMap@ object.
--
-- * 'cgaLogConfig' - The Amazon CloudWatch Logs configuration.
--
-- * 'cgaAdditionalAuthenticationProviders' - A list of additional authentication providers for the @GraphqlApi@ API.
--
-- * 'cgaName' - A user-supplied name for the @GraphqlApi@ .
--
-- * 'cgaAuthenticationType' - The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.
createGraphqlAPI ::
  -- | 'cgaName'
  Text ->
  -- | 'cgaAuthenticationType'
  AuthenticationType ->
  CreateGraphqlAPI
createGraphqlAPI pName_ pAuthenticationType_ =
  CreateGraphqlAPI'
    { _cgaOpenIdConnectConfig =
        Nothing,
      _cgaUserPoolConfig = Nothing,
      _cgaXrayEnabled = Nothing,
      _cgaTags = Nothing,
      _cgaLogConfig = Nothing,
      _cgaAdditionalAuthenticationProviders = Nothing,
      _cgaName = pName_,
      _cgaAuthenticationType = pAuthenticationType_
    }

-- | The OpenID Connect configuration.
cgaOpenIdConnectConfig :: Lens' CreateGraphqlAPI (Maybe OpenIdConnectConfig)
cgaOpenIdConnectConfig = lens _cgaOpenIdConnectConfig (\s a -> s {_cgaOpenIdConnectConfig = a})

-- | The Amazon Cognito user pool configuration.
cgaUserPoolConfig :: Lens' CreateGraphqlAPI (Maybe UserPoolConfig)
cgaUserPoolConfig = lens _cgaUserPoolConfig (\s a -> s {_cgaUserPoolConfig = a})

-- | A flag indicating whether to enable X-Ray tracing for the @GraphqlApi@ .
cgaXrayEnabled :: Lens' CreateGraphqlAPI (Maybe Bool)
cgaXrayEnabled = lens _cgaXrayEnabled (\s a -> s {_cgaXrayEnabled = a})

-- | A @TagMap@ object.
cgaTags :: Lens' CreateGraphqlAPI (HashMap Text Text)
cgaTags = lens _cgaTags (\s a -> s {_cgaTags = a}) . _Default . _Map

-- | The Amazon CloudWatch Logs configuration.
cgaLogConfig :: Lens' CreateGraphqlAPI (Maybe LogConfig)
cgaLogConfig = lens _cgaLogConfig (\s a -> s {_cgaLogConfig = a})

-- | A list of additional authentication providers for the @GraphqlApi@ API.
cgaAdditionalAuthenticationProviders :: Lens' CreateGraphqlAPI [AdditionalAuthenticationProvider]
cgaAdditionalAuthenticationProviders = lens _cgaAdditionalAuthenticationProviders (\s a -> s {_cgaAdditionalAuthenticationProviders = a}) . _Default . _Coerce

-- | A user-supplied name for the @GraphqlApi@ .
cgaName :: Lens' CreateGraphqlAPI Text
cgaName = lens _cgaName (\s a -> s {_cgaName = a})

-- | The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.
cgaAuthenticationType :: Lens' CreateGraphqlAPI AuthenticationType
cgaAuthenticationType = lens _cgaAuthenticationType (\s a -> s {_cgaAuthenticationType = a})

instance AWSRequest CreateGraphqlAPI where
  type Rs CreateGraphqlAPI = CreateGraphqlAPIResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          CreateGraphqlAPIResponse'
            <$> (x .?> "graphqlApi") <*> (pure (fromEnum s))
      )

instance Hashable CreateGraphqlAPI

instance NFData CreateGraphqlAPI

instance ToHeaders CreateGraphqlAPI where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateGraphqlAPI where
  toJSON CreateGraphqlAPI' {..} =
    object
      ( catMaybes
          [ ("openIDConnectConfig" .=)
              <$> _cgaOpenIdConnectConfig,
            ("userPoolConfig" .=) <$> _cgaUserPoolConfig,
            ("xrayEnabled" .=) <$> _cgaXrayEnabled,
            ("tags" .=) <$> _cgaTags,
            ("logConfig" .=) <$> _cgaLogConfig,
            ("additionalAuthenticationProviders" .=)
              <$> _cgaAdditionalAuthenticationProviders,
            Just ("name" .= _cgaName),
            Just
              ("authenticationType" .= _cgaAuthenticationType)
          ]
      )

instance ToPath CreateGraphqlAPI where
  toPath = const "/v1/apis"

instance ToQuery CreateGraphqlAPI where
  toQuery = const mempty

-- | /See:/ 'createGraphqlAPIResponse' smart constructor.
data CreateGraphqlAPIResponse = CreateGraphqlAPIResponse'
  { _cgarrsGraphqlAPI ::
      !(Maybe GraphqlAPI),
    _cgarrsResponseStatus ::
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

-- | Creates a value of 'CreateGraphqlAPIResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgarrsGraphqlAPI' - The @GraphqlApi@ .
--
-- * 'cgarrsResponseStatus' - -- | The response status code.
createGraphqlAPIResponse ::
  -- | 'cgarrsResponseStatus'
  Int ->
  CreateGraphqlAPIResponse
createGraphqlAPIResponse pResponseStatus_ =
  CreateGraphqlAPIResponse'
    { _cgarrsGraphqlAPI =
        Nothing,
      _cgarrsResponseStatus = pResponseStatus_
    }

-- | The @GraphqlApi@ .
cgarrsGraphqlAPI :: Lens' CreateGraphqlAPIResponse (Maybe GraphqlAPI)
cgarrsGraphqlAPI = lens _cgarrsGraphqlAPI (\s a -> s {_cgarrsGraphqlAPI = a})

-- | -- | The response status code.
cgarrsResponseStatus :: Lens' CreateGraphqlAPIResponse Int
cgarrsResponseStatus = lens _cgarrsResponseStatus (\s a -> s {_cgarrsResponseStatus = a})

instance NFData CreateGraphqlAPIResponse
