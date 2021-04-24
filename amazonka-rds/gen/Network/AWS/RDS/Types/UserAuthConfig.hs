{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.UserAuthConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.UserAuthConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.AuthScheme
import Network.AWS.RDS.Types.IAMAuthMode

-- | Specifies the details of authentication used by a proxy to log in as a specific database user.
--
--
--
-- /See:/ 'userAuthConfig' smart constructor.
data UserAuthConfig = UserAuthConfig'
  { _uacSecretARN ::
      !(Maybe Text),
    _uacIAMAuth :: !(Maybe IAMAuthMode),
    _uacAuthScheme :: !(Maybe AuthScheme),
    _uacUserName :: !(Maybe Text),
    _uacDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserAuthConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uacSecretARN' - The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.
--
-- * 'uacIAMAuth' - Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.
--
-- * 'uacAuthScheme' - The type of authentication that the proxy uses for connections from the proxy to the underlying database.
--
-- * 'uacUserName' - The name of the database user to which the proxy connects.
--
-- * 'uacDescription' - A user-specified description about the authentication used by a proxy to log in as a specific database user.
userAuthConfig ::
  UserAuthConfig
userAuthConfig =
  UserAuthConfig'
    { _uacSecretARN = Nothing,
      _uacIAMAuth = Nothing,
      _uacAuthScheme = Nothing,
      _uacUserName = Nothing,
      _uacDescription = Nothing
    }

-- | The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.
uacSecretARN :: Lens' UserAuthConfig (Maybe Text)
uacSecretARN = lens _uacSecretARN (\s a -> s {_uacSecretARN = a})

-- | Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.
uacIAMAuth :: Lens' UserAuthConfig (Maybe IAMAuthMode)
uacIAMAuth = lens _uacIAMAuth (\s a -> s {_uacIAMAuth = a})

-- | The type of authentication that the proxy uses for connections from the proxy to the underlying database.
uacAuthScheme :: Lens' UserAuthConfig (Maybe AuthScheme)
uacAuthScheme = lens _uacAuthScheme (\s a -> s {_uacAuthScheme = a})

-- | The name of the database user to which the proxy connects.
uacUserName :: Lens' UserAuthConfig (Maybe Text)
uacUserName = lens _uacUserName (\s a -> s {_uacUserName = a})

-- | A user-specified description about the authentication used by a proxy to log in as a specific database user.
uacDescription :: Lens' UserAuthConfig (Maybe Text)
uacDescription = lens _uacDescription (\s a -> s {_uacDescription = a})

instance Hashable UserAuthConfig

instance NFData UserAuthConfig

instance ToQuery UserAuthConfig where
  toQuery UserAuthConfig' {..} =
    mconcat
      [ "SecretArn" =: _uacSecretARN,
        "IAMAuth" =: _uacIAMAuth,
        "AuthScheme" =: _uacAuthScheme,
        "UserName" =: _uacUserName,
        "Description" =: _uacDescription
      ]
