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
-- Module      : Network.AWS.CertificateManagerPCA.Types.AuditReportResponseFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AuditReportResponseFormat
  ( AuditReportResponseFormat
      ( ..,
        AuditReportResponseFormatCSV,
        AuditReportResponseFormatJSON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditReportResponseFormat = AuditReportResponseFormat'
  { fromAuditReportResponseFormat ::
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

pattern AuditReportResponseFormatCSV :: AuditReportResponseFormat
pattern AuditReportResponseFormatCSV = AuditReportResponseFormat' "CSV"

pattern AuditReportResponseFormatJSON :: AuditReportResponseFormat
pattern AuditReportResponseFormatJSON = AuditReportResponseFormat' "JSON"

{-# COMPLETE
  AuditReportResponseFormatCSV,
  AuditReportResponseFormatJSON,
  AuditReportResponseFormat'
  #-}

instance Prelude.FromText AuditReportResponseFormat where
  parser = AuditReportResponseFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditReportResponseFormat where
  toText (AuditReportResponseFormat' x) = x

instance Prelude.Hashable AuditReportResponseFormat

instance Prelude.NFData AuditReportResponseFormat

instance Prelude.ToByteString AuditReportResponseFormat

instance Prelude.ToQuery AuditReportResponseFormat

instance Prelude.ToHeader AuditReportResponseFormat

instance Prelude.ToJSON AuditReportResponseFormat where
  toJSON = Prelude.toJSONText
