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
-- Module      : Network.AWS.IAM.CreateOpenIdConnectProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an IAM entity to describe an identity provider (IdP) that supports <http://openid.net/connect/ OpenID Connect (OIDC)> .
--
--
-- The OIDC provider that you create with this operation can be used as a principal in a role's trust policy. Such a policy establishes a trust relationship between AWS and the OIDC provider.
--
-- When you create the IAM OIDC provider, you specify the following:
--
--     * The URL of the OIDC identity provider (IdP) to trust
--
--     * A list of client IDs (also known as audiences) that identify the application or applications that are allowed to authenticate using the OIDC provider
--
--     * A list of thumbprints of one or more server certificates that the IdP uses
--
--
--
-- You get all of this information from the OIDC IdP that you want to use to access AWS.
module Network.AWS.IAM.CreateOpenIdConnectProvider
  ( -- * Creating a Request
    createOpenIdConnectProvider,
    CreateOpenIdConnectProvider,

    -- * Request Lenses
    coicpClientIdList,
    coicpTags,
    coicpURL,
    coicpThumbprintList,

    -- * Destructuring the Response
    createOpenIdConnectProviderResponse,
    CreateOpenIdConnectProviderResponse,

    -- * Response Lenses
    coicprrsTags,
    coicprrsOpenIdConnectProviderARN,
    coicprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createOpenIdConnectProvider' smart constructor.
data CreateOpenIdConnectProvider = CreateOpenIdConnectProvider'
  { _coicpClientIdList ::
      !(Maybe [Text]),
    _coicpTags ::
      !(Maybe [Tag]),
    _coicpURL ::
      !Text,
    _coicpThumbprintList ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateOpenIdConnectProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coicpClientIdList' - A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the @client_id@ parameter on OAuth requests.) You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider. There is no defined format for a client ID. The @CreateOpenIDConnectProviderRequest@ operation accepts client IDs up to 255 characters long.
--
-- * 'coicpTags' - A list of tags that you want to attach to the new IAM OpenID Connect (OIDC) provider. Each tag consists of a key name and an associated value. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'coicpURL' - The URL of the identity provider. The URL must begin with @https://@ and should correspond to the @iss@ claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a hostname, like @https://server.example.org@ or @https://example.com@ . You cannot register the same provider multiple times in a single AWS account. If you try to submit a URL that has already been used for an OpenID Connect provider in the AWS account, you will get an error.
--
-- * 'coicpThumbprintList' - A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificates. Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates. The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string. You must provide at least one thumbprint when creating an IAM OIDC provider. For example, assume that the OIDC provider is @server.example.com@ and the provider stores its keys at https://keys.server.example.com/openid-connect. In that case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by https://keys.server.example.com. For more information about obtaining the OIDC provider's thumbprint, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html Obtaining the thumbprint for an OpenID Connect provider> in the /IAM User Guide/ .
createOpenIdConnectProvider ::
  -- | 'coicpURL'
  Text ->
  CreateOpenIdConnectProvider
createOpenIdConnectProvider pURL_ =
  CreateOpenIdConnectProvider'
    { _coicpClientIdList =
        Nothing,
      _coicpTags = Nothing,
      _coicpURL = pURL_,
      _coicpThumbprintList = mempty
    }

-- | A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the @client_id@ parameter on OAuth requests.) You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider. There is no defined format for a client ID. The @CreateOpenIDConnectProviderRequest@ operation accepts client IDs up to 255 characters long.
coicpClientIdList :: Lens' CreateOpenIdConnectProvider [Text]
coicpClientIdList = lens _coicpClientIdList (\s a -> s {_coicpClientIdList = a}) . _Default . _Coerce

-- | A list of tags that you want to attach to the new IAM OpenID Connect (OIDC) provider. Each tag consists of a key name and an associated value. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
coicpTags :: Lens' CreateOpenIdConnectProvider [Tag]
coicpTags = lens _coicpTags (\s a -> s {_coicpTags = a}) . _Default . _Coerce

-- | The URL of the identity provider. The URL must begin with @https://@ and should correspond to the @iss@ claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a hostname, like @https://server.example.org@ or @https://example.com@ . You cannot register the same provider multiple times in a single AWS account. If you try to submit a URL that has already been used for an OpenID Connect provider in the AWS account, you will get an error.
coicpURL :: Lens' CreateOpenIdConnectProvider Text
coicpURL = lens _coicpURL (\s a -> s {_coicpURL = a})

-- | A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificates. Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates. The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string. You must provide at least one thumbprint when creating an IAM OIDC provider. For example, assume that the OIDC provider is @server.example.com@ and the provider stores its keys at https://keys.server.example.com/openid-connect. In that case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by https://keys.server.example.com. For more information about obtaining the OIDC provider's thumbprint, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html Obtaining the thumbprint for an OpenID Connect provider> in the /IAM User Guide/ .
coicpThumbprintList :: Lens' CreateOpenIdConnectProvider [Text]
coicpThumbprintList = lens _coicpThumbprintList (\s a -> s {_coicpThumbprintList = a}) . _Coerce

instance AWSRequest CreateOpenIdConnectProvider where
  type
    Rs CreateOpenIdConnectProvider =
      CreateOpenIdConnectProviderResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "CreateOpenIDConnectProviderResult"
      ( \s h x ->
          CreateOpenIdConnectProviderResponse'
            <$> ( x .@? "Tags" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "OpenIDConnectProviderArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateOpenIdConnectProvider

instance NFData CreateOpenIdConnectProvider

instance ToHeaders CreateOpenIdConnectProvider where
  toHeaders = const mempty

instance ToPath CreateOpenIdConnectProvider where
  toPath = const "/"

instance ToQuery CreateOpenIdConnectProvider where
  toQuery CreateOpenIdConnectProvider' {..} =
    mconcat
      [ "Action"
          =: ("CreateOpenIDConnectProvider" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "ClientIDList"
          =: toQuery
            (toQueryList "member" <$> _coicpClientIdList),
        "Tags"
          =: toQuery (toQueryList "member" <$> _coicpTags),
        "Url" =: _coicpURL,
        "ThumbprintList"
          =: toQueryList "member" _coicpThumbprintList
      ]

-- | Contains the response to a successful 'CreateOpenIDConnectProvider' request.
--
--
--
-- /See:/ 'createOpenIdConnectProviderResponse' smart constructor.
data CreateOpenIdConnectProviderResponse = CreateOpenIdConnectProviderResponse'
  { _coicprrsTags ::
      !( Maybe
           [Tag]
       ),
    _coicprrsOpenIdConnectProviderARN ::
      !( Maybe
           Text
       ),
    _coicprrsResponseStatus ::
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

-- | Creates a value of 'CreateOpenIdConnectProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coicprrsTags' - A list of tags that are attached to the new IAM OIDC provider. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'coicprrsOpenIdConnectProviderARN' - The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is created. For more information, see 'OpenIDConnectProviderListEntry' .
--
-- * 'coicprrsResponseStatus' - -- | The response status code.
createOpenIdConnectProviderResponse ::
  -- | 'coicprrsResponseStatus'
  Int ->
  CreateOpenIdConnectProviderResponse
createOpenIdConnectProviderResponse pResponseStatus_ =
  CreateOpenIdConnectProviderResponse'
    { _coicprrsTags =
        Nothing,
      _coicprrsOpenIdConnectProviderARN =
        Nothing,
      _coicprrsResponseStatus =
        pResponseStatus_
    }

-- | A list of tags that are attached to the new IAM OIDC provider. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
coicprrsTags :: Lens' CreateOpenIdConnectProviderResponse [Tag]
coicprrsTags = lens _coicprrsTags (\s a -> s {_coicprrsTags = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is created. For more information, see 'OpenIDConnectProviderListEntry' .
coicprrsOpenIdConnectProviderARN :: Lens' CreateOpenIdConnectProviderResponse (Maybe Text)
coicprrsOpenIdConnectProviderARN = lens _coicprrsOpenIdConnectProviderARN (\s a -> s {_coicprrsOpenIdConnectProviderARN = a})

-- | -- | The response status code.
coicprrsResponseStatus :: Lens' CreateOpenIdConnectProviderResponse Int
coicprrsResponseStatus = lens _coicprrsResponseStatus (\s a -> s {_coicprrsResponseStatus = a})

instance NFData CreateOpenIdConnectProviderResponse
