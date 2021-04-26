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
-- Module      : Network.AWS.Lightsail.Types.CloudFormationStackRecordSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.CloudFormationStackRecordSourceType
  ( CloudFormationStackRecordSourceType
      ( ..,
        CloudFormationStackRecordSourceTypeExportSnapshotRecord
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CloudFormationStackRecordSourceType = CloudFormationStackRecordSourceType'
  { fromCloudFormationStackRecordSourceType ::
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

pattern CloudFormationStackRecordSourceTypeExportSnapshotRecord :: CloudFormationStackRecordSourceType
pattern CloudFormationStackRecordSourceTypeExportSnapshotRecord = CloudFormationStackRecordSourceType' "ExportSnapshotRecord"

{-# COMPLETE
  CloudFormationStackRecordSourceTypeExportSnapshotRecord,
  CloudFormationStackRecordSourceType'
  #-}

instance Prelude.FromText CloudFormationStackRecordSourceType where
  parser = CloudFormationStackRecordSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CloudFormationStackRecordSourceType where
  toText (CloudFormationStackRecordSourceType' x) = x

instance Prelude.Hashable CloudFormationStackRecordSourceType

instance Prelude.NFData CloudFormationStackRecordSourceType

instance Prelude.ToByteString CloudFormationStackRecordSourceType

instance Prelude.ToQuery CloudFormationStackRecordSourceType

instance Prelude.ToHeader CloudFormationStackRecordSourceType

instance Prelude.FromJSON CloudFormationStackRecordSourceType where
  parseJSON = Prelude.parseJSONText "CloudFormationStackRecordSourceType"
