{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Auto,
        Linear,
        Logarithmic,
        ReverseLogarithmic
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HyperParameterScalingType
  = HyperParameterScalingType'
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

pattern Auto :: HyperParameterScalingType
pattern Auto = HyperParameterScalingType' "Auto"

pattern Linear :: HyperParameterScalingType
pattern Linear = HyperParameterScalingType' "Linear"

pattern Logarithmic :: HyperParameterScalingType
pattern Logarithmic = HyperParameterScalingType' "Logarithmic"

pattern ReverseLogarithmic :: HyperParameterScalingType
pattern ReverseLogarithmic = HyperParameterScalingType' "ReverseLogarithmic"

{-# COMPLETE
  Auto,
  Linear,
  Logarithmic,
  ReverseLogarithmic,
  HyperParameterScalingType'
  #-}

instance FromText HyperParameterScalingType where
  parser = (HyperParameterScalingType' . mk) <$> takeText

instance ToText HyperParameterScalingType where
  toText (HyperParameterScalingType' ci) = original ci

instance Hashable HyperParameterScalingType

instance NFData HyperParameterScalingType

instance ToByteString HyperParameterScalingType

instance ToQuery HyperParameterScalingType

instance ToHeader HyperParameterScalingType

instance ToJSON HyperParameterScalingType where
  toJSON = toJSONText

instance FromJSON HyperParameterScalingType where
  parseJSON = parseJSONText "HyperParameterScalingType"
