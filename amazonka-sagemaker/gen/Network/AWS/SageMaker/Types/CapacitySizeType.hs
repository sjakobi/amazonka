{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CapacitySizeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CapacitySizeType
  ( CapacitySizeType
      ( ..,
        CapacityPercent,
        InstanceCount
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CapacitySizeType = CapacitySizeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CapacityPercent :: CapacitySizeType
pattern CapacityPercent = CapacitySizeType' "CAPACITY_PERCENT"

pattern InstanceCount :: CapacitySizeType
pattern InstanceCount = CapacitySizeType' "INSTANCE_COUNT"

{-# COMPLETE
  CapacityPercent,
  InstanceCount,
  CapacitySizeType'
  #-}

instance FromText CapacitySizeType where
  parser = (CapacitySizeType' . mk) <$> takeText

instance ToText CapacitySizeType where
  toText (CapacitySizeType' ci) = original ci

instance Hashable CapacitySizeType

instance NFData CapacitySizeType

instance ToByteString CapacitySizeType

instance ToQuery CapacitySizeType

instance ToHeader CapacitySizeType

instance ToJSON CapacitySizeType where
  toJSON = toJSONText

instance FromJSON CapacitySizeType where
  parseJSON = parseJSONText "CapacitySizeType"
