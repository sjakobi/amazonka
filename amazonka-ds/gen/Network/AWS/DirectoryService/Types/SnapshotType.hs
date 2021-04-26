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
-- Module      : Network.AWS.DirectoryService.Types.SnapshotType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SnapshotType
  ( SnapshotType
      ( ..,
        SnapshotTypeAuto,
        SnapshotTypeManual
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SnapshotType = SnapshotType'
  { fromSnapshotType ::
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

pattern SnapshotTypeAuto :: SnapshotType
pattern SnapshotTypeAuto = SnapshotType' "Auto"

pattern SnapshotTypeManual :: SnapshotType
pattern SnapshotTypeManual = SnapshotType' "Manual"

{-# COMPLETE
  SnapshotTypeAuto,
  SnapshotTypeManual,
  SnapshotType'
  #-}

instance Prelude.FromText SnapshotType where
  parser = SnapshotType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SnapshotType where
  toText (SnapshotType' x) = x

instance Prelude.Hashable SnapshotType

instance Prelude.NFData SnapshotType

instance Prelude.ToByteString SnapshotType

instance Prelude.ToQuery SnapshotType

instance Prelude.ToHeader SnapshotType

instance Prelude.FromJSON SnapshotType where
  parseJSON = Prelude.parseJSONText "SnapshotType"
