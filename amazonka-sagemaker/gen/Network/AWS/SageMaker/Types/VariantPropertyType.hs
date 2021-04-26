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
-- Module      : Network.AWS.SageMaker.Types.VariantPropertyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.VariantPropertyType
  ( VariantPropertyType
      ( ..,
        VariantPropertyTypeDataCaptureConfig,
        VariantPropertyTypeDesiredInstanceCount,
        VariantPropertyTypeDesiredWeight
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VariantPropertyType = VariantPropertyType'
  { fromVariantPropertyType ::
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

pattern VariantPropertyTypeDataCaptureConfig :: VariantPropertyType
pattern VariantPropertyTypeDataCaptureConfig = VariantPropertyType' "DataCaptureConfig"

pattern VariantPropertyTypeDesiredInstanceCount :: VariantPropertyType
pattern VariantPropertyTypeDesiredInstanceCount = VariantPropertyType' "DesiredInstanceCount"

pattern VariantPropertyTypeDesiredWeight :: VariantPropertyType
pattern VariantPropertyTypeDesiredWeight = VariantPropertyType' "DesiredWeight"

{-# COMPLETE
  VariantPropertyTypeDataCaptureConfig,
  VariantPropertyTypeDesiredInstanceCount,
  VariantPropertyTypeDesiredWeight,
  VariantPropertyType'
  #-}

instance Prelude.FromText VariantPropertyType where
  parser = VariantPropertyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VariantPropertyType where
  toText (VariantPropertyType' x) = x

instance Prelude.Hashable VariantPropertyType

instance Prelude.NFData VariantPropertyType

instance Prelude.ToByteString VariantPropertyType

instance Prelude.ToQuery VariantPropertyType

instance Prelude.ToHeader VariantPropertyType

instance Prelude.ToJSON VariantPropertyType where
  toJSON = Prelude.toJSONText
