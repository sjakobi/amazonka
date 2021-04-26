{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        BrokerStorageTypeEBS,
        BrokerStorageTypeEFS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The broker\'s storage type.
-- EFS is currently not Supported for RabbitMQ engine type.
newtype BrokerStorageType = BrokerStorageType'
  { fromBrokerStorageType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern BrokerStorageTypeEBS :: BrokerStorageType
pattern BrokerStorageTypeEBS = BrokerStorageType' "EBS"

pattern BrokerStorageTypeEFS :: BrokerStorageType
pattern BrokerStorageTypeEFS = BrokerStorageType' "EFS"

{-# COMPLETE
  BrokerStorageTypeEBS,
  BrokerStorageTypeEFS,
  BrokerStorageType'
  #-}

instance Prelude.FromText BrokerStorageType where
  parser = BrokerStorageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BrokerStorageType where
  toText (BrokerStorageType' x) = x

instance Prelude.Hashable BrokerStorageType

instance Prelude.NFData BrokerStorageType

instance Prelude.ToByteString BrokerStorageType

instance Prelude.ToQuery BrokerStorageType

instance Prelude.ToHeader BrokerStorageType

instance Prelude.ToJSON BrokerStorageType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BrokerStorageType where
  parseJSON = Prelude.parseJSONText "BrokerStorageType"
