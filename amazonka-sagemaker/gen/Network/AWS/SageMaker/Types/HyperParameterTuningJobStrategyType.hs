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
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobStrategyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobStrategyType
  ( HyperParameterTuningJobStrategyType
      ( ..,
        HyperParameterTuningJobStrategyTypeBayesian,
        HyperParameterTuningJobStrategyTypeRandom
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The strategy hyperparameter tuning uses to find the best combination of
-- hyperparameters for your model. Currently, the only supported value is
-- @Bayesian@.
newtype HyperParameterTuningJobStrategyType = HyperParameterTuningJobStrategyType'
  { fromHyperParameterTuningJobStrategyType ::
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

pattern HyperParameterTuningJobStrategyTypeBayesian :: HyperParameterTuningJobStrategyType
pattern HyperParameterTuningJobStrategyTypeBayesian = HyperParameterTuningJobStrategyType' "Bayesian"

pattern HyperParameterTuningJobStrategyTypeRandom :: HyperParameterTuningJobStrategyType
pattern HyperParameterTuningJobStrategyTypeRandom = HyperParameterTuningJobStrategyType' "Random"

{-# COMPLETE
  HyperParameterTuningJobStrategyTypeBayesian,
  HyperParameterTuningJobStrategyTypeRandom,
  HyperParameterTuningJobStrategyType'
  #-}

instance Prelude.FromText HyperParameterTuningJobStrategyType where
  parser = HyperParameterTuningJobStrategyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HyperParameterTuningJobStrategyType where
  toText (HyperParameterTuningJobStrategyType' x) = x

instance Prelude.Hashable HyperParameterTuningJobStrategyType

instance Prelude.NFData HyperParameterTuningJobStrategyType

instance Prelude.ToByteString HyperParameterTuningJobStrategyType

instance Prelude.ToQuery HyperParameterTuningJobStrategyType

instance Prelude.ToHeader HyperParameterTuningJobStrategyType

instance Prelude.ToJSON HyperParameterTuningJobStrategyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HyperParameterTuningJobStrategyType where
  parseJSON = Prelude.parseJSONText "HyperParameterTuningJobStrategyType"
