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
-- Module      : Network.AWS.SageMaker.Types.ProductionVariantAcceleratorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProductionVariantAcceleratorType
  ( ProductionVariantAcceleratorType
      ( ..,
        ProductionVariantAcceleratorTypeMl_EIA1_Large,
        ProductionVariantAcceleratorTypeMl_EIA1_Medium,
        ProductionVariantAcceleratorTypeMl_EIA1_Xlarge,
        ProductionVariantAcceleratorTypeMl_EIA2_Large,
        ProductionVariantAcceleratorTypeMl_EIA2_Medium,
        ProductionVariantAcceleratorTypeMl_EIA2_Xlarge
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProductionVariantAcceleratorType = ProductionVariantAcceleratorType'
  { fromProductionVariantAcceleratorType ::
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

pattern ProductionVariantAcceleratorTypeMl_EIA1_Large :: ProductionVariantAcceleratorType
pattern ProductionVariantAcceleratorTypeMl_EIA1_Large = ProductionVariantAcceleratorType' "ml.eia1.large"

pattern ProductionVariantAcceleratorTypeMl_EIA1_Medium :: ProductionVariantAcceleratorType
pattern ProductionVariantAcceleratorTypeMl_EIA1_Medium = ProductionVariantAcceleratorType' "ml.eia1.medium"

pattern ProductionVariantAcceleratorTypeMl_EIA1_Xlarge :: ProductionVariantAcceleratorType
pattern ProductionVariantAcceleratorTypeMl_EIA1_Xlarge = ProductionVariantAcceleratorType' "ml.eia1.xlarge"

pattern ProductionVariantAcceleratorTypeMl_EIA2_Large :: ProductionVariantAcceleratorType
pattern ProductionVariantAcceleratorTypeMl_EIA2_Large = ProductionVariantAcceleratorType' "ml.eia2.large"

pattern ProductionVariantAcceleratorTypeMl_EIA2_Medium :: ProductionVariantAcceleratorType
pattern ProductionVariantAcceleratorTypeMl_EIA2_Medium = ProductionVariantAcceleratorType' "ml.eia2.medium"

pattern ProductionVariantAcceleratorTypeMl_EIA2_Xlarge :: ProductionVariantAcceleratorType
pattern ProductionVariantAcceleratorTypeMl_EIA2_Xlarge = ProductionVariantAcceleratorType' "ml.eia2.xlarge"

{-# COMPLETE
  ProductionVariantAcceleratorTypeMl_EIA1_Large,
  ProductionVariantAcceleratorTypeMl_EIA1_Medium,
  ProductionVariantAcceleratorTypeMl_EIA1_Xlarge,
  ProductionVariantAcceleratorTypeMl_EIA2_Large,
  ProductionVariantAcceleratorTypeMl_EIA2_Medium,
  ProductionVariantAcceleratorTypeMl_EIA2_Xlarge,
  ProductionVariantAcceleratorType'
  #-}

instance Prelude.FromText ProductionVariantAcceleratorType where
  parser = ProductionVariantAcceleratorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProductionVariantAcceleratorType where
  toText (ProductionVariantAcceleratorType' x) = x

instance Prelude.Hashable ProductionVariantAcceleratorType

instance Prelude.NFData ProductionVariantAcceleratorType

instance Prelude.ToByteString ProductionVariantAcceleratorType

instance Prelude.ToQuery ProductionVariantAcceleratorType

instance Prelude.ToHeader ProductionVariantAcceleratorType

instance Prelude.ToJSON ProductionVariantAcceleratorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProductionVariantAcceleratorType where
  parseJSON = Prelude.parseJSONText "ProductionVariantAcceleratorType"
