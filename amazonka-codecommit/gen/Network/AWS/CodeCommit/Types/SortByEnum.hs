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
-- Module      : Network.AWS.CodeCommit.Types.SortByEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.SortByEnum
  ( SortByEnum
      ( ..,
        SortByEnumLastModifiedDate,
        SortByEnumRepositoryName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortByEnum = SortByEnum'
  { fromSortByEnum ::
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

pattern SortByEnumLastModifiedDate :: SortByEnum
pattern SortByEnumLastModifiedDate = SortByEnum' "lastModifiedDate"

pattern SortByEnumRepositoryName :: SortByEnum
pattern SortByEnumRepositoryName = SortByEnum' "repositoryName"

{-# COMPLETE
  SortByEnumLastModifiedDate,
  SortByEnumRepositoryName,
  SortByEnum'
  #-}

instance Prelude.FromText SortByEnum where
  parser = SortByEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortByEnum where
  toText (SortByEnum' x) = x

instance Prelude.Hashable SortByEnum

instance Prelude.NFData SortByEnum

instance Prelude.ToByteString SortByEnum

instance Prelude.ToQuery SortByEnum

instance Prelude.ToHeader SortByEnum

instance Prelude.ToJSON SortByEnum where
  toJSON = Prelude.toJSONText
