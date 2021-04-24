{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy
  ( ProvisionedProductViewFilterBy
      ( ..,
        SearchQuery
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProvisionedProductViewFilterBy
  = ProvisionedProductViewFilterBy'
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

pattern SearchQuery :: ProvisionedProductViewFilterBy
pattern SearchQuery = ProvisionedProductViewFilterBy' "SearchQuery"

{-# COMPLETE
  SearchQuery,
  ProvisionedProductViewFilterBy'
  #-}

instance FromText ProvisionedProductViewFilterBy where
  parser = (ProvisionedProductViewFilterBy' . mk) <$> takeText

instance ToText ProvisionedProductViewFilterBy where
  toText (ProvisionedProductViewFilterBy' ci) = original ci

instance Hashable ProvisionedProductViewFilterBy

instance NFData ProvisionedProductViewFilterBy

instance ToByteString ProvisionedProductViewFilterBy

instance ToQuery ProvisionedProductViewFilterBy

instance ToHeader ProvisionedProductViewFilterBy

instance ToJSON ProvisionedProductViewFilterBy where
  toJSON = toJSONText
