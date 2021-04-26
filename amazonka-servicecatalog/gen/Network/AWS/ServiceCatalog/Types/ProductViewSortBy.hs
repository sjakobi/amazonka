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
-- Module      : Network.AWS.ServiceCatalog.Types.ProductViewSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProductViewSortBy
  ( ProductViewSortBy
      ( ..,
        ProductViewSortByCreationDate,
        ProductViewSortByTitle,
        ProductViewSortByVersionCount
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProductViewSortBy = ProductViewSortBy'
  { fromProductViewSortBy ::
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

pattern ProductViewSortByCreationDate :: ProductViewSortBy
pattern ProductViewSortByCreationDate = ProductViewSortBy' "CreationDate"

pattern ProductViewSortByTitle :: ProductViewSortBy
pattern ProductViewSortByTitle = ProductViewSortBy' "Title"

pattern ProductViewSortByVersionCount :: ProductViewSortBy
pattern ProductViewSortByVersionCount = ProductViewSortBy' "VersionCount"

{-# COMPLETE
  ProductViewSortByCreationDate,
  ProductViewSortByTitle,
  ProductViewSortByVersionCount,
  ProductViewSortBy'
  #-}

instance Prelude.FromText ProductViewSortBy where
  parser = ProductViewSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProductViewSortBy where
  toText (ProductViewSortBy' x) = x

instance Prelude.Hashable ProductViewSortBy

instance Prelude.NFData ProductViewSortBy

instance Prelude.ToByteString ProductViewSortBy

instance Prelude.ToQuery ProductViewSortBy

instance Prelude.ToHeader ProductViewSortBy

instance Prelude.ToJSON ProductViewSortBy where
  toJSON = Prelude.toJSONText
