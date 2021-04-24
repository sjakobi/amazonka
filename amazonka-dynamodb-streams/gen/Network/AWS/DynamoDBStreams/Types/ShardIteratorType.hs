{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDBStreams.Types.ShardIteratorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDBStreams.Types.ShardIteratorType
  ( ShardIteratorType
      ( ..,
        AfterSequenceNumber,
        AtSequenceNumber,
        Latest,
        TrimHorizon
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShardIteratorType = ShardIteratorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AfterSequenceNumber :: ShardIteratorType
pattern AfterSequenceNumber = ShardIteratorType' "AFTER_SEQUENCE_NUMBER"

pattern AtSequenceNumber :: ShardIteratorType
pattern AtSequenceNumber = ShardIteratorType' "AT_SEQUENCE_NUMBER"

pattern Latest :: ShardIteratorType
pattern Latest = ShardIteratorType' "LATEST"

pattern TrimHorizon :: ShardIteratorType
pattern TrimHorizon = ShardIteratorType' "TRIM_HORIZON"

{-# COMPLETE
  AfterSequenceNumber,
  AtSequenceNumber,
  Latest,
  TrimHorizon,
  ShardIteratorType'
  #-}

instance FromText ShardIteratorType where
  parser = (ShardIteratorType' . mk) <$> takeText

instance ToText ShardIteratorType where
  toText (ShardIteratorType' ci) = original ci

instance Hashable ShardIteratorType

instance NFData ShardIteratorType

instance ToByteString ShardIteratorType

instance ToQuery ShardIteratorType

instance ToHeader ShardIteratorType

instance ToJSON ShardIteratorType where
  toJSON = toJSONText
