{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.PrincipalType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.PrincipalType
  ( PrincipalType
      ( ..,
        Anonymous,
        Group,
        Invite,
        Organization,
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

pattern Anonymous :: PrincipalType
pattern Anonymous = PrincipalType' "ANONYMOUS"

pattern Group :: PrincipalType
pattern Group = PrincipalType' "GROUP"

pattern Invite :: PrincipalType
pattern Invite = PrincipalType' "INVITE"

pattern Organization :: PrincipalType
pattern Organization = PrincipalType' "ORGANIZATION"

pattern User :: PrincipalType
pattern User = PrincipalType' "USER"

{-# COMPLETE
  Anonymous,
  Group,
  Invite,
  Organization,
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
