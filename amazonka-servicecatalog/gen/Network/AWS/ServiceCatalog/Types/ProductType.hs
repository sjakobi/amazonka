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
-- Module      : Network.AWS.ServiceCatalog.Types.ProductType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProductType
  ( ProductType
      ( ..,
        ProductTypeCLOUDFORMATIONTEMPLATE,
        ProductTypeMARKETPLACE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProductType = ProductType'
  { fromProductType ::
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

pattern ProductTypeCLOUDFORMATIONTEMPLATE :: ProductType
pattern ProductTypeCLOUDFORMATIONTEMPLATE = ProductType' "CLOUD_FORMATION_TEMPLATE"

pattern ProductTypeMARKETPLACE :: ProductType
pattern ProductTypeMARKETPLACE = ProductType' "MARKETPLACE"

{-# COMPLETE
  ProductTypeCLOUDFORMATIONTEMPLATE,
  ProductTypeMARKETPLACE,
  ProductType'
  #-}

instance Prelude.FromText ProductType where
  parser = ProductType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProductType where
  toText (ProductType' x) = x

instance Prelude.Hashable ProductType

instance Prelude.NFData ProductType

instance Prelude.ToByteString ProductType

instance Prelude.ToQuery ProductType

instance Prelude.ToHeader ProductType

instance Prelude.ToJSON ProductType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProductType where
  parseJSON = Prelude.parseJSONText "ProductType"
