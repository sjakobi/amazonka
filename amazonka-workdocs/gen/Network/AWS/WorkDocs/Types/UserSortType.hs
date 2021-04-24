{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.UserSortType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserSortType
  ( UserSortType
      ( ..,
        FullName,
        StorageLimit,
        StorageUsed,
        UserName,
        UserStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UserSortType = UserSortType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FullName :: UserSortType
pattern FullName = UserSortType' "FULL_NAME"

pattern StorageLimit :: UserSortType
pattern StorageLimit = UserSortType' "STORAGE_LIMIT"

pattern StorageUsed :: UserSortType
pattern StorageUsed = UserSortType' "STORAGE_USED"

pattern UserName :: UserSortType
pattern UserName = UserSortType' "USER_NAME"

pattern UserStatus :: UserSortType
pattern UserStatus = UserSortType' "USER_STATUS"

{-# COMPLETE
  FullName,
  StorageLimit,
  StorageUsed,
  UserName,
  UserStatus,
  UserSortType'
  #-}

instance FromText UserSortType where
  parser = (UserSortType' . mk) <$> takeText

instance ToText UserSortType where
  toText (UserSortType' ci) = original ci

instance Hashable UserSortType

instance NFData UserSortType

instance ToByteString UserSortType

instance ToQuery UserSortType

instance ToHeader UserSortType

instance ToJSON UserSortType where
  toJSON = toJSONText
