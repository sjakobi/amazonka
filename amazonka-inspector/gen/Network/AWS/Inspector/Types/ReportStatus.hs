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
-- Module      : Network.AWS.Inspector.Types.ReportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.ReportStatus
  ( ReportStatus
      ( ..,
        ReportStatusCOMPLETED,
        ReportStatusFAILED,
        ReportStatusWORKINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportStatus = ReportStatus'
  { fromReportStatus ::
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

pattern ReportStatusCOMPLETED :: ReportStatus
pattern ReportStatusCOMPLETED = ReportStatus' "COMPLETED"

pattern ReportStatusFAILED :: ReportStatus
pattern ReportStatusFAILED = ReportStatus' "FAILED"

pattern ReportStatusWORKINPROGRESS :: ReportStatus
pattern ReportStatusWORKINPROGRESS = ReportStatus' "WORK_IN_PROGRESS"

{-# COMPLETE
  ReportStatusCOMPLETED,
  ReportStatusFAILED,
  ReportStatusWORKINPROGRESS,
  ReportStatus'
  #-}

instance Prelude.FromText ReportStatus where
  parser = ReportStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportStatus where
  toText (ReportStatus' x) = x

instance Prelude.Hashable ReportStatus

instance Prelude.NFData ReportStatus

instance Prelude.ToByteString ReportStatus

instance Prelude.ToQuery ReportStatus

instance Prelude.ToHeader ReportStatus

instance Prelude.FromJSON ReportStatus where
  parseJSON = Prelude.parseJSONText "ReportStatus"
