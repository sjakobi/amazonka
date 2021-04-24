{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ESRSTDiskSnapshot,
        ESRSTInstanceSnapshot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExportSnapshotRecordSourceType
  = ExportSnapshotRecordSourceType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ESRSTDiskSnapshot :: ExportSnapshotRecordSourceType
pattern ESRSTDiskSnapshot = ExportSnapshotRecordSourceType' "DiskSnapshot"

pattern ESRSTInstanceSnapshot :: ExportSnapshotRecordSourceType
pattern ESRSTInstanceSnapshot = ExportSnapshotRecordSourceType' "InstanceSnapshot"

{-# COMPLETE
  ESRSTDiskSnapshot,
  ESRSTInstanceSnapshot,
  ExportSnapshotRecordSourceType'
  #-}

instance FromText ExportSnapshotRecordSourceType where
  parser = (ExportSnapshotRecordSourceType' . mk) <$> takeText

instance ToText ExportSnapshotRecordSourceType where
  toText (ExportSnapshotRecordSourceType' ci) = original ci

instance Hashable ExportSnapshotRecordSourceType

instance NFData ExportSnapshotRecordSourceType

instance ToByteString ExportSnapshotRecordSourceType

instance ToQuery ExportSnapshotRecordSourceType

instance ToHeader ExportSnapshotRecordSourceType

instance FromJSON ExportSnapshotRecordSourceType where
  parseJSON = parseJSONText "ExportSnapshotRecordSourceType"
