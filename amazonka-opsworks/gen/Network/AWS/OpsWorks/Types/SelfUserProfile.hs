{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.SelfUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.SelfUserProfile where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a user's SSH information.
--
--
--
-- /See:/ 'selfUserProfile' smart constructor.
data SelfUserProfile = SelfUserProfile'
  { _supIAMUserARN ::
      !(Maybe Text),
    _supSSHUsername :: !(Maybe Text),
    _supName :: !(Maybe Text),
    _supSSHPublicKey :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SelfUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'supIAMUserARN' - The user's IAM ARN.
--
-- * 'supSSHUsername' - The user's SSH user name.
--
-- * 'supName' - The user's name.
--
-- * 'supSSHPublicKey' - The user's SSH public key.
selfUserProfile ::
  SelfUserProfile
selfUserProfile =
  SelfUserProfile'
    { _supIAMUserARN = Nothing,
      _supSSHUsername = Nothing,
      _supName = Nothing,
      _supSSHPublicKey = Nothing
    }

-- | The user's IAM ARN.
supIAMUserARN :: Lens' SelfUserProfile (Maybe Text)
supIAMUserARN = lens _supIAMUserARN (\s a -> s {_supIAMUserARN = a})

-- | The user's SSH user name.
supSSHUsername :: Lens' SelfUserProfile (Maybe Text)
supSSHUsername = lens _supSSHUsername (\s a -> s {_supSSHUsername = a})

-- | The user's name.
supName :: Lens' SelfUserProfile (Maybe Text)
supName = lens _supName (\s a -> s {_supName = a})

-- | The user's SSH public key.
supSSHPublicKey :: Lens' SelfUserProfile (Maybe Text)
supSSHPublicKey = lens _supSSHPublicKey (\s a -> s {_supSSHPublicKey = a})

instance FromJSON SelfUserProfile where
  parseJSON =
    withObject
      "SelfUserProfile"
      ( \x ->
          SelfUserProfile'
            <$> (x .:? "IamUserArn")
            <*> (x .:? "SshUsername")
            <*> (x .:? "Name")
            <*> (x .:? "SshPublicKey")
      )

instance Hashable SelfUserProfile

instance NFData SelfUserProfile
