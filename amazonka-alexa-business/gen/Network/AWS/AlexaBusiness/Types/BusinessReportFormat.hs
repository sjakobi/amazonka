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
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportFormat
  ( BusinessReportFormat
      ( ..,
        BusinessReportFormatCSV,
        BusinessReportFormatCSVZIP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BusinessReportFormat = BusinessReportFormat'
  { fromBusinessReportFormat ::
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

pattern BusinessReportFormatCSV :: BusinessReportFormat
pattern BusinessReportFormatCSV = BusinessReportFormat' "CSV"

pattern BusinessReportFormatCSVZIP :: BusinessReportFormat
pattern BusinessReportFormatCSVZIP = BusinessReportFormat' "CSV_ZIP"

{-# COMPLETE
  BusinessReportFormatCSV,
  BusinessReportFormatCSVZIP,
  BusinessReportFormat'
  #-}

instance Prelude.FromText BusinessReportFormat where
  parser = BusinessReportFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText BusinessReportFormat where
  toText (BusinessReportFormat' x) = x

instance Prelude.Hashable BusinessReportFormat

instance Prelude.NFData BusinessReportFormat

instance Prelude.ToByteString BusinessReportFormat

instance Prelude.ToQuery BusinessReportFormat

instance Prelude.ToHeader BusinessReportFormat

instance Prelude.ToJSON BusinessReportFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BusinessReportFormat where
  parseJSON = Prelude.parseJSONText "BusinessReportFormat"
