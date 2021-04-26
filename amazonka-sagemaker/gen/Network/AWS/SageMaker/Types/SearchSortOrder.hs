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
-- Module      : Network.AWS.SageMaker.Types.SearchSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SearchSortOrder
  ( SearchSortOrder
      ( ..,
        SearchSortOrderAscending,
        SearchSortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SearchSortOrder = SearchSortOrder'
  { fromSearchSortOrder ::
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

pattern SearchSortOrderAscending :: SearchSortOrder
pattern SearchSortOrderAscending = SearchSortOrder' "Ascending"

pattern SearchSortOrderDescending :: SearchSortOrder
pattern SearchSortOrderDescending = SearchSortOrder' "Descending"

{-# COMPLETE
  SearchSortOrderAscending,
  SearchSortOrderDescending,
  SearchSortOrder'
  #-}

instance Prelude.FromText SearchSortOrder where
  parser = SearchSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText SearchSortOrder where
  toText (SearchSortOrder' x) = x

instance Prelude.Hashable SearchSortOrder

instance Prelude.NFData SearchSortOrder

instance Prelude.ToByteString SearchSortOrder

instance Prelude.ToQuery SearchSortOrder

instance Prelude.ToHeader SearchSortOrder

instance Prelude.ToJSON SearchSortOrder where
  toJSON = Prelude.toJSONText
