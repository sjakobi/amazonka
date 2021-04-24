{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.Permissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.Permissions
  ( Permissions
      ( ..,
        POwner,
        PReadOnly,
        PReadWrite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Permissions = Permissions' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern POwner :: Permissions
pattern POwner = Permissions' "owner"

pattern PReadOnly :: Permissions
pattern PReadOnly = Permissions' "read-only"

pattern PReadWrite :: Permissions
pattern PReadWrite = Permissions' "read-write"

{-# COMPLETE
  POwner,
  PReadOnly,
  PReadWrite,
  Permissions'
  #-}

instance FromText Permissions where
  parser = (Permissions' . mk) <$> takeText

instance ToText Permissions where
  toText (Permissions' ci) = original ci

instance Hashable Permissions

instance NFData Permissions

instance ToByteString Permissions

instance ToQuery Permissions

instance ToHeader Permissions

instance ToJSON Permissions where
  toJSON = toJSONText

instance FromJSON Permissions where
  parseJSON = parseJSONText "Permissions"
