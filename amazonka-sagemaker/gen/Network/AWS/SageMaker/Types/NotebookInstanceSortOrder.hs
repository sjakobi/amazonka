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
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceSortOrder
  ( NotebookInstanceSortOrder
      ( ..,
        NotebookInstanceSortOrderAscending,
        NotebookInstanceSortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookInstanceSortOrder = NotebookInstanceSortOrder'
  { fromNotebookInstanceSortOrder ::
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

pattern NotebookInstanceSortOrderAscending :: NotebookInstanceSortOrder
pattern NotebookInstanceSortOrderAscending = NotebookInstanceSortOrder' "Ascending"

pattern NotebookInstanceSortOrderDescending :: NotebookInstanceSortOrder
pattern NotebookInstanceSortOrderDescending = NotebookInstanceSortOrder' "Descending"

{-# COMPLETE
  NotebookInstanceSortOrderAscending,
  NotebookInstanceSortOrderDescending,
  NotebookInstanceSortOrder'
  #-}

instance Prelude.FromText NotebookInstanceSortOrder where
  parser = NotebookInstanceSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookInstanceSortOrder where
  toText (NotebookInstanceSortOrder' x) = x

instance Prelude.Hashable NotebookInstanceSortOrder

instance Prelude.NFData NotebookInstanceSortOrder

instance Prelude.ToByteString NotebookInstanceSortOrder

instance Prelude.ToQuery NotebookInstanceSortOrder

instance Prelude.ToHeader NotebookInstanceSortOrder

instance Prelude.ToJSON NotebookInstanceSortOrder where
  toJSON = Prelude.toJSONText
