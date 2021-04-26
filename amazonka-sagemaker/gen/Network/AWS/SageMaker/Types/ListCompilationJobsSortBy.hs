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
-- Module      : Network.AWS.SageMaker.Types.ListCompilationJobsSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListCompilationJobsSortBy
  ( ListCompilationJobsSortBy
      ( ..,
        ListCompilationJobsSortByCreationTime,
        ListCompilationJobsSortByName,
        ListCompilationJobsSortByStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ListCompilationJobsSortBy = ListCompilationJobsSortBy'
  { fromListCompilationJobsSortBy ::
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

pattern ListCompilationJobsSortByCreationTime :: ListCompilationJobsSortBy
pattern ListCompilationJobsSortByCreationTime = ListCompilationJobsSortBy' "CreationTime"

pattern ListCompilationJobsSortByName :: ListCompilationJobsSortBy
pattern ListCompilationJobsSortByName = ListCompilationJobsSortBy' "Name"

pattern ListCompilationJobsSortByStatus' :: ListCompilationJobsSortBy
pattern ListCompilationJobsSortByStatus' = ListCompilationJobsSortBy' "Status"

{-# COMPLETE
  ListCompilationJobsSortByCreationTime,
  ListCompilationJobsSortByName,
  ListCompilationJobsSortByStatus',
  ListCompilationJobsSortBy'
  #-}

instance Prelude.FromText ListCompilationJobsSortBy where
  parser = ListCompilationJobsSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListCompilationJobsSortBy where
  toText (ListCompilationJobsSortBy' x) = x

instance Prelude.Hashable ListCompilationJobsSortBy

instance Prelude.NFData ListCompilationJobsSortBy

instance Prelude.ToByteString ListCompilationJobsSortBy

instance Prelude.ToQuery ListCompilationJobsSortBy

instance Prelude.ToHeader ListCompilationJobsSortBy

instance Prelude.ToJSON ListCompilationJobsSortBy where
  toJSON = Prelude.toJSONText
