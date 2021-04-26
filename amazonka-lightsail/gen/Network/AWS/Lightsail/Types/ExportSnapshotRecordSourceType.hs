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
-- Module      : Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceType
  ( ExportSnapshotRecordSourceType
      ( ..,
        ExportSnapshotRecordSourceTypeDiskSnapshot,
        ExportSnapshotRecordSourceTypeInstanceSnapshot
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExportSnapshotRecordSourceType = ExportSnapshotRecordSourceType'
  { fromExportSnapshotRecordSourceType ::
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

pattern ExportSnapshotRecordSourceTypeDiskSnapshot :: ExportSnapshotRecordSourceType
pattern ExportSnapshotRecordSourceTypeDiskSnapshot = ExportSnapshotRecordSourceType' "DiskSnapshot"

pattern ExportSnapshotRecordSourceTypeInstanceSnapshot :: ExportSnapshotRecordSourceType
pattern ExportSnapshotRecordSourceTypeInstanceSnapshot = ExportSnapshotRecordSourceType' "InstanceSnapshot"

{-# COMPLETE
  ExportSnapshotRecordSourceTypeDiskSnapshot,
  ExportSnapshotRecordSourceTypeInstanceSnapshot,
  ExportSnapshotRecordSourceType'
  #-}

instance Prelude.FromText ExportSnapshotRecordSourceType where
  parser = ExportSnapshotRecordSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportSnapshotRecordSourceType where
  toText (ExportSnapshotRecordSourceType' x) = x

instance Prelude.Hashable ExportSnapshotRecordSourceType

instance Prelude.NFData ExportSnapshotRecordSourceType

instance Prelude.ToByteString ExportSnapshotRecordSourceType

instance Prelude.ToQuery ExportSnapshotRecordSourceType

instance Prelude.ToHeader ExportSnapshotRecordSourceType

instance Prelude.FromJSON ExportSnapshotRecordSourceType where
  parseJSON = Prelude.parseJSONText "ExportSnapshotRecordSourceType"
