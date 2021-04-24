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
-- Module      : Network.AWS.CognitoIdentity.GetCredentialsForIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.
--
--
-- This is a public API. You do not need any credentials to call this API.
module Network.AWS.CognitoIdentity.GetCredentialsForIdentity
  ( -- * Creating a Request
    getCredentialsForIdentity,
    GetCredentialsForIdentity,

    -- * Request Lenses
    gcfiLogins,
    gcfiCustomRoleARN,
    gcfiIdentityId,

    -- * Destructuring the Response
    getCredentialsForIdentityResponse,
    GetCredentialsForIdentityResponse,

    -- * Response Lenses
    gcfirrsIdentityId,
    gcfirrsCredentials,
    gcfirrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the @GetCredentialsForIdentity@ action.
--
--
--
-- /See:/ 'getCredentialsForIdentity' smart constructor.
data GetCredentialsForIdentity = GetCredentialsForIdentity'
  { _gcfiLogins ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gcfiCustomRoleARN ::
      !(Maybe Text),
    _gcfiIdentityId ::
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

-- | Creates a value of 'GetCredentialsForIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfiLogins' - A set of optional name-value pairs that map provider names to provider tokens. The name-value pair will follow the syntax "provider_name": "provider_user_identifier". Logins should not be specified when trying to get credentials for an unauthenticated identity. The Logins parameter is required when using identities associated with external identity providers such as Facebook. For examples of @Logins@ maps, see the code examples in the <https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html External Identity Providers> section of the Amazon Cognito Developer Guide.
--
-- * 'gcfiCustomRoleARN' - The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.
--
-- * 'gcfiIdentityId' - A unique identifier in the format REGION:GUID.
getCredentialsForIdentity ::
  -- | 'gcfiIdentityId'
  Text ->
  GetCredentialsForIdentity
getCredentialsForIdentity pIdentityId_ =
  GetCredentialsForIdentity'
    { _gcfiLogins = Nothing,
      _gcfiCustomRoleARN = Nothing,
      _gcfiIdentityId = pIdentityId_
    }

-- | A set of optional name-value pairs that map provider names to provider tokens. The name-value pair will follow the syntax "provider_name": "provider_user_identifier". Logins should not be specified when trying to get credentials for an unauthenticated identity. The Logins parameter is required when using identities associated with external identity providers such as Facebook. For examples of @Logins@ maps, see the code examples in the <https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html External Identity Providers> section of the Amazon Cognito Developer Guide.
gcfiLogins :: Lens' GetCredentialsForIdentity (HashMap Text Text)
gcfiLogins = lens _gcfiLogins (\s a -> s {_gcfiLogins = a}) . _Default . _Map

-- | The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.
gcfiCustomRoleARN :: Lens' GetCredentialsForIdentity (Maybe Text)
gcfiCustomRoleARN = lens _gcfiCustomRoleARN (\s a -> s {_gcfiCustomRoleARN = a})

-- | A unique identifier in the format REGION:GUID.
gcfiIdentityId :: Lens' GetCredentialsForIdentity Text
gcfiIdentityId = lens _gcfiIdentityId (\s a -> s {_gcfiIdentityId = a})

instance AWSRequest GetCredentialsForIdentity where
  type
    Rs GetCredentialsForIdentity =
      GetCredentialsForIdentityResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          GetCredentialsForIdentityResponse'
            <$> (x .?> "IdentityId")
            <*> (x .?> "Credentials")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCredentialsForIdentity

instance NFData GetCredentialsForIdentity

instance ToHeaders GetCredentialsForIdentity where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.GetCredentialsForIdentity" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCredentialsForIdentity where
  toJSON GetCredentialsForIdentity' {..} =
    object
      ( catMaybes
          [ ("Logins" .=) <$> _gcfiLogins,
            ("CustomRoleArn" .=) <$> _gcfiCustomRoleARN,
            Just ("IdentityId" .= _gcfiIdentityId)
          ]
      )

instance ToPath GetCredentialsForIdentity where
  toPath = const "/"

instance ToQuery GetCredentialsForIdentity where
  toQuery = const mempty

-- | Returned in response to a successful @GetCredentialsForIdentity@ operation.
--
--
--
-- /See:/ 'getCredentialsForIdentityResponse' smart constructor.
data GetCredentialsForIdentityResponse = GetCredentialsForIdentityResponse'
  { _gcfirrsIdentityId ::
      !( Maybe
           Text
       ),
    _gcfirrsCredentials ::
      !( Maybe
           Credentials
       ),
    _gcfirrsResponseStatus ::
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

-- | Creates a value of 'GetCredentialsForIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfirrsIdentityId' - A unique identifier in the format REGION:GUID.
--
-- * 'gcfirrsCredentials' - Credentials for the provided identity ID.
--
-- * 'gcfirrsResponseStatus' - -- | The response status code.
getCredentialsForIdentityResponse ::
  -- | 'gcfirrsResponseStatus'
  Int ->
  GetCredentialsForIdentityResponse
getCredentialsForIdentityResponse pResponseStatus_ =
  GetCredentialsForIdentityResponse'
    { _gcfirrsIdentityId =
        Nothing,
      _gcfirrsCredentials = Nothing,
      _gcfirrsResponseStatus =
        pResponseStatus_
    }

-- | A unique identifier in the format REGION:GUID.
gcfirrsIdentityId :: Lens' GetCredentialsForIdentityResponse (Maybe Text)
gcfirrsIdentityId = lens _gcfirrsIdentityId (\s a -> s {_gcfirrsIdentityId = a})

-- | Credentials for the provided identity ID.
gcfirrsCredentials :: Lens' GetCredentialsForIdentityResponse (Maybe Credentials)
gcfirrsCredentials = lens _gcfirrsCredentials (\s a -> s {_gcfirrsCredentials = a})

-- | -- | The response status code.
gcfirrsResponseStatus :: Lens' GetCredentialsForIdentityResponse Int
gcfirrsResponseStatus = lens _gcfirrsResponseStatus (\s a -> s {_gcfirrsResponseStatus = a})

instance NFData GetCredentialsForIdentityResponse
