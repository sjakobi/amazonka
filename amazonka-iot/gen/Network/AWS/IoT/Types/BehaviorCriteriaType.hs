{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.BehaviorCriteriaType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.BehaviorCriteriaType
  ( BehaviorCriteriaType
      ( ..,
        MachineLearning,
        Static,
        Statistical
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BehaviorCriteriaType
  = BehaviorCriteriaType'
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

pattern MachineLearning :: BehaviorCriteriaType
pattern MachineLearning = BehaviorCriteriaType' "MACHINE_LEARNING"

pattern Static :: BehaviorCriteriaType
pattern Static = BehaviorCriteriaType' "STATIC"

pattern Statistical :: BehaviorCriteriaType
pattern Statistical = BehaviorCriteriaType' "STATISTICAL"

{-# COMPLETE
  MachineLearning,
  Static,
  Statistical,
  BehaviorCriteriaType'
  #-}

instance FromText BehaviorCriteriaType where
  parser = (BehaviorCriteriaType' . mk) <$> takeText

instance ToText BehaviorCriteriaType where
  toText (BehaviorCriteriaType' ci) = original ci

instance Hashable BehaviorCriteriaType

instance NFData BehaviorCriteriaType

instance ToByteString BehaviorCriteriaType

instance ToQuery BehaviorCriteriaType

instance ToHeader BehaviorCriteriaType

instance ToJSON BehaviorCriteriaType where
  toJSON = toJSONText
