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
-- Module      : Network.AWS.EC2.Types.ProductCodeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ProductCodeValues
  ( ProductCodeValues
      ( ..,
        ProductCodeValuesDevpay,
        ProductCodeValuesMarketplace
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ProductCodeValues = ProductCodeValues'
  { fromProductCodeValues ::
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

pattern ProductCodeValuesDevpay :: ProductCodeValues
pattern ProductCodeValuesDevpay = ProductCodeValues' "devpay"

pattern ProductCodeValuesMarketplace :: ProductCodeValues
pattern ProductCodeValuesMarketplace = ProductCodeValues' "marketplace"

{-# COMPLETE
  ProductCodeValuesDevpay,
  ProductCodeValuesMarketplace,
  ProductCodeValues'
  #-}

instance Prelude.FromText ProductCodeValues where
  parser = ProductCodeValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProductCodeValues where
  toText (ProductCodeValues' x) = x

instance Prelude.Hashable ProductCodeValues

instance Prelude.NFData ProductCodeValues

instance Prelude.ToByteString ProductCodeValues

instance Prelude.ToQuery ProductCodeValues

instance Prelude.ToHeader ProductCodeValues

instance Prelude.FromXML ProductCodeValues where
  parseXML = Prelude.parseXMLText "ProductCodeValues"
