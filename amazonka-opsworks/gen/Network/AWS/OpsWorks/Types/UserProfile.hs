{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.UserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.UserProfile where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a user's SSH information.
--
--
--
-- /See:/ 'userProfile' smart constructor.
data UserProfile = UserProfile'
  { _upIAMUserARN ::
      !(Maybe Text),
    _upAllowSelfManagement :: !(Maybe Bool),
    _upSSHUsername :: !(Maybe Text),
    _upName :: !(Maybe Text),
    _upSSHPublicKey :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upIAMUserARN' - The user's IAM ARN.
--
-- * 'upAllowSelfManagement' - Whether users can specify their own SSH public key through the My Settings page. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html Managing User Permissions> .
--
-- * 'upSSHUsername' - The user's SSH user name.
--
-- * 'upName' - The user's name.
--
-- * 'upSSHPublicKey' - The user's SSH public key.
userProfile ::
  UserProfile
userProfile =
  UserProfile'
    { _upIAMUserARN = Nothing,
      _upAllowSelfManagement = Nothing,
      _upSSHUsername = Nothing,
      _upName = Nothing,
      _upSSHPublicKey = Nothing
    }

-- | The user's IAM ARN.
upIAMUserARN :: Lens' UserProfile (Maybe Text)
upIAMUserARN = lens _upIAMUserARN (\s a -> s {_upIAMUserARN = a})

-- | Whether users can specify their own SSH public key through the My Settings page. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html Managing User Permissions> .
upAllowSelfManagement :: Lens' UserProfile (Maybe Bool)
upAllowSelfManagement = lens _upAllowSelfManagement (\s a -> s {_upAllowSelfManagement = a})

-- | The user's SSH user name.
upSSHUsername :: Lens' UserProfile (Maybe Text)
upSSHUsername = lens _upSSHUsername (\s a -> s {_upSSHUsername = a})

-- | The user's name.
upName :: Lens' UserProfile (Maybe Text)
upName = lens _upName (\s a -> s {_upName = a})

-- | The user's SSH public key.
upSSHPublicKey :: Lens' UserProfile (Maybe Text)
upSSHPublicKey = lens _upSSHPublicKey (\s a -> s {_upSSHPublicKey = a})

instance FromJSON UserProfile where
  parseJSON =
    withObject
      "UserProfile"
      ( \x ->
          UserProfile'
            <$> (x .:? "IamUserArn")
            <*> (x .:? "AllowSelfManagement")
            <*> (x .:? "SshUsername")
            <*> (x .:? "Name")
            <*> (x .:? "SshPublicKey")
      )

instance Hashable UserProfile

instance NFData UserProfile
