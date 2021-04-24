{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Permission
  ( Permission
      ( ..,
        All,
        Alter,
        CreateDatabase,
        CreateTable,
        DataLocationAccess,
        Delete,
        Drop,
        Insert,
        Select
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Permission = Permission' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern All :: Permission
pattern All = Permission' "ALL"

pattern Alter :: Permission
pattern Alter = Permission' "ALTER"

pattern CreateDatabase :: Permission
pattern CreateDatabase = Permission' "CREATE_DATABASE"

pattern CreateTable :: Permission
pattern CreateTable = Permission' "CREATE_TABLE"

pattern DataLocationAccess :: Permission
pattern DataLocationAccess = Permission' "DATA_LOCATION_ACCESS"

pattern Delete :: Permission
pattern Delete = Permission' "DELETE"

pattern Drop :: Permission
pattern Drop = Permission' "DROP"

pattern Insert :: Permission
pattern Insert = Permission' "INSERT"

pattern Select :: Permission
pattern Select = Permission' "SELECT"

{-# COMPLETE
  All,
  Alter,
  CreateDatabase,
  CreateTable,
  DataLocationAccess,
  Delete,
  Drop,
  Insert,
  Select,
  Permission'
  #-}

instance FromText Permission where
  parser = (Permission' . mk) <$> takeText

instance ToText Permission where
  toText (Permission' ci) = original ci

instance Hashable Permission

instance NFData Permission

instance ToByteString Permission

instance ToQuery Permission

instance ToHeader Permission

instance ToJSON Permission where
  toJSON = toJSONText

instance FromJSON Permission where
  parseJSON = parseJSONText "Permission"
