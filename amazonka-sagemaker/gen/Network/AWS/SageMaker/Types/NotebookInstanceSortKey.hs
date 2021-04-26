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
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceSortKey
  ( NotebookInstanceSortKey
      ( ..,
        NotebookInstanceSortKeyCreationTime,
        NotebookInstanceSortKeyName,
        NotebookInstanceSortKeyStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookInstanceSortKey = NotebookInstanceSortKey'
  { fromNotebookInstanceSortKey ::
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

pattern NotebookInstanceSortKeyCreationTime :: NotebookInstanceSortKey
pattern NotebookInstanceSortKeyCreationTime = NotebookInstanceSortKey' "CreationTime"

pattern NotebookInstanceSortKeyName :: NotebookInstanceSortKey
pattern NotebookInstanceSortKeyName = NotebookInstanceSortKey' "Name"

pattern NotebookInstanceSortKeyStatus' :: NotebookInstanceSortKey
pattern NotebookInstanceSortKeyStatus' = NotebookInstanceSortKey' "Status"

{-# COMPLETE
  NotebookInstanceSortKeyCreationTime,
  NotebookInstanceSortKeyName,
  NotebookInstanceSortKeyStatus',
  NotebookInstanceSortKey'
  #-}

instance Prelude.FromText NotebookInstanceSortKey where
  parser = NotebookInstanceSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookInstanceSortKey where
  toText (NotebookInstanceSortKey' x) = x

instance Prelude.Hashable NotebookInstanceSortKey

instance Prelude.NFData NotebookInstanceSortKey

instance Prelude.ToByteString NotebookInstanceSortKey

instance Prelude.ToQuery NotebookInstanceSortKey

instance Prelude.ToHeader NotebookInstanceSortKey

instance Prelude.ToJSON NotebookInstanceSortKey where
  toJSON = Prelude.toJSONText
