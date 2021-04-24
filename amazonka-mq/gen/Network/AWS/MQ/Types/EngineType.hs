{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.EngineType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.EngineType
  ( EngineType
      ( ..,
        Activemq,
        Rabbitmq
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of broker engine. Note: Currently, Amazon MQ supports ActiveMQ and RabbitMQ.
data EngineType = EngineType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Activemq :: EngineType
pattern Activemq = EngineType' "ACTIVEMQ"

pattern Rabbitmq :: EngineType
pattern Rabbitmq = EngineType' "RABBITMQ"

{-# COMPLETE
  Activemq,
  Rabbitmq,
  EngineType'
  #-}

instance FromText EngineType where
  parser = (EngineType' . mk) <$> takeText

instance ToText EngineType where
  toText (EngineType' ci) = original ci

instance Hashable EngineType

instance NFData EngineType

instance ToByteString EngineType

instance ToQuery EngineType

instance ToHeader EngineType

instance ToJSON EngineType where
  toJSON = toJSONText

instance FromJSON EngineType where
  parseJSON = parseJSONText "EngineType"
