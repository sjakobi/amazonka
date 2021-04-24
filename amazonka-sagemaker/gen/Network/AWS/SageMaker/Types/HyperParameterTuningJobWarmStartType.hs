{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobWarmStartType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobWarmStartType
  ( HyperParameterTuningJobWarmStartType
      ( ..,
        IdenticalDataAndAlgorithm,
        TransferLearning
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HyperParameterTuningJobWarmStartType
  = HyperParameterTuningJobWarmStartType'
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

pattern IdenticalDataAndAlgorithm :: HyperParameterTuningJobWarmStartType
pattern IdenticalDataAndAlgorithm = HyperParameterTuningJobWarmStartType' "IdenticalDataAndAlgorithm"

pattern TransferLearning :: HyperParameterTuningJobWarmStartType
pattern TransferLearning = HyperParameterTuningJobWarmStartType' "TransferLearning"

{-# COMPLETE
  IdenticalDataAndAlgorithm,
  TransferLearning,
  HyperParameterTuningJobWarmStartType'
  #-}

instance FromText HyperParameterTuningJobWarmStartType where
  parser = (HyperParameterTuningJobWarmStartType' . mk) <$> takeText

instance ToText HyperParameterTuningJobWarmStartType where
  toText (HyperParameterTuningJobWarmStartType' ci) = original ci

instance Hashable HyperParameterTuningJobWarmStartType

instance NFData HyperParameterTuningJobWarmStartType

instance ToByteString HyperParameterTuningJobWarmStartType

instance ToQuery HyperParameterTuningJobWarmStartType

instance ToHeader HyperParameterTuningJobWarmStartType

instance ToJSON HyperParameterTuningJobWarmStartType where
  toJSON = toJSONText

instance FromJSON HyperParameterTuningJobWarmStartType where
  parseJSON = parseJSONText "HyperParameterTuningJobWarmStartType"
