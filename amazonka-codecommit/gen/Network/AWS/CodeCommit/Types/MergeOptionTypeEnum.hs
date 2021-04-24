{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.MergeOptionTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.MergeOptionTypeEnum
  ( MergeOptionTypeEnum
      ( ..,
        FastForwardMerge,
        SquashMerge,
        ThreeWayMerge
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MergeOptionTypeEnum
  = MergeOptionTypeEnum'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FastForwardMerge :: MergeOptionTypeEnum
pattern FastForwardMerge = MergeOptionTypeEnum' "FAST_FORWARD_MERGE"

pattern SquashMerge :: MergeOptionTypeEnum
pattern SquashMerge = MergeOptionTypeEnum' "SQUASH_MERGE"

pattern ThreeWayMerge :: MergeOptionTypeEnum
pattern ThreeWayMerge = MergeOptionTypeEnum' "THREE_WAY_MERGE"

{-# COMPLETE
  FastForwardMerge,
  SquashMerge,
  ThreeWayMerge,
  MergeOptionTypeEnum'
  #-}

instance FromText MergeOptionTypeEnum where
  parser = (MergeOptionTypeEnum' . mk) <$> takeText

instance ToText MergeOptionTypeEnum where
  toText (MergeOptionTypeEnum' ci) = original ci

instance Hashable MergeOptionTypeEnum

instance NFData MergeOptionTypeEnum

instance ToByteString MergeOptionTypeEnum

instance ToQuery MergeOptionTypeEnum

instance ToHeader MergeOptionTypeEnum

instance ToJSON MergeOptionTypeEnum where
  toJSON = toJSONText

instance FromJSON MergeOptionTypeEnum where
  parseJSON = parseJSONText "MergeOptionTypeEnum"
