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
-- Module      : Network.AWS.Inspector.Types.ReportFileFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.ReportFileFormat
  ( ReportFileFormat
      ( ..,
        ReportFileFormatHTML,
        ReportFileFormatPDF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportFileFormat = ReportFileFormat'
  { fromReportFileFormat ::
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

pattern ReportFileFormatHTML :: ReportFileFormat
pattern ReportFileFormatHTML = ReportFileFormat' "HTML"

pattern ReportFileFormatPDF :: ReportFileFormat
pattern ReportFileFormatPDF = ReportFileFormat' "PDF"

{-# COMPLETE
  ReportFileFormatHTML,
  ReportFileFormatPDF,
  ReportFileFormat'
  #-}

instance Prelude.FromText ReportFileFormat where
  parser = ReportFileFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportFileFormat where
  toText (ReportFileFormat' x) = x

instance Prelude.Hashable ReportFileFormat

instance Prelude.NFData ReportFileFormat

instance Prelude.ToByteString ReportFileFormat

instance Prelude.ToQuery ReportFileFormat

instance Prelude.ToHeader ReportFileFormat

instance Prelude.ToJSON ReportFileFormat where
  toJSON = Prelude.toJSONText
