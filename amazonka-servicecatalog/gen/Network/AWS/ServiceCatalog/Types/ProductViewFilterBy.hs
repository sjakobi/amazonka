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
-- Module      : Network.AWS.ServiceCatalog.Types.ProductViewFilterBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProductViewFilterBy
  ( ProductViewFilterBy
      ( ..,
        ProductViewFilterByFullTextSearch,
        ProductViewFilterByOwner,
        ProductViewFilterByProductType,
        ProductViewFilterBySourceProductId
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProductViewFilterBy = ProductViewFilterBy'
  { fromProductViewFilterBy ::
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

pattern ProductViewFilterByFullTextSearch :: ProductViewFilterBy
pattern ProductViewFilterByFullTextSearch = ProductViewFilterBy' "FullTextSearch"

pattern ProductViewFilterByOwner :: ProductViewFilterBy
pattern ProductViewFilterByOwner = ProductViewFilterBy' "Owner"

pattern ProductViewFilterByProductType :: ProductViewFilterBy
pattern ProductViewFilterByProductType = ProductViewFilterBy' "ProductType"

pattern ProductViewFilterBySourceProductId :: ProductViewFilterBy
pattern ProductViewFilterBySourceProductId = ProductViewFilterBy' "SourceProductId"

{-# COMPLETE
  ProductViewFilterByFullTextSearch,
  ProductViewFilterByOwner,
  ProductViewFilterByProductType,
  ProductViewFilterBySourceProductId,
  ProductViewFilterBy'
  #-}

instance Prelude.FromText ProductViewFilterBy where
  parser = ProductViewFilterBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProductViewFilterBy where
  toText (ProductViewFilterBy' x) = x

instance Prelude.Hashable ProductViewFilterBy

instance Prelude.NFData ProductViewFilterBy

instance Prelude.ToByteString ProductViewFilterBy

instance Prelude.ToQuery ProductViewFilterBy

instance Prelude.ToHeader ProductViewFilterBy

instance Prelude.ToJSON ProductViewFilterBy where
  toJSON = Prelude.toJSONText
