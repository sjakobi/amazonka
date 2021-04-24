{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.MemberType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.MemberType
  ( MemberType
      ( ..,
        Group,
        User
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MemberType = MemberType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Group :: MemberType
pattern Group = MemberType' "GROUP"

pattern User :: MemberType
pattern User = MemberType' "USER"

{-# COMPLETE
  Group,
  User,
  MemberType'
  #-}

instance FromText MemberType where
  parser = (MemberType' . mk) <$> takeText

instance ToText MemberType where
  toText (MemberType' ci) = original ci

instance Hashable MemberType

instance NFData MemberType

instance ToByteString MemberType

instance ToQuery MemberType

instance ToHeader MemberType

instance FromJSON MemberType where
  parseJSON = parseJSONText "MemberType"
