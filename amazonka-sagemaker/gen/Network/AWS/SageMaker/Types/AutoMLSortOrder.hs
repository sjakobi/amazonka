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
-- Module      : Network.AWS.SageMaker.Types.AutoMLSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLSortOrder
  ( AutoMLSortOrder
      ( ..,
        AutoMLSortOrderAscending,
        AutoMLSortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLSortOrder = AutoMLSortOrder'
  { fromAutoMLSortOrder ::
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

pattern AutoMLSortOrderAscending :: AutoMLSortOrder
pattern AutoMLSortOrderAscending = AutoMLSortOrder' "Ascending"

pattern AutoMLSortOrderDescending :: AutoMLSortOrder
pattern AutoMLSortOrderDescending = AutoMLSortOrder' "Descending"

{-# COMPLETE
  AutoMLSortOrderAscending,
  AutoMLSortOrderDescending,
  AutoMLSortOrder'
  #-}

instance Prelude.FromText AutoMLSortOrder where
  parser = AutoMLSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoMLSortOrder where
  toText (AutoMLSortOrder' x) = x

instance Prelude.Hashable AutoMLSortOrder

instance Prelude.NFData AutoMLSortOrder

instance Prelude.ToByteString AutoMLSortOrder

instance Prelude.ToQuery AutoMLSortOrder

instance Prelude.ToHeader AutoMLSortOrder

instance Prelude.ToJSON AutoMLSortOrder where
  toJSON = Prelude.toJSONText
