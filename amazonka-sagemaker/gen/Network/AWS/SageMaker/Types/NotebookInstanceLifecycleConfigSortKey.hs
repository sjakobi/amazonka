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
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortKey
  ( NotebookInstanceLifecycleConfigSortKey
      ( ..,
        NotebookInstanceLifecycleConfigSortKeyCreationTime,
        NotebookInstanceLifecycleConfigSortKeyLastModifiedTime,
        NotebookInstanceLifecycleConfigSortKeyName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookInstanceLifecycleConfigSortKey = NotebookInstanceLifecycleConfigSortKey'
  { fromNotebookInstanceLifecycleConfigSortKey ::
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

pattern NotebookInstanceLifecycleConfigSortKeyCreationTime :: NotebookInstanceLifecycleConfigSortKey
pattern NotebookInstanceLifecycleConfigSortKeyCreationTime = NotebookInstanceLifecycleConfigSortKey' "CreationTime"

pattern NotebookInstanceLifecycleConfigSortKeyLastModifiedTime :: NotebookInstanceLifecycleConfigSortKey
pattern NotebookInstanceLifecycleConfigSortKeyLastModifiedTime = NotebookInstanceLifecycleConfigSortKey' "LastModifiedTime"

pattern NotebookInstanceLifecycleConfigSortKeyName :: NotebookInstanceLifecycleConfigSortKey
pattern NotebookInstanceLifecycleConfigSortKeyName = NotebookInstanceLifecycleConfigSortKey' "Name"

{-# COMPLETE
  NotebookInstanceLifecycleConfigSortKeyCreationTime,
  NotebookInstanceLifecycleConfigSortKeyLastModifiedTime,
  NotebookInstanceLifecycleConfigSortKeyName,
  NotebookInstanceLifecycleConfigSortKey'
  #-}

instance Prelude.FromText NotebookInstanceLifecycleConfigSortKey where
  parser = NotebookInstanceLifecycleConfigSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookInstanceLifecycleConfigSortKey where
  toText (NotebookInstanceLifecycleConfigSortKey' x) = x

instance Prelude.Hashable NotebookInstanceLifecycleConfigSortKey

instance Prelude.NFData NotebookInstanceLifecycleConfigSortKey

instance Prelude.ToByteString NotebookInstanceLifecycleConfigSortKey

instance Prelude.ToQuery NotebookInstanceLifecycleConfigSortKey

instance Prelude.ToHeader NotebookInstanceLifecycleConfigSortKey

instance Prelude.ToJSON NotebookInstanceLifecycleConfigSortKey where
  toJSON = Prelude.toJSONText
