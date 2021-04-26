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
-- Module      : Network.AWS.SageMaker.Types.FeatureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureType
  ( FeatureType
      ( ..,
        FeatureTypeFractional,
        FeatureTypeIntegral,
        FeatureTypeString
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FeatureType = FeatureType'
  { fromFeatureType ::
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

pattern FeatureTypeFractional :: FeatureType
pattern FeatureTypeFractional = FeatureType' "Fractional"

pattern FeatureTypeIntegral :: FeatureType
pattern FeatureTypeIntegral = FeatureType' "Integral"

pattern FeatureTypeString :: FeatureType
pattern FeatureTypeString = FeatureType' "String"

{-# COMPLETE
  FeatureTypeFractional,
  FeatureTypeIntegral,
  FeatureTypeString,
  FeatureType'
  #-}

instance Prelude.FromText FeatureType where
  parser = FeatureType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FeatureType where
  toText (FeatureType' x) = x

instance Prelude.Hashable FeatureType

instance Prelude.NFData FeatureType

instance Prelude.ToByteString FeatureType

instance Prelude.ToQuery FeatureType

instance Prelude.ToHeader FeatureType

instance Prelude.ToJSON FeatureType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FeatureType where
  parseJSON = Prelude.parseJSONText "FeatureType"
