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
-- Module      : Network.AWS.SageMaker.Types.SortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortOrder
  ( SortOrder
      ( ..,
        SortOrderAscending,
        SortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortOrder = SortOrder'
  { fromSortOrder ::
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

pattern SortOrderAscending :: SortOrder
pattern SortOrderAscending = SortOrder' "Ascending"

pattern SortOrderDescending :: SortOrder
pattern SortOrderDescending = SortOrder' "Descending"

{-# COMPLETE
  SortOrderAscending,
  SortOrderDescending,
  SortOrder'
  #-}

instance Prelude.FromText SortOrder where
  parser = SortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortOrder where
  toText (SortOrder' x) = x

instance Prelude.Hashable SortOrder

instance Prelude.NFData SortOrder

instance Prelude.ToByteString SortOrder

instance Prelude.ToQuery SortOrder

instance Prelude.ToHeader SortOrder

instance Prelude.ToJSON SortOrder where
  toJSON = Prelude.toJSONText
