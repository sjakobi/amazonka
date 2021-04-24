{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.AuthMechanismValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.AuthMechanismValue
  ( AuthMechanismValue
      ( ..,
        Default,
        MongodbCr,
        ScramSha1
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthMechanismValue
  = AuthMechanismValue'
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

pattern Default :: AuthMechanismValue
pattern Default = AuthMechanismValue' "default"

pattern MongodbCr :: AuthMechanismValue
pattern MongodbCr = AuthMechanismValue' "mongodb_cr"

pattern ScramSha1 :: AuthMechanismValue
pattern ScramSha1 = AuthMechanismValue' "scram_sha_1"

{-# COMPLETE
  Default,
  MongodbCr,
  ScramSha1,
  AuthMechanismValue'
  #-}

instance FromText AuthMechanismValue where
  parser = (AuthMechanismValue' . mk) <$> takeText

instance ToText AuthMechanismValue where
  toText (AuthMechanismValue' ci) = original ci

instance Hashable AuthMechanismValue

instance NFData AuthMechanismValue

instance ToByteString AuthMechanismValue

instance ToQuery AuthMechanismValue

instance ToHeader AuthMechanismValue

instance ToJSON AuthMechanismValue where
  toJSON = toJSONText

instance FromJSON AuthMechanismValue where
  parseJSON = parseJSONText "AuthMechanismValue"
