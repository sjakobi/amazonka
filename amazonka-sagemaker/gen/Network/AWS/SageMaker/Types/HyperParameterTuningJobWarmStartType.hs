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
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobWarmStartType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobWarmStartType
  ( HyperParameterTuningJobWarmStartType
      ( ..,
        HyperParameterTuningJobWarmStartTypeIdenticalDataAndAlgorithm,
        HyperParameterTuningJobWarmStartTypeTransferLearning
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HyperParameterTuningJobWarmStartType = HyperParameterTuningJobWarmStartType'
  { fromHyperParameterTuningJobWarmStartType ::
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

pattern HyperParameterTuningJobWarmStartTypeIdenticalDataAndAlgorithm :: HyperParameterTuningJobWarmStartType
pattern HyperParameterTuningJobWarmStartTypeIdenticalDataAndAlgorithm = HyperParameterTuningJobWarmStartType' "IdenticalDataAndAlgorithm"

pattern HyperParameterTuningJobWarmStartTypeTransferLearning :: HyperParameterTuningJobWarmStartType
pattern HyperParameterTuningJobWarmStartTypeTransferLearning = HyperParameterTuningJobWarmStartType' "TransferLearning"

{-# COMPLETE
  HyperParameterTuningJobWarmStartTypeIdenticalDataAndAlgorithm,
  HyperParameterTuningJobWarmStartTypeTransferLearning,
  HyperParameterTuningJobWarmStartType'
  #-}

instance Prelude.FromText HyperParameterTuningJobWarmStartType where
  parser = HyperParameterTuningJobWarmStartType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HyperParameterTuningJobWarmStartType where
  toText (HyperParameterTuningJobWarmStartType' x) = x

instance Prelude.Hashable HyperParameterTuningJobWarmStartType

instance Prelude.NFData HyperParameterTuningJobWarmStartType

instance Prelude.ToByteString HyperParameterTuningJobWarmStartType

instance Prelude.ToQuery HyperParameterTuningJobWarmStartType

instance Prelude.ToHeader HyperParameterTuningJobWarmStartType

instance Prelude.ToJSON HyperParameterTuningJobWarmStartType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HyperParameterTuningJobWarmStartType where
  parseJSON = Prelude.parseJSONText "HyperParameterTuningJobWarmStartType"
