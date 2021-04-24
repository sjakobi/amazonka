{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        PVATMl_EIA1_Large,
        PVATMl_EIA1_Medium,
        PVATMl_EIA1_XLarge,
        PVATMl_EIA2_Large,
        PVATMl_EIA2_Medium,
        PVATMl_EIA2_XLarge
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProductionVariantAcceleratorType
  = ProductionVariantAcceleratorType'
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

pattern PVATMl_EIA1_Large :: ProductionVariantAcceleratorType
pattern PVATMl_EIA1_Large = ProductionVariantAcceleratorType' "ml.eia1.large"

pattern PVATMl_EIA1_Medium :: ProductionVariantAcceleratorType
pattern PVATMl_EIA1_Medium = ProductionVariantAcceleratorType' "ml.eia1.medium"

pattern PVATMl_EIA1_XLarge :: ProductionVariantAcceleratorType
pattern PVATMl_EIA1_XLarge = ProductionVariantAcceleratorType' "ml.eia1.xlarge"

pattern PVATMl_EIA2_Large :: ProductionVariantAcceleratorType
pattern PVATMl_EIA2_Large = ProductionVariantAcceleratorType' "ml.eia2.large"

pattern PVATMl_EIA2_Medium :: ProductionVariantAcceleratorType
pattern PVATMl_EIA2_Medium = ProductionVariantAcceleratorType' "ml.eia2.medium"

pattern PVATMl_EIA2_XLarge :: ProductionVariantAcceleratorType
pattern PVATMl_EIA2_XLarge = ProductionVariantAcceleratorType' "ml.eia2.xlarge"

{-# COMPLETE
  PVATMl_EIA1_Large,
  PVATMl_EIA1_Medium,
  PVATMl_EIA1_XLarge,
  PVATMl_EIA2_Large,
  PVATMl_EIA2_Medium,
  PVATMl_EIA2_XLarge,
  ProductionVariantAcceleratorType'
  #-}

instance FromText ProductionVariantAcceleratorType where
  parser = (ProductionVariantAcceleratorType' . mk) <$> takeText

instance ToText ProductionVariantAcceleratorType where
  toText (ProductionVariantAcceleratorType' ci) = original ci

instance Hashable ProductionVariantAcceleratorType

instance NFData ProductionVariantAcceleratorType

instance ToByteString ProductionVariantAcceleratorType

instance ToQuery ProductionVariantAcceleratorType

instance ToHeader ProductionVariantAcceleratorType

instance ToJSON ProductionVariantAcceleratorType where
  toJSON = toJSONText

instance FromJSON ProductionVariantAcceleratorType where
  parseJSON = parseJSONText "ProductionVariantAcceleratorType"
