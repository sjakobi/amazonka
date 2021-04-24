{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.PrincipalType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.PrincipalType
  ( PrincipalType
      ( ..,
        Group,
        Role,
        User
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PrincipalType = PrincipalType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Group :: PrincipalType
pattern Group = PrincipalType' "GROUP"

pattern Role :: PrincipalType
pattern Role = PrincipalType' "ROLE"

pattern User :: PrincipalType
pattern User = PrincipalType' "USER"

{-# COMPLETE
  Group,
  Role,
  User,
  PrincipalType'
  #-}

instance FromText PrincipalType where
  parser = (PrincipalType' . mk) <$> takeText

instance ToText PrincipalType where
  toText (PrincipalType' ci) = original ci

instance Hashable PrincipalType

instance NFData PrincipalType

instance ToByteString PrincipalType

instance ToQuery PrincipalType

instance ToHeader PrincipalType

instance ToJSON PrincipalType where
  toJSON = toJSONText

instance FromJSON PrincipalType where
  parseJSON = parseJSONText "PrincipalType"
