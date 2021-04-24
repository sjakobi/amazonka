{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.AuditReportResponseFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AuditReportResponseFormat
  ( AuditReportResponseFormat
      ( ..,
        CSV,
        JSON
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditReportResponseFormat
  = AuditReportResponseFormat'
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

pattern CSV :: AuditReportResponseFormat
pattern CSV = AuditReportResponseFormat' "CSV"

pattern JSON :: AuditReportResponseFormat
pattern JSON = AuditReportResponseFormat' "JSON"

{-# COMPLETE
  CSV,
  JSON,
  AuditReportResponseFormat'
  #-}

instance FromText AuditReportResponseFormat where
  parser = (AuditReportResponseFormat' . mk) <$> takeText

instance ToText AuditReportResponseFormat where
  toText (AuditReportResponseFormat' ci) = original ci

instance Hashable AuditReportResponseFormat

instance NFData AuditReportResponseFormat

instance ToByteString AuditReportResponseFormat

instance ToQuery AuditReportResponseFormat

instance ToHeader AuditReportResponseFormat

instance ToJSON AuditReportResponseFormat where
  toJSON = toJSONText
