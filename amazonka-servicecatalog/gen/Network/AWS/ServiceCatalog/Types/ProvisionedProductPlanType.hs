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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType
  ( ProvisionedProductPlanType
      ( ..,
        ProvisionedProductPlanTypeCLOUDFORMATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisionedProductPlanType = ProvisionedProductPlanType'
  { fromProvisionedProductPlanType ::
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

pattern ProvisionedProductPlanTypeCLOUDFORMATION :: ProvisionedProductPlanType
pattern ProvisionedProductPlanTypeCLOUDFORMATION = ProvisionedProductPlanType' "CLOUDFORMATION"

{-# COMPLETE
  ProvisionedProductPlanTypeCLOUDFORMATION,
  ProvisionedProductPlanType'
  #-}

instance Prelude.FromText ProvisionedProductPlanType where
  parser = ProvisionedProductPlanType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisionedProductPlanType where
  toText (ProvisionedProductPlanType' x) = x

instance Prelude.Hashable ProvisionedProductPlanType

instance Prelude.NFData ProvisionedProductPlanType

instance Prelude.ToByteString ProvisionedProductPlanType

instance Prelude.ToQuery ProvisionedProductPlanType

instance Prelude.ToHeader ProvisionedProductPlanType

instance Prelude.ToJSON ProvisionedProductPlanType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProvisionedProductPlanType where
  parseJSON = Prelude.parseJSONText "ProvisionedProductPlanType"
