{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.MemberPermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.MemberPermissions
  ( MemberPermissions
      ( ..,
        ReadOnly,
        ReadWrite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MemberPermissions = MemberPermissions' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ReadOnly :: MemberPermissions
pattern ReadOnly = MemberPermissions' "read-only"

pattern ReadWrite :: MemberPermissions
pattern ReadWrite = MemberPermissions' "read-write"

{-# COMPLETE
  ReadOnly,
  ReadWrite,
  MemberPermissions'
  #-}

instance FromText MemberPermissions where
  parser = (MemberPermissions' . mk) <$> takeText

instance ToText MemberPermissions where
  toText (MemberPermissions' ci) = original ci

instance Hashable MemberPermissions

instance NFData MemberPermissions

instance ToByteString MemberPermissions

instance ToQuery MemberPermissions

instance ToHeader MemberPermissions

instance ToJSON MemberPermissions where
  toJSON = toJSONText
