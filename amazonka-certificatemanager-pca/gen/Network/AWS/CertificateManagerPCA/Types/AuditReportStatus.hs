{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.AuditReportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AuditReportStatus
  ( AuditReportStatus
      ( ..,
        Creating,
        Failed,
        Success
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditReportStatus = AuditReportStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Creating :: AuditReportStatus
pattern Creating = AuditReportStatus' "CREATING"

pattern Failed :: AuditReportStatus
pattern Failed = AuditReportStatus' "FAILED"

pattern Success :: AuditReportStatus
pattern Success = AuditReportStatus' "SUCCESS"

{-# COMPLETE
  Creating,
  Failed,
  Success,
  AuditReportStatus'
  #-}

instance FromText AuditReportStatus where
  parser = (AuditReportStatus' . mk) <$> takeText

instance ToText AuditReportStatus where
  toText (AuditReportStatus' ci) = original ci

instance Hashable AuditReportStatus

instance NFData AuditReportStatus

instance ToByteString AuditReportStatus

instance ToQuery AuditReportStatus

instance ToHeader AuditReportStatus

instance FromJSON AuditReportStatus where
  parseJSON = parseJSONText "AuditReportStatus"
