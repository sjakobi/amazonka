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
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupSortOrder
  ( FeatureGroupSortOrder
      ( ..,
        FeatureGroupSortOrderAscending,
        FeatureGroupSortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FeatureGroupSortOrder = FeatureGroupSortOrder'
  { fromFeatureGroupSortOrder ::
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

pattern FeatureGroupSortOrderAscending :: FeatureGroupSortOrder
pattern FeatureGroupSortOrderAscending = FeatureGroupSortOrder' "Ascending"

pattern FeatureGroupSortOrderDescending :: FeatureGroupSortOrder
pattern FeatureGroupSortOrderDescending = FeatureGroupSortOrder' "Descending"

{-# COMPLETE
  FeatureGroupSortOrderAscending,
  FeatureGroupSortOrderDescending,
  FeatureGroupSortOrder'
  #-}

instance Prelude.FromText FeatureGroupSortOrder where
  parser = FeatureGroupSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText FeatureGroupSortOrder where
  toText (FeatureGroupSortOrder' x) = x

instance Prelude.Hashable FeatureGroupSortOrder

instance Prelude.NFData FeatureGroupSortOrder

instance Prelude.ToByteString FeatureGroupSortOrder

instance Prelude.ToQuery FeatureGroupSortOrder

instance Prelude.ToHeader FeatureGroupSortOrder

instance Prelude.ToJSON FeatureGroupSortOrder where
  toJSON = Prelude.toJSONText
