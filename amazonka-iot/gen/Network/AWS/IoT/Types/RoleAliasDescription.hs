{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.RoleAliasDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.RoleAliasDescription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Role alias description.
--
--
--
-- /See:/ 'roleAliasDescription' smart constructor.
data RoleAliasDescription = RoleAliasDescription'
  { _radRoleAliasARN ::
      !(Maybe Text),
    _radLastModifiedDate ::
      !(Maybe POSIX),
    _radRoleARN :: !(Maybe Text),
    _radCreationDate ::
      !(Maybe POSIX),
    _radOwner :: !(Maybe Text),
    _radCredentialDurationSeconds ::
      !(Maybe Nat),
    _radRoleAlias ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RoleAliasDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'radRoleAliasARN' - The ARN of the role alias.
--
-- * 'radLastModifiedDate' - The UNIX timestamp of when the role alias was last modified.
--
-- * 'radRoleARN' - The role ARN.
--
-- * 'radCreationDate' - The UNIX timestamp of when the role alias was created.
--
-- * 'radOwner' - The role alias owner.
--
-- * 'radCredentialDurationSeconds' - The number of seconds for which the credential is valid.
--
-- * 'radRoleAlias' - The role alias.
roleAliasDescription ::
  RoleAliasDescription
roleAliasDescription =
  RoleAliasDescription'
    { _radRoleAliasARN = Nothing,
      _radLastModifiedDate = Nothing,
      _radRoleARN = Nothing,
      _radCreationDate = Nothing,
      _radOwner = Nothing,
      _radCredentialDurationSeconds = Nothing,
      _radRoleAlias = Nothing
    }

-- | The ARN of the role alias.
radRoleAliasARN :: Lens' RoleAliasDescription (Maybe Text)
radRoleAliasARN = lens _radRoleAliasARN (\s a -> s {_radRoleAliasARN = a})

-- | The UNIX timestamp of when the role alias was last modified.
radLastModifiedDate :: Lens' RoleAliasDescription (Maybe UTCTime)
radLastModifiedDate = lens _radLastModifiedDate (\s a -> s {_radLastModifiedDate = a}) . mapping _Time

-- | The role ARN.
radRoleARN :: Lens' RoleAliasDescription (Maybe Text)
radRoleARN = lens _radRoleARN (\s a -> s {_radRoleARN = a})

-- | The UNIX timestamp of when the role alias was created.
radCreationDate :: Lens' RoleAliasDescription (Maybe UTCTime)
radCreationDate = lens _radCreationDate (\s a -> s {_radCreationDate = a}) . mapping _Time

-- | The role alias owner.
radOwner :: Lens' RoleAliasDescription (Maybe Text)
radOwner = lens _radOwner (\s a -> s {_radOwner = a})

-- | The number of seconds for which the credential is valid.
radCredentialDurationSeconds :: Lens' RoleAliasDescription (Maybe Natural)
radCredentialDurationSeconds = lens _radCredentialDurationSeconds (\s a -> s {_radCredentialDurationSeconds = a}) . mapping _Nat

-- | The role alias.
radRoleAlias :: Lens' RoleAliasDescription (Maybe Text)
radRoleAlias = lens _radRoleAlias (\s a -> s {_radRoleAlias = a})

instance FromJSON RoleAliasDescription where
  parseJSON =
    withObject
      "RoleAliasDescription"
      ( \x ->
          RoleAliasDescription'
            <$> (x .:? "roleAliasArn")
            <*> (x .:? "lastModifiedDate")
            <*> (x .:? "roleArn")
            <*> (x .:? "creationDate")
            <*> (x .:? "owner")
            <*> (x .:? "credentialDurationSeconds")
            <*> (x .:? "roleAlias")
      )

instance Hashable RoleAliasDescription

instance NFData RoleAliasDescription
