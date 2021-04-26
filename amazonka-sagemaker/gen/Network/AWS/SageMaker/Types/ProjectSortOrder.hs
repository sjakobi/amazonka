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
-- Module      : Network.AWS.SageMaker.Types.ProjectSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProjectSortOrder
  ( ProjectSortOrder
      ( ..,
        ProjectSortOrderAscending,
        ProjectSortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProjectSortOrder = ProjectSortOrder'
  { fromProjectSortOrder ::
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

pattern ProjectSortOrderAscending :: ProjectSortOrder
pattern ProjectSortOrderAscending = ProjectSortOrder' "Ascending"

pattern ProjectSortOrderDescending :: ProjectSortOrder
pattern ProjectSortOrderDescending = ProjectSortOrder' "Descending"

{-# COMPLETE
  ProjectSortOrderAscending,
  ProjectSortOrderDescending,
  ProjectSortOrder'
  #-}

instance Prelude.FromText ProjectSortOrder where
  parser = ProjectSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProjectSortOrder where
  toText (ProjectSortOrder' x) = x

instance Prelude.Hashable ProjectSortOrder

instance Prelude.NFData ProjectSortOrder

instance Prelude.ToByteString ProjectSortOrder

instance Prelude.ToQuery ProjectSortOrder

instance Prelude.ToHeader ProjectSortOrder

instance Prelude.ToJSON ProjectSortOrder where
  toJSON = Prelude.toJSONText
