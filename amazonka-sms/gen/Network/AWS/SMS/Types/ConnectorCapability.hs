{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ConnectorCapability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ConnectorCapability
  ( ConnectorCapability
      ( ..,
        CCHypervManager,
        CCScvmm,
        CCSmsOptimized,
        CCSnapshotBatching,
        CCVsphere
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectorCapability
  = ConnectorCapability'
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

pattern CCHypervManager :: ConnectorCapability
pattern CCHypervManager = ConnectorCapability' "HYPERV-MANAGER"

pattern CCScvmm :: ConnectorCapability
pattern CCScvmm = ConnectorCapability' "SCVMM"

pattern CCSmsOptimized :: ConnectorCapability
pattern CCSmsOptimized = ConnectorCapability' "SMS_OPTIMIZED"

pattern CCSnapshotBatching :: ConnectorCapability
pattern CCSnapshotBatching = ConnectorCapability' "SNAPSHOT_BATCHING"

pattern CCVsphere :: ConnectorCapability
pattern CCVsphere = ConnectorCapability' "VSPHERE"

{-# COMPLETE
  CCHypervManager,
  CCScvmm,
  CCSmsOptimized,
  CCSnapshotBatching,
  CCVsphere,
  ConnectorCapability'
  #-}

instance FromText ConnectorCapability where
  parser = (ConnectorCapability' . mk) <$> takeText

instance ToText ConnectorCapability where
  toText (ConnectorCapability' ci) = original ci

instance Hashable ConnectorCapability

instance NFData ConnectorCapability

instance ToByteString ConnectorCapability

instance ToQuery ConnectorCapability

instance ToHeader ConnectorCapability

instance FromJSON ConnectorCapability where
  parseJSON = parseJSONText "ConnectorCapability"
