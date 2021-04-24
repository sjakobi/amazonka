{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OidcConfigForResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OidcConfigForResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Your OIDC IdP workforce configuration.
--
--
--
-- /See:/ 'oidcConfigForResponse' smart constructor.
data OidcConfigForResponse = OidcConfigForResponse'
  { _ocfrClientId ::
      !(Maybe Text),
    _ocfrTokenEndpoint ::
      !(Maybe Text),
    _ocfrAuthorizationEndpoint ::
      !(Maybe Text),
    _ocfrUserInfoEndpoint ::
      !(Maybe Text),
    _ocfrLogoutEndpoint ::
      !(Maybe Text),
    _ocfrIssuer ::
      !(Maybe Text),
    _ocfrJwksURI ::
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

-- | Creates a value of 'OidcConfigForResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocfrClientId' - The OIDC IdP client ID used to configure your private workforce.
--
-- * 'ocfrTokenEndpoint' - The OIDC IdP token endpoint used to configure your private workforce.
--
-- * 'ocfrAuthorizationEndpoint' - The OIDC IdP authorization endpoint used to configure your private workforce.
--
-- * 'ocfrUserInfoEndpoint' - The OIDC IdP user information endpoint used to configure your private workforce.
--
-- * 'ocfrLogoutEndpoint' - The OIDC IdP logout endpoint used to configure your private workforce.
--
-- * 'ocfrIssuer' - The OIDC IdP issuer used to configure your private workforce.
--
-- * 'ocfrJwksURI' - The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
oidcConfigForResponse ::
  OidcConfigForResponse
oidcConfigForResponse =
  OidcConfigForResponse'
    { _ocfrClientId = Nothing,
      _ocfrTokenEndpoint = Nothing,
      _ocfrAuthorizationEndpoint = Nothing,
      _ocfrUserInfoEndpoint = Nothing,
      _ocfrLogoutEndpoint = Nothing,
      _ocfrIssuer = Nothing,
      _ocfrJwksURI = Nothing
    }

-- | The OIDC IdP client ID used to configure your private workforce.
ocfrClientId :: Lens' OidcConfigForResponse (Maybe Text)
ocfrClientId = lens _ocfrClientId (\s a -> s {_ocfrClientId = a})

-- | The OIDC IdP token endpoint used to configure your private workforce.
ocfrTokenEndpoint :: Lens' OidcConfigForResponse (Maybe Text)
ocfrTokenEndpoint = lens _ocfrTokenEndpoint (\s a -> s {_ocfrTokenEndpoint = a})

-- | The OIDC IdP authorization endpoint used to configure your private workforce.
ocfrAuthorizationEndpoint :: Lens' OidcConfigForResponse (Maybe Text)
ocfrAuthorizationEndpoint = lens _ocfrAuthorizationEndpoint (\s a -> s {_ocfrAuthorizationEndpoint = a})

-- | The OIDC IdP user information endpoint used to configure your private workforce.
ocfrUserInfoEndpoint :: Lens' OidcConfigForResponse (Maybe Text)
ocfrUserInfoEndpoint = lens _ocfrUserInfoEndpoint (\s a -> s {_ocfrUserInfoEndpoint = a})

-- | The OIDC IdP logout endpoint used to configure your private workforce.
ocfrLogoutEndpoint :: Lens' OidcConfigForResponse (Maybe Text)
ocfrLogoutEndpoint = lens _ocfrLogoutEndpoint (\s a -> s {_ocfrLogoutEndpoint = a})

-- | The OIDC IdP issuer used to configure your private workforce.
ocfrIssuer :: Lens' OidcConfigForResponse (Maybe Text)
ocfrIssuer = lens _ocfrIssuer (\s a -> s {_ocfrIssuer = a})

-- | The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
ocfrJwksURI :: Lens' OidcConfigForResponse (Maybe Text)
ocfrJwksURI = lens _ocfrJwksURI (\s a -> s {_ocfrJwksURI = a})

instance FromJSON OidcConfigForResponse where
  parseJSON =
    withObject
      "OidcConfigForResponse"
      ( \x ->
          OidcConfigForResponse'
            <$> (x .:? "ClientId")
            <*> (x .:? "TokenEndpoint")
            <*> (x .:? "AuthorizationEndpoint")
            <*> (x .:? "UserInfoEndpoint")
            <*> (x .:? "LogoutEndpoint")
            <*> (x .:? "Issuer")
            <*> (x .:? "JwksUri")
      )

instance Hashable OidcConfigForResponse

instance NFData OidcConfigForResponse
