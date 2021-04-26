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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy
  ( ProvisionedProductViewFilterBy
      ( ..,
        ProvisionedProductViewFilterBySearchQuery
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisionedProductViewFilterBy = ProvisionedProductViewFilterBy'
  { fromProvisionedProductViewFilterBy ::
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

pattern ProvisionedProductViewFilterBySearchQuery :: ProvisionedProductViewFilterBy
pattern ProvisionedProductViewFilterBySearchQuery = ProvisionedProductViewFilterBy' "SearchQuery"

{-# COMPLETE
  ProvisionedProductViewFilterBySearchQuery,
  ProvisionedProductViewFilterBy'
  #-}

instance Prelude.FromText ProvisionedProductViewFilterBy where
  parser = ProvisionedProductViewFilterBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisionedProductViewFilterBy where
  toText (ProvisionedProductViewFilterBy' x) = x

instance Prelude.Hashable ProvisionedProductViewFilterBy

instance Prelude.NFData ProvisionedProductViewFilterBy

instance Prelude.ToByteString ProvisionedProductViewFilterBy

instance Prelude.ToQuery ProvisionedProductViewFilterBy

instance Prelude.ToHeader ProvisionedProductViewFilterBy

instance Prelude.ToJSON ProvisionedProductViewFilterBy where
  toJSON = Prelude.toJSONText
