{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FullTextSearch,
        Owner,
        ProductType,
        SourceProductId
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProductViewFilterBy
  = ProductViewFilterBy'
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

pattern FullTextSearch :: ProductViewFilterBy
pattern FullTextSearch = ProductViewFilterBy' "FullTextSearch"

pattern Owner :: ProductViewFilterBy
pattern Owner = ProductViewFilterBy' "Owner"

pattern ProductType :: ProductViewFilterBy
pattern ProductType = ProductViewFilterBy' "ProductType"

pattern SourceProductId :: ProductViewFilterBy
pattern SourceProductId = ProductViewFilterBy' "SourceProductId"

{-# COMPLETE
  FullTextSearch,
  Owner,
  ProductType,
  SourceProductId,
  ProductViewFilterBy'
  #-}

instance FromText ProductViewFilterBy where
  parser = (ProductViewFilterBy' . mk) <$> takeText

instance ToText ProductViewFilterBy where
  toText (ProductViewFilterBy' ci) = original ci

instance Hashable ProductViewFilterBy

instance NFData ProductViewFilterBy

instance ToByteString ProductViewFilterBy

instance ToQuery ProductViewFilterBy

instance ToHeader ProductViewFilterBy

instance ToJSON ProductViewFilterBy where
  toJSON = toJSONText
