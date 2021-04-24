{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.Types.ShardFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.ShardFilterType
  ( ShardFilterType
      ( ..,
        SFTAfterShardId,
        SFTAtLatest,
        SFTAtTimestamp,
        SFTAtTrimHorizon,
        SFTFromTimestamp,
        SFTFromTrimHorizon
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShardFilterType = ShardFilterType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SFTAfterShardId :: ShardFilterType
pattern SFTAfterShardId = ShardFilterType' "AFTER_SHARD_ID"

pattern SFTAtLatest :: ShardFilterType
pattern SFTAtLatest = ShardFilterType' "AT_LATEST"

pattern SFTAtTimestamp :: ShardFilterType
pattern SFTAtTimestamp = ShardFilterType' "AT_TIMESTAMP"

pattern SFTAtTrimHorizon :: ShardFilterType
pattern SFTAtTrimHorizon = ShardFilterType' "AT_TRIM_HORIZON"

pattern SFTFromTimestamp :: ShardFilterType
pattern SFTFromTimestamp = ShardFilterType' "FROM_TIMESTAMP"

pattern SFTFromTrimHorizon :: ShardFilterType
pattern SFTFromTrimHorizon = ShardFilterType' "FROM_TRIM_HORIZON"

{-# COMPLETE
  SFTAfterShardId,
  SFTAtLatest,
  SFTAtTimestamp,
  SFTAtTrimHorizon,
  SFTFromTimestamp,
  SFTFromTrimHorizon,
  ShardFilterType'
  #-}

instance FromText ShardFilterType where
  parser = (ShardFilterType' . mk) <$> takeText

instance ToText ShardFilterType where
  toText (ShardFilterType' ci) = original ci

instance Hashable ShardFilterType

instance NFData ShardFilterType

instance ToByteString ShardFilterType

instance ToQuery ShardFilterType

instance ToHeader ShardFilterType

instance ToJSON ShardFilterType where
  toJSON = toJSONText
