{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
  ( AccessLevelFilterKey
      ( ..,
        Account,
        Role,
        User
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccessLevelFilterKey
  = AccessLevelFilterKey'
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

pattern Account :: AccessLevelFilterKey
pattern Account = AccessLevelFilterKey' "Account"

pattern Role :: AccessLevelFilterKey
pattern Role = AccessLevelFilterKey' "Role"

pattern User :: AccessLevelFilterKey
pattern User = AccessLevelFilterKey' "User"

{-# COMPLETE
  Account,
  Role,
  User,
  AccessLevelFilterKey'
  #-}

instance FromText AccessLevelFilterKey where
  parser = (AccessLevelFilterKey' . mk) <$> takeText

instance ToText AccessLevelFilterKey where
  toText (AccessLevelFilterKey' ci) = original ci

instance Hashable AccessLevelFilterKey

instance NFData AccessLevelFilterKey

instance ToByteString AccessLevelFilterKey

instance ToQuery AccessLevelFilterKey

instance ToHeader AccessLevelFilterKey

instance ToJSON AccessLevelFilterKey where
  toJSON = toJSONText
