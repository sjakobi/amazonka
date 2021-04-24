{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.AuthTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.AuthTypeValue
  ( AuthTypeValue
      ( ..,
        NO,
        Password
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthTypeValue = AuthTypeValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NO :: AuthTypeValue
pattern NO = AuthTypeValue' "no"

pattern Password :: AuthTypeValue
pattern Password = AuthTypeValue' "password"

{-# COMPLETE
  NO,
  Password,
  AuthTypeValue'
  #-}

instance FromText AuthTypeValue where
  parser = (AuthTypeValue' . mk) <$> takeText

instance ToText AuthTypeValue where
  toText (AuthTypeValue' ci) = original ci

instance Hashable AuthTypeValue

instance NFData AuthTypeValue

instance ToByteString AuthTypeValue

instance ToQuery AuthTypeValue

instance ToHeader AuthTypeValue

instance ToJSON AuthTypeValue where
  toJSON = toJSONText

instance FromJSON AuthTypeValue where
  parseJSON = parseJSONText "AuthTypeValue"
