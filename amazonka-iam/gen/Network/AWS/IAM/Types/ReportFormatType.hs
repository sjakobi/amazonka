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
-- Module      : Network.AWS.IAM.Types.ReportFormatType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ReportFormatType
  ( ReportFormatType
      ( ..,
        ReportFormatTypeTextCsv
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportFormatType = ReportFormatType'
  { fromReportFormatType ::
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

pattern ReportFormatTypeTextCsv :: ReportFormatType
pattern ReportFormatTypeTextCsv = ReportFormatType' "text/csv"

{-# COMPLETE
  ReportFormatTypeTextCsv,
  ReportFormatType'
  #-}

instance Prelude.FromText ReportFormatType where
  parser = ReportFormatType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportFormatType where
  toText (ReportFormatType' x) = x

instance Prelude.Hashable ReportFormatType

instance Prelude.NFData ReportFormatType

instance Prelude.ToByteString ReportFormatType

instance Prelude.ToQuery ReportFormatType

instance Prelude.ToHeader ReportFormatType

instance Prelude.FromXML ReportFormatType where
  parseXML = Prelude.parseXMLText "ReportFormatType"
