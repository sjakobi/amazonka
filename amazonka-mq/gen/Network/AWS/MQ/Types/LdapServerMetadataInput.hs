{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.LdapServerMetadataInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.LdapServerMetadataInput where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The metadata of the LDAP server used to authenticate and authorize connections to the broker.
--
-- /See:/ 'ldapServerMetadataInput' smart constructor.
data LdapServerMetadataInput = LdapServerMetadataInput'
  { _lsmiUserBase ::
      !(Maybe Text),
    _lsmiUserSearchMatching ::
      !(Maybe Text),
    _lsmiRoleName ::
      !(Maybe Text),
    _lsmiServiceAccountPassword ::
      !(Maybe Text),
    _lsmiUserSearchSubtree ::
      !(Maybe Bool),
    _lsmiServiceAccountUsername ::
      !(Maybe Text),
    _lsmiUserRoleName ::
      !(Maybe Text),
    _lsmiRoleBase ::
      !(Maybe Text),
    _lsmiRoleSearchMatching ::
      !(Maybe Text),
    _lsmiHosts ::
      !(Maybe [Text]),
    _lsmiRoleSearchSubtree ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LdapServerMetadataInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsmiUserBase' - Fully qualified name of the directory where you want to search for users.
--
-- * 'lsmiUserSearchMatching' - The search criteria for users.
--
-- * 'lsmiRoleName' - Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
--
-- * 'lsmiServiceAccountPassword' - Service account password.
--
-- * 'lsmiUserSearchSubtree' - The directory search scope for the user. If set to true, scope is to search the entire sub-tree.
--
-- * 'lsmiServiceAccountUsername' - Service account username.
--
-- * 'lsmiUserRoleName' - Specifies the name of the LDAP attribute for the user group membership.
--
-- * 'lsmiRoleBase' - Fully qualified name of the directory to search for a user’s groups.
--
-- * 'lsmiRoleSearchMatching' - The search criteria for groups.
--
-- * 'lsmiHosts' - Fully qualified domain name of the LDAP server. Optional failover server.
--
-- * 'lsmiRoleSearchSubtree' - The directory search scope for the role. If set to true, scope is to search the entire sub-tree.
ldapServerMetadataInput ::
  LdapServerMetadataInput
ldapServerMetadataInput =
  LdapServerMetadataInput'
    { _lsmiUserBase = Nothing,
      _lsmiUserSearchMatching = Nothing,
      _lsmiRoleName = Nothing,
      _lsmiServiceAccountPassword = Nothing,
      _lsmiUserSearchSubtree = Nothing,
      _lsmiServiceAccountUsername = Nothing,
      _lsmiUserRoleName = Nothing,
      _lsmiRoleBase = Nothing,
      _lsmiRoleSearchMatching = Nothing,
      _lsmiHosts = Nothing,
      _lsmiRoleSearchSubtree = Nothing
    }

-- | Fully qualified name of the directory where you want to search for users.
lsmiUserBase :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiUserBase = lens _lsmiUserBase (\s a -> s {_lsmiUserBase = a})

-- | The search criteria for users.
lsmiUserSearchMatching :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiUserSearchMatching = lens _lsmiUserSearchMatching (\s a -> s {_lsmiUserSearchMatching = a})

-- | Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
lsmiRoleName :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiRoleName = lens _lsmiRoleName (\s a -> s {_lsmiRoleName = a})

-- | Service account password.
lsmiServiceAccountPassword :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiServiceAccountPassword = lens _lsmiServiceAccountPassword (\s a -> s {_lsmiServiceAccountPassword = a})

-- | The directory search scope for the user. If set to true, scope is to search the entire sub-tree.
lsmiUserSearchSubtree :: Lens' LdapServerMetadataInput (Maybe Bool)
lsmiUserSearchSubtree = lens _lsmiUserSearchSubtree (\s a -> s {_lsmiUserSearchSubtree = a})

-- | Service account username.
lsmiServiceAccountUsername :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiServiceAccountUsername = lens _lsmiServiceAccountUsername (\s a -> s {_lsmiServiceAccountUsername = a})

-- | Specifies the name of the LDAP attribute for the user group membership.
lsmiUserRoleName :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiUserRoleName = lens _lsmiUserRoleName (\s a -> s {_lsmiUserRoleName = a})

-- | Fully qualified name of the directory to search for a user’s groups.
lsmiRoleBase :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiRoleBase = lens _lsmiRoleBase (\s a -> s {_lsmiRoleBase = a})

-- | The search criteria for groups.
lsmiRoleSearchMatching :: Lens' LdapServerMetadataInput (Maybe Text)
lsmiRoleSearchMatching = lens _lsmiRoleSearchMatching (\s a -> s {_lsmiRoleSearchMatching = a})

-- | Fully qualified domain name of the LDAP server. Optional failover server.
lsmiHosts :: Lens' LdapServerMetadataInput [Text]
lsmiHosts = lens _lsmiHosts (\s a -> s {_lsmiHosts = a}) . _Default . _Coerce

-- | The directory search scope for the role. If set to true, scope is to search the entire sub-tree.
lsmiRoleSearchSubtree :: Lens' LdapServerMetadataInput (Maybe Bool)
lsmiRoleSearchSubtree = lens _lsmiRoleSearchSubtree (\s a -> s {_lsmiRoleSearchSubtree = a})

instance Hashable LdapServerMetadataInput

instance NFData LdapServerMetadataInput

instance ToJSON LdapServerMetadataInput where
  toJSON LdapServerMetadataInput' {..} =
    object
      ( catMaybes
          [ ("userBase" .=) <$> _lsmiUserBase,
            ("userSearchMatching" .=)
              <$> _lsmiUserSearchMatching,
            ("roleName" .=) <$> _lsmiRoleName,
            ("serviceAccountPassword" .=)
              <$> _lsmiServiceAccountPassword,
            ("userSearchSubtree" .=) <$> _lsmiUserSearchSubtree,
            ("serviceAccountUsername" .=)
              <$> _lsmiServiceAccountUsername,
            ("userRoleName" .=) <$> _lsmiUserRoleName,
            ("roleBase" .=) <$> _lsmiRoleBase,
            ("roleSearchMatching" .=)
              <$> _lsmiRoleSearchMatching,
            ("hosts" .=) <$> _lsmiHosts,
            ("roleSearchSubtree" .=) <$> _lsmiRoleSearchSubtree
          ]
      )
