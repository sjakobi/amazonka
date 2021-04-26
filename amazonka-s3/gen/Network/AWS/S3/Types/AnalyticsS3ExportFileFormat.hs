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
-- Module      : Network.AWS.S3.Types.AnalyticsS3ExportFileFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.AnalyticsS3ExportFileFormat
  ( AnalyticsS3ExportFileFormat
      ( ..,
        AnalyticsS3ExportFileFormatCSV
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype AnalyticsS3ExportFileFormat = AnalyticsS3ExportFileFormat'
  { fromAnalyticsS3ExportFileFormat ::
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

pattern AnalyticsS3ExportFileFormatCSV :: AnalyticsS3ExportFileFormat
pattern AnalyticsS3ExportFileFormatCSV = AnalyticsS3ExportFileFormat' "CSV"

{-# COMPLETE
  AnalyticsS3ExportFileFormatCSV,
  AnalyticsS3ExportFileFormat'
  #-}

instance Prelude.FromText AnalyticsS3ExportFileFormat where
  parser = AnalyticsS3ExportFileFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText AnalyticsS3ExportFileFormat where
  toText (AnalyticsS3ExportFileFormat' x) = x

instance Prelude.Hashable AnalyticsS3ExportFileFormat

instance Prelude.NFData AnalyticsS3ExportFileFormat

instance Prelude.ToByteString AnalyticsS3ExportFileFormat

instance Prelude.ToQuery AnalyticsS3ExportFileFormat

instance Prelude.ToHeader AnalyticsS3ExportFileFormat

instance Prelude.FromXML AnalyticsS3ExportFileFormat where
  parseXML = Prelude.parseXMLText "AnalyticsS3ExportFileFormat"

instance Prelude.ToXML AnalyticsS3ExportFileFormat where
  toXML = Prelude.toXMLText
