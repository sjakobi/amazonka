{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CFSRSTExportSnapshotRecord
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CloudFormationStackRecordSourceType
  = CloudFormationStackRecordSourceType'
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

pattern CFSRSTExportSnapshotRecord :: CloudFormationStackRecordSourceType
pattern CFSRSTExportSnapshotRecord = CloudFormationStackRecordSourceType' "ExportSnapshotRecord"

{-# COMPLETE
  CFSRSTExportSnapshotRecord,
  CloudFormationStackRecordSourceType'
  #-}

instance FromText CloudFormationStackRecordSourceType where
  parser = (CloudFormationStackRecordSourceType' . mk) <$> takeText

instance ToText CloudFormationStackRecordSourceType where
  toText (CloudFormationStackRecordSourceType' ci) = original ci

instance Hashable CloudFormationStackRecordSourceType

instance NFData CloudFormationStackRecordSourceType

instance ToByteString CloudFormationStackRecordSourceType

instance ToQuery CloudFormationStackRecordSourceType

instance ToHeader CloudFormationStackRecordSourceType

instance FromJSON CloudFormationStackRecordSourceType where
  parseJSON = parseJSONText "CloudFormationStackRecordSourceType"
