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
-- Module      : Network.AWS.CostAndUsageReport.Types.ReportFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostAndUsageReport.Types.ReportFormat
  ( ReportFormat
      ( ..,
        ReportFormatParquet,
        ReportFormatTextORcsv
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The format that AWS saves the report in.
newtype ReportFormat = ReportFormat'
  { fromReportFormat ::
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

pattern ReportFormatParquet :: ReportFormat
pattern ReportFormatParquet = ReportFormat' "Parquet"

pattern ReportFormatTextORcsv :: ReportFormat
pattern ReportFormatTextORcsv = ReportFormat' "textORcsv"

{-# COMPLETE
  ReportFormatParquet,
  ReportFormatTextORcsv,
  ReportFormat'
  #-}

instance Prelude.FromText ReportFormat where
  parser = ReportFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportFormat where
  toText (ReportFormat' x) = x

instance Prelude.Hashable ReportFormat

instance Prelude.NFData ReportFormat

instance Prelude.ToByteString ReportFormat

instance Prelude.ToQuery ReportFormat

instance Prelude.ToHeader ReportFormat

instance Prelude.ToJSON ReportFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReportFormat where
  parseJSON = Prelude.parseJSONText "ReportFormat"
