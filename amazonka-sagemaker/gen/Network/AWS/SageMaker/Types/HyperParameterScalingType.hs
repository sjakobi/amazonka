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
-- Module      : Network.AWS.SageMaker.Types.HyperParameterScalingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterScalingType
  ( HyperParameterScalingType
      ( ..,
        HyperParameterScalingTypeAuto,
        HyperParameterScalingTypeLinear,
        HyperParameterScalingTypeLogarithmic,
        HyperParameterScalingTypeReverseLogarithmic
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HyperParameterScalingType = HyperParameterScalingType'
  { fromHyperParameterScalingType ::
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

pattern HyperParameterScalingTypeAuto :: HyperParameterScalingType
pattern HyperParameterScalingTypeAuto = HyperParameterScalingType' "Auto"

pattern HyperParameterScalingTypeLinear :: HyperParameterScalingType
pattern HyperParameterScalingTypeLinear = HyperParameterScalingType' "Linear"

pattern HyperParameterScalingTypeLogarithmic :: HyperParameterScalingType
pattern HyperParameterScalingTypeLogarithmic = HyperParameterScalingType' "Logarithmic"

pattern HyperParameterScalingTypeReverseLogarithmic :: HyperParameterScalingType
pattern HyperParameterScalingTypeReverseLogarithmic = HyperParameterScalingType' "ReverseLogarithmic"

{-# COMPLETE
  HyperParameterScalingTypeAuto,
  HyperParameterScalingTypeLinear,
  HyperParameterScalingTypeLogarithmic,
  HyperParameterScalingTypeReverseLogarithmic,
  HyperParameterScalingType'
  #-}

instance Prelude.FromText HyperParameterScalingType where
  parser = HyperParameterScalingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HyperParameterScalingType where
  toText (HyperParameterScalingType' x) = x

instance Prelude.Hashable HyperParameterScalingType

instance Prelude.NFData HyperParameterScalingType

instance Prelude.ToByteString HyperParameterScalingType

instance Prelude.ToQuery HyperParameterScalingType

instance Prelude.ToHeader HyperParameterScalingType

instance Prelude.ToJSON HyperParameterScalingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HyperParameterScalingType where
  parseJSON = Prelude.parseJSONText "HyperParameterScalingType"
