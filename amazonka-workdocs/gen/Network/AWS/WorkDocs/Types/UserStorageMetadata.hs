{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.UserStorageMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserStorageMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkDocs.Types.StorageRuleType

-- | Describes the storage for a user.
--
--
--
-- /See:/ 'userStorageMetadata' smart constructor.
data UserStorageMetadata = UserStorageMetadata'
  { _usmStorageRule ::
      !(Maybe StorageRuleType),
    _usmStorageUtilizedInBytes ::
      !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserStorageMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usmStorageRule' - The storage for a user.
--
-- * 'usmStorageUtilizedInBytes' - The amount of storage used, in bytes.
userStorageMetadata ::
  UserStorageMetadata
userStorageMetadata =
  UserStorageMetadata'
    { _usmStorageRule = Nothing,
      _usmStorageUtilizedInBytes = Nothing
    }

-- | The storage for a user.
usmStorageRule :: Lens' UserStorageMetadata (Maybe StorageRuleType)
usmStorageRule = lens _usmStorageRule (\s a -> s {_usmStorageRule = a})

-- | The amount of storage used, in bytes.
usmStorageUtilizedInBytes :: Lens' UserStorageMetadata (Maybe Integer)
usmStorageUtilizedInBytes = lens _usmStorageUtilizedInBytes (\s a -> s {_usmStorageUtilizedInBytes = a})

instance FromJSON UserStorageMetadata where
  parseJSON =
    withObject
      "UserStorageMetadata"
      ( \x ->
          UserStorageMetadata'
            <$> (x .:? "StorageRule")
            <*> (x .:? "StorageUtilizedInBytes")
      )

instance Hashable UserStorageMetadata

instance NFData UserStorageMetadata
