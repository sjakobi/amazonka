{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.ConsistencyLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.ConsistencyLevel
  ( ConsistencyLevel
      ( ..,
        Eventual,
        Serializable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConsistencyLevel = ConsistencyLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Eventual :: ConsistencyLevel
pattern Eventual = ConsistencyLevel' "EVENTUAL"

pattern Serializable :: ConsistencyLevel
pattern Serializable = ConsistencyLevel' "SERIALIZABLE"

{-# COMPLETE
  Eventual,
  Serializable,
  ConsistencyLevel'
  #-}

instance FromText ConsistencyLevel where
  parser = (ConsistencyLevel' . mk) <$> takeText

instance ToText ConsistencyLevel where
  toText (ConsistencyLevel' ci) = original ci

instance Hashable ConsistencyLevel

instance NFData ConsistencyLevel

instance ToByteString ConsistencyLevel

instance ToQuery ConsistencyLevel

instance ToHeader ConsistencyLevel

instance ToJSON ConsistencyLevel where
  toJSON = toJSONText
