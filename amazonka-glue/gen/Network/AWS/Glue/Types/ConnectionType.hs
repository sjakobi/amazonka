{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ConnectionType
  ( ConnectionType
      ( ..,
        Custom,
        Jdbc,
        Kafka,
        Marketplace,
        Mongodb,
        Network,
        Sftp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionType = ConnectionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Custom :: ConnectionType
pattern Custom = ConnectionType' "CUSTOM"

pattern Jdbc :: ConnectionType
pattern Jdbc = ConnectionType' "JDBC"

pattern Kafka :: ConnectionType
pattern Kafka = ConnectionType' "KAFKA"

pattern Marketplace :: ConnectionType
pattern Marketplace = ConnectionType' "MARKETPLACE"

pattern Mongodb :: ConnectionType
pattern Mongodb = ConnectionType' "MONGODB"

pattern Network :: ConnectionType
pattern Network = ConnectionType' "NETWORK"

pattern Sftp :: ConnectionType
pattern Sftp = ConnectionType' "SFTP"

{-# COMPLETE
  Custom,
  Jdbc,
  Kafka,
  Marketplace,
  Mongodb,
  Network,
  Sftp,
  ConnectionType'
  #-}

instance FromText ConnectionType where
  parser = (ConnectionType' . mk) <$> takeText

instance ToText ConnectionType where
  toText (ConnectionType' ci) = original ci

instance Hashable ConnectionType

instance NFData ConnectionType

instance ToByteString ConnectionType

instance ToQuery ConnectionType

instance ToHeader ConnectionType

instance ToJSON ConnectionType where
  toJSON = toJSONText

instance FromJSON ConnectionType where
  parseJSON = parseJSONText "ConnectionType"
