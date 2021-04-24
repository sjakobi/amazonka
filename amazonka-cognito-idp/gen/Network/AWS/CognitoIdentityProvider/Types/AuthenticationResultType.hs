{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AuthenticationResultType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AuthenticationResultType where

import Network.AWS.CognitoIdentityProvider.Types.NewDeviceMetadataType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The authentication result.
--
--
--
-- /See:/ 'authenticationResultType' smart constructor.
data AuthenticationResultType = AuthenticationResultType'
  { _artExpiresIn ::
      !(Maybe Int),
    _artTokenType ::
      !(Maybe Text),
    _artAccessToken ::
      !( Maybe
           (Sensitive Text)
       ),
    _artNewDeviceMetadata ::
      !( Maybe
           NewDeviceMetadataType
       ),
    _artIdToken ::
      !( Maybe
           (Sensitive Text)
       ),
    _artRefreshToken ::
      !( Maybe
           (Sensitive Text)
       )
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AuthenticationResultType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artExpiresIn' - The expiration period of the authentication result in seconds.
--
-- * 'artTokenType' - The token type.
--
-- * 'artAccessToken' - The access token.
--
-- * 'artNewDeviceMetadata' - The new device metadata from an authentication result.
--
-- * 'artIdToken' - The ID token.
--
-- * 'artRefreshToken' - The refresh token.
authenticationResultType ::
  AuthenticationResultType
authenticationResultType =
  AuthenticationResultType'
    { _artExpiresIn = Nothing,
      _artTokenType = Nothing,
      _artAccessToken = Nothing,
      _artNewDeviceMetadata = Nothing,
      _artIdToken = Nothing,
      _artRefreshToken = Nothing
    }

-- | The expiration period of the authentication result in seconds.
artExpiresIn :: Lens' AuthenticationResultType (Maybe Int)
artExpiresIn = lens _artExpiresIn (\s a -> s {_artExpiresIn = a})

-- | The token type.
artTokenType :: Lens' AuthenticationResultType (Maybe Text)
artTokenType = lens _artTokenType (\s a -> s {_artTokenType = a})

-- | The access token.
artAccessToken :: Lens' AuthenticationResultType (Maybe Text)
artAccessToken = lens _artAccessToken (\s a -> s {_artAccessToken = a}) . mapping _Sensitive

-- | The new device metadata from an authentication result.
artNewDeviceMetadata :: Lens' AuthenticationResultType (Maybe NewDeviceMetadataType)
artNewDeviceMetadata = lens _artNewDeviceMetadata (\s a -> s {_artNewDeviceMetadata = a})

-- | The ID token.
artIdToken :: Lens' AuthenticationResultType (Maybe Text)
artIdToken = lens _artIdToken (\s a -> s {_artIdToken = a}) . mapping _Sensitive

-- | The refresh token.
artRefreshToken :: Lens' AuthenticationResultType (Maybe Text)
artRefreshToken = lens _artRefreshToken (\s a -> s {_artRefreshToken = a}) . mapping _Sensitive

instance FromJSON AuthenticationResultType where
  parseJSON =
    withObject
      "AuthenticationResultType"
      ( \x ->
          AuthenticationResultType'
            <$> (x .:? "ExpiresIn")
            <*> (x .:? "TokenType")
            <*> (x .:? "AccessToken")
            <*> (x .:? "NewDeviceMetadata")
            <*> (x .:? "IdToken")
            <*> (x .:? "RefreshToken")
      )

instance Hashable AuthenticationResultType

instance NFData AuthenticationResultType
