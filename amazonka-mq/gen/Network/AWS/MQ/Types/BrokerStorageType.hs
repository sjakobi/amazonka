{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.BrokerStorageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.BrokerStorageType
  ( BrokerStorageType
      ( ..,
        EBS,
        Efs
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | /Important:/ EFS is currently not Supported for RabbitMQ engine type.
data BrokerStorageType = BrokerStorageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EBS :: BrokerStorageType
pattern EBS = BrokerStorageType' "EBS"

pattern Efs :: BrokerStorageType
pattern Efs = BrokerStorageType' "EFS"

{-# COMPLETE
  EBS,
  Efs,
  BrokerStorageType'
  #-}

instance FromText BrokerStorageType where
  parser = (BrokerStorageType' . mk) <$> takeText

instance ToText BrokerStorageType where
  toText (BrokerStorageType' ci) = original ci

instance Hashable BrokerStorageType

instance NFData BrokerStorageType

instance ToByteString BrokerStorageType

instance ToQuery BrokerStorageType

instance ToHeader BrokerStorageType

instance ToJSON BrokerStorageType where
  toJSON = toJSONText

instance FromJSON BrokerStorageType where
  parseJSON = parseJSONText "BrokerStorageType"
