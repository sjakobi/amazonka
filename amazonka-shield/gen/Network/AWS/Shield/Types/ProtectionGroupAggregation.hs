{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.ProtectionGroupAggregation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProtectionGroupAggregation
  ( ProtectionGroupAggregation
      ( ..,
        Max,
        Mean,
        Sum
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProtectionGroupAggregation
  = ProtectionGroupAggregation'
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

pattern Max :: ProtectionGroupAggregation
pattern Max = ProtectionGroupAggregation' "MAX"

pattern Mean :: ProtectionGroupAggregation
pattern Mean = ProtectionGroupAggregation' "MEAN"

pattern Sum :: ProtectionGroupAggregation
pattern Sum = ProtectionGroupAggregation' "SUM"

{-# COMPLETE
  Max,
  Mean,
  Sum,
  ProtectionGroupAggregation'
  #-}

instance FromText ProtectionGroupAggregation where
  parser = (ProtectionGroupAggregation' . mk) <$> takeText

instance ToText ProtectionGroupAggregation where
  toText (ProtectionGroupAggregation' ci) = original ci

instance Hashable ProtectionGroupAggregation

instance NFData ProtectionGroupAggregation

instance ToByteString ProtectionGroupAggregation

instance ToQuery ProtectionGroupAggregation

instance ToHeader ProtectionGroupAggregation

instance ToJSON ProtectionGroupAggregation where
  toJSON = toJSONText

instance FromJSON ProtectionGroupAggregation where
  parseJSON = parseJSONText "ProtectionGroupAggregation"
