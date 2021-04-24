{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EntityStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EntityStatusCode
  ( EntityStatusCode
      ( ..,
        Impaired,
        Unimpaired,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EntityStatusCode = EntityStatusCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Impaired :: EntityStatusCode
pattern Impaired = EntityStatusCode' "IMPAIRED"

pattern Unimpaired :: EntityStatusCode
pattern Unimpaired = EntityStatusCode' "UNIMPAIRED"

pattern Unknown :: EntityStatusCode
pattern Unknown = EntityStatusCode' "UNKNOWN"

{-# COMPLETE
  Impaired,
  Unimpaired,
  Unknown,
  EntityStatusCode'
  #-}

instance FromText EntityStatusCode where
  parser = (EntityStatusCode' . mk) <$> takeText

instance ToText EntityStatusCode where
  toText (EntityStatusCode' ci) = original ci

instance Hashable EntityStatusCode

instance NFData EntityStatusCode

instance ToByteString EntityStatusCode

instance ToQuery EntityStatusCode

instance ToHeader EntityStatusCode

instance ToJSON EntityStatusCode where
  toJSON = toJSONText

instance FromJSON EntityStatusCode where
  parseJSON = parseJSONText "EntityStatusCode"
