{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchComplianceDataState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchComplianceDataState
  ( PatchComplianceDataState
      ( ..,
        PCDSFailed,
        PCDSInstalled,
        PCDSInstalledOther,
        PCDSInstalledPendingReboot,
        PCDSInstalledRejected,
        PCDSMissing,
        PCDSNotApplicable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PatchComplianceDataState
  = PatchComplianceDataState'
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

pattern PCDSFailed :: PatchComplianceDataState
pattern PCDSFailed = PatchComplianceDataState' "FAILED"

pattern PCDSInstalled :: PatchComplianceDataState
pattern PCDSInstalled = PatchComplianceDataState' "INSTALLED"

pattern PCDSInstalledOther :: PatchComplianceDataState
pattern PCDSInstalledOther = PatchComplianceDataState' "INSTALLED_OTHER"

pattern PCDSInstalledPendingReboot :: PatchComplianceDataState
pattern PCDSInstalledPendingReboot = PatchComplianceDataState' "INSTALLED_PENDING_REBOOT"

pattern PCDSInstalledRejected :: PatchComplianceDataState
pattern PCDSInstalledRejected = PatchComplianceDataState' "INSTALLED_REJECTED"

pattern PCDSMissing :: PatchComplianceDataState
pattern PCDSMissing = PatchComplianceDataState' "MISSING"

pattern PCDSNotApplicable :: PatchComplianceDataState
pattern PCDSNotApplicable = PatchComplianceDataState' "NOT_APPLICABLE"

{-# COMPLETE
  PCDSFailed,
  PCDSInstalled,
  PCDSInstalledOther,
  PCDSInstalledPendingReboot,
  PCDSInstalledRejected,
  PCDSMissing,
  PCDSNotApplicable,
  PatchComplianceDataState'
  #-}

instance FromText PatchComplianceDataState where
  parser = (PatchComplianceDataState' . mk) <$> takeText

instance ToText PatchComplianceDataState where
  toText (PatchComplianceDataState' ci) = original ci

instance Hashable PatchComplianceDataState

instance NFData PatchComplianceDataState

instance ToByteString PatchComplianceDataState

instance ToQuery PatchComplianceDataState

instance ToHeader PatchComplianceDataState

instance FromJSON PatchComplianceDataState where
  parseJSON = parseJSONText "PatchComplianceDataState"
