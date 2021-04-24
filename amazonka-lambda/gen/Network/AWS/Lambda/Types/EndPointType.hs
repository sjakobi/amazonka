{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EndPointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EndPointType
  ( EndPointType
      ( ..,
        KafkaBootstrapServers
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EndPointType = EndPointType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern KafkaBootstrapServers :: EndPointType
pattern KafkaBootstrapServers = EndPointType' "KAFKA_BOOTSTRAP_SERVERS"

{-# COMPLETE
  KafkaBootstrapServers,
  EndPointType'
  #-}

instance FromText EndPointType where
  parser = (EndPointType' . mk) <$> takeText

instance ToText EndPointType where
  toText (EndPointType' ci) = original ci

instance Hashable EndPointType

instance NFData EndPointType

instance ToByteString EndPointType

instance ToQuery EndPointType

instance ToHeader EndPointType

instance ToJSON EndPointType where
  toJSON = toJSONText

instance FromJSON EndPointType where
  parseJSON = parseJSONText "EndPointType"
