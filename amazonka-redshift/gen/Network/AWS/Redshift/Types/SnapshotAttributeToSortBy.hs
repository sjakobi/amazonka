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
-- Module      : Network.AWS.Redshift.Types.SnapshotAttributeToSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.SnapshotAttributeToSortBy
  ( SnapshotAttributeToSortBy
      ( ..,
        SnapshotAttributeToSortByCREATETIME,
        SnapshotAttributeToSortBySOURCETYPE,
        SnapshotAttributeToSortByTOTALSIZE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype SnapshotAttributeToSortBy = SnapshotAttributeToSortBy'
  { fromSnapshotAttributeToSortBy ::
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

pattern SnapshotAttributeToSortByCREATETIME :: SnapshotAttributeToSortBy
pattern SnapshotAttributeToSortByCREATETIME = SnapshotAttributeToSortBy' "CREATE_TIME"

pattern SnapshotAttributeToSortBySOURCETYPE :: SnapshotAttributeToSortBy
pattern SnapshotAttributeToSortBySOURCETYPE = SnapshotAttributeToSortBy' "SOURCE_TYPE"

pattern SnapshotAttributeToSortByTOTALSIZE :: SnapshotAttributeToSortBy
pattern SnapshotAttributeToSortByTOTALSIZE = SnapshotAttributeToSortBy' "TOTAL_SIZE"

{-# COMPLETE
  SnapshotAttributeToSortByCREATETIME,
  SnapshotAttributeToSortBySOURCETYPE,
  SnapshotAttributeToSortByTOTALSIZE,
  SnapshotAttributeToSortBy'
  #-}

instance Prelude.FromText SnapshotAttributeToSortBy where
  parser = SnapshotAttributeToSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SnapshotAttributeToSortBy where
  toText (SnapshotAttributeToSortBy' x) = x

instance Prelude.Hashable SnapshotAttributeToSortBy

instance Prelude.NFData SnapshotAttributeToSortBy

instance Prelude.ToByteString SnapshotAttributeToSortBy

instance Prelude.ToQuery SnapshotAttributeToSortBy

instance Prelude.ToHeader SnapshotAttributeToSortBy
