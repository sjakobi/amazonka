{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.User
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.User where

import Network.AWS.Connect.Types.UserIdentityInfo
import Network.AWS.Connect.Types.UserPhoneConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a user account for a Amazon Connect instance.
--
--
--
-- /See:/ 'user' smart constructor.
data User = User'
  { _uSecurityProfileIds ::
      !(Maybe (List1 Text)),
    _uIdentityInfo :: !(Maybe UserIdentityInfo),
    _uARN :: !(Maybe Text),
    _uId :: !(Maybe Text),
    _uHierarchyGroupId :: !(Maybe Text),
    _uDirectoryUserId :: !(Maybe Text),
    _uRoutingProfileId :: !(Maybe Text),
    _uTags :: !(Maybe (Map Text Text)),
    _uPhoneConfig :: !(Maybe UserPhoneConfig),
    _uUsername :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uSecurityProfileIds' - The identifiers of the security profiles for the user.
--
-- * 'uIdentityInfo' - Information about the user identity.
--
-- * 'uARN' - The Amazon Resource Name (ARN) of the user account.
--
-- * 'uId' - The identifier of the user account.
--
-- * 'uHierarchyGroupId' - The identifier of the hierarchy group for the user.
--
-- * 'uDirectoryUserId' - The identifier of the user account in the directory used for identity management.
--
-- * 'uRoutingProfileId' - The identifier of the routing profile for the user.
--
-- * 'uTags' - The tags.
--
-- * 'uPhoneConfig' - Information about the phone configuration for the user.
--
-- * 'uUsername' - The user name assigned to the user account.
user ::
  User
user =
  User'
    { _uSecurityProfileIds = Nothing,
      _uIdentityInfo = Nothing,
      _uARN = Nothing,
      _uId = Nothing,
      _uHierarchyGroupId = Nothing,
      _uDirectoryUserId = Nothing,
      _uRoutingProfileId = Nothing,
      _uTags = Nothing,
      _uPhoneConfig = Nothing,
      _uUsername = Nothing
    }

-- | The identifiers of the security profiles for the user.
uSecurityProfileIds :: Lens' User (Maybe (NonEmpty Text))
uSecurityProfileIds = lens _uSecurityProfileIds (\s a -> s {_uSecurityProfileIds = a}) . mapping _List1

-- | Information about the user identity.
uIdentityInfo :: Lens' User (Maybe UserIdentityInfo)
uIdentityInfo = lens _uIdentityInfo (\s a -> s {_uIdentityInfo = a})

-- | The Amazon Resource Name (ARN) of the user account.
uARN :: Lens' User (Maybe Text)
uARN = lens _uARN (\s a -> s {_uARN = a})

-- | The identifier of the user account.
uId :: Lens' User (Maybe Text)
uId = lens _uId (\s a -> s {_uId = a})

-- | The identifier of the hierarchy group for the user.
uHierarchyGroupId :: Lens' User (Maybe Text)
uHierarchyGroupId = lens _uHierarchyGroupId (\s a -> s {_uHierarchyGroupId = a})

-- | The identifier of the user account in the directory used for identity management.
uDirectoryUserId :: Lens' User (Maybe Text)
uDirectoryUserId = lens _uDirectoryUserId (\s a -> s {_uDirectoryUserId = a})

-- | The identifier of the routing profile for the user.
uRoutingProfileId :: Lens' User (Maybe Text)
uRoutingProfileId = lens _uRoutingProfileId (\s a -> s {_uRoutingProfileId = a})

-- | The tags.
uTags :: Lens' User (HashMap Text Text)
uTags = lens _uTags (\s a -> s {_uTags = a}) . _Default . _Map

-- | Information about the phone configuration for the user.
uPhoneConfig :: Lens' User (Maybe UserPhoneConfig)
uPhoneConfig = lens _uPhoneConfig (\s a -> s {_uPhoneConfig = a})

-- | The user name assigned to the user account.
uUsername :: Lens' User (Maybe Text)
uUsername = lens _uUsername (\s a -> s {_uUsername = a})

instance FromJSON User where
  parseJSON =
    withObject
      "User"
      ( \x ->
          User'
            <$> (x .:? "SecurityProfileIds")
            <*> (x .:? "IdentityInfo")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "HierarchyGroupId")
            <*> (x .:? "DirectoryUserId")
            <*> (x .:? "RoutingProfileId")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "PhoneConfig")
            <*> (x .:? "Username")
      )

instance Hashable User

instance NFData User
