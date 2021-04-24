{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.User
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.User where

import Network.AWS.ElastiCache.Types.Authentication
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'user' smart constructor.
data User = User'
  { _uStatus :: !(Maybe Text),
    _uAccessString :: !(Maybe Text),
    _uUserGroupIds :: !(Maybe [Text]),
    _uAuthentication :: !(Maybe Authentication),
    _uARN :: !(Maybe Text),
    _uUserId :: !(Maybe Text),
    _uEngine :: !(Maybe Text),
    _uUserName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uStatus' - Indicates the user status. Can be "active", "modifying" or "deleting".
--
-- * 'uAccessString' - Access permissions string used for this user.
--
-- * 'uUserGroupIds' - Returns a list of the user group IDs the user belongs to.
--
-- * 'uAuthentication' - Denotes whether the user requires a password to authenticate.
--
-- * 'uARN' - The Amazon Resource Name (ARN) of the user.
--
-- * 'uUserId' - The ID of the user.
--
-- * 'uEngine' - The current supported value is Redis.
--
-- * 'uUserName' - The username of the user.
user ::
  User
user =
  User'
    { _uStatus = Nothing,
      _uAccessString = Nothing,
      _uUserGroupIds = Nothing,
      _uAuthentication = Nothing,
      _uARN = Nothing,
      _uUserId = Nothing,
      _uEngine = Nothing,
      _uUserName = Nothing
    }

-- | Indicates the user status. Can be "active", "modifying" or "deleting".
uStatus :: Lens' User (Maybe Text)
uStatus = lens _uStatus (\s a -> s {_uStatus = a})

-- | Access permissions string used for this user.
uAccessString :: Lens' User (Maybe Text)
uAccessString = lens _uAccessString (\s a -> s {_uAccessString = a})

-- | Returns a list of the user group IDs the user belongs to.
uUserGroupIds :: Lens' User [Text]
uUserGroupIds = lens _uUserGroupIds (\s a -> s {_uUserGroupIds = a}) . _Default . _Coerce

-- | Denotes whether the user requires a password to authenticate.
uAuthentication :: Lens' User (Maybe Authentication)
uAuthentication = lens _uAuthentication (\s a -> s {_uAuthentication = a})

-- | The Amazon Resource Name (ARN) of the user.
uARN :: Lens' User (Maybe Text)
uARN = lens _uARN (\s a -> s {_uARN = a})

-- | The ID of the user.
uUserId :: Lens' User (Maybe Text)
uUserId = lens _uUserId (\s a -> s {_uUserId = a})

-- | The current supported value is Redis.
uEngine :: Lens' User (Maybe Text)
uEngine = lens _uEngine (\s a -> s {_uEngine = a})

-- | The username of the user.
uUserName :: Lens' User (Maybe Text)
uUserName = lens _uUserName (\s a -> s {_uUserName = a})

instance FromXML User where
  parseXML x =
    User'
      <$> (x .@? "Status")
      <*> (x .@? "AccessString")
      <*> ( x .@? "UserGroupIds" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Authentication")
      <*> (x .@? "ARN")
      <*> (x .@? "UserId")
      <*> (x .@? "Engine")
      <*> (x .@? "UserName")

instance Hashable User

instance NFData User
