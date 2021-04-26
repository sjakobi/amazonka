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
-- Module      : Network.AWS.MachineLearning.Types.SortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.SortOrder
  ( SortOrder
      ( ..,
        SortOrderAsc,
        SortOrderDsc
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The sort order specified in a listing condition. Possible values include
-- the following:
--
-- -   @asc@ - Present the information in ascending order (from A-Z).
-- -   @dsc@ - Present the information in descending order (from Z-A).
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

pattern SortOrderAsc :: SortOrder
pattern SortOrderAsc = SortOrder' "asc"

pattern SortOrderDsc :: SortOrder
pattern SortOrderDsc = SortOrder' "dsc"

{-# COMPLETE
  SortOrderAsc,
  SortOrderDsc,
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
