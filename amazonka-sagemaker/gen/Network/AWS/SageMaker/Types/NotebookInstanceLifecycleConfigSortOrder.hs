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
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortOrder
  ( NotebookInstanceLifecycleConfigSortOrder
      ( ..,
        NotebookInstanceLifecycleConfigSortOrderAscending,
        NotebookInstanceLifecycleConfigSortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookInstanceLifecycleConfigSortOrder = NotebookInstanceLifecycleConfigSortOrder'
  { fromNotebookInstanceLifecycleConfigSortOrder ::
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

pattern NotebookInstanceLifecycleConfigSortOrderAscending :: NotebookInstanceLifecycleConfigSortOrder
pattern NotebookInstanceLifecycleConfigSortOrderAscending = NotebookInstanceLifecycleConfigSortOrder' "Ascending"

pattern NotebookInstanceLifecycleConfigSortOrderDescending :: NotebookInstanceLifecycleConfigSortOrder
pattern NotebookInstanceLifecycleConfigSortOrderDescending = NotebookInstanceLifecycleConfigSortOrder' "Descending"

{-# COMPLETE
  NotebookInstanceLifecycleConfigSortOrderAscending,
  NotebookInstanceLifecycleConfigSortOrderDescending,
  NotebookInstanceLifecycleConfigSortOrder'
  #-}

instance Prelude.FromText NotebookInstanceLifecycleConfigSortOrder where
  parser = NotebookInstanceLifecycleConfigSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookInstanceLifecycleConfigSortOrder where
  toText (NotebookInstanceLifecycleConfigSortOrder' x) = x

instance Prelude.Hashable NotebookInstanceLifecycleConfigSortOrder

instance Prelude.NFData NotebookInstanceLifecycleConfigSortOrder

instance Prelude.ToByteString NotebookInstanceLifecycleConfigSortOrder

instance Prelude.ToQuery NotebookInstanceLifecycleConfigSortOrder

instance Prelude.ToHeader NotebookInstanceLifecycleConfigSortOrder

instance Prelude.ToJSON NotebookInstanceLifecycleConfigSortOrder where
  toJSON = Prelude.toJSONText
