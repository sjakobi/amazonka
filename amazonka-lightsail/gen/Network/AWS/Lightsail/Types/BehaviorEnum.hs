{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.BehaviorEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.BehaviorEnum
  ( BehaviorEnum
      ( ..,
        Cache,
        DontCache
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BehaviorEnum = BehaviorEnum' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cache :: BehaviorEnum
pattern Cache = BehaviorEnum' "cache"

pattern DontCache :: BehaviorEnum
pattern DontCache = BehaviorEnum' "dont-cache"

{-# COMPLETE
  Cache,
  DontCache,
  BehaviorEnum'
  #-}

instance FromText BehaviorEnum where
  parser = (BehaviorEnum' . mk) <$> takeText

instance ToText BehaviorEnum where
  toText (BehaviorEnum' ci) = original ci

instance Hashable BehaviorEnum

instance NFData BehaviorEnum

instance ToByteString BehaviorEnum

instance ToQuery BehaviorEnum

instance ToHeader BehaviorEnum

instance ToJSON BehaviorEnum where
  toJSON = toJSONText

instance FromJSON BehaviorEnum where
  parseJSON = parseJSONText "BehaviorEnum"
