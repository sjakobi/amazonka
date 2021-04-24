{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.UserStackAssociationErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UserStackAssociationErrorCode
  ( UserStackAssociationErrorCode
      ( ..,
        USAECDirectoryNotFound,
        USAECInternalError,
        USAECStackNotFound,
        USAECUserNameNotFound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UserStackAssociationErrorCode
  = UserStackAssociationErrorCode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern USAECDirectoryNotFound :: UserStackAssociationErrorCode
pattern USAECDirectoryNotFound = UserStackAssociationErrorCode' "DIRECTORY_NOT_FOUND"

pattern USAECInternalError :: UserStackAssociationErrorCode
pattern USAECInternalError = UserStackAssociationErrorCode' "INTERNAL_ERROR"

pattern USAECStackNotFound :: UserStackAssociationErrorCode
pattern USAECStackNotFound = UserStackAssociationErrorCode' "STACK_NOT_FOUND"

pattern USAECUserNameNotFound :: UserStackAssociationErrorCode
pattern USAECUserNameNotFound = UserStackAssociationErrorCode' "USER_NAME_NOT_FOUND"

{-# COMPLETE
  USAECDirectoryNotFound,
  USAECInternalError,
  USAECStackNotFound,
  USAECUserNameNotFound,
  UserStackAssociationErrorCode'
  #-}

instance FromText UserStackAssociationErrorCode where
  parser = (UserStackAssociationErrorCode' . mk) <$> takeText

instance ToText UserStackAssociationErrorCode where
  toText (UserStackAssociationErrorCode' ci) = original ci

instance Hashable UserStackAssociationErrorCode

instance NFData UserStackAssociationErrorCode

instance ToByteString UserStackAssociationErrorCode

instance ToQuery UserStackAssociationErrorCode

instance ToHeader UserStackAssociationErrorCode

instance FromJSON UserStackAssociationErrorCode where
  parseJSON = parseJSONText "UserStackAssociationErrorCode"
