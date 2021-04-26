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
-- Module      : Network.AWS.AppStream.Types.UsageReportSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UsageReportSchedule
  ( UsageReportSchedule
      ( ..,
        UsageReportScheduleDAILY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UsageReportSchedule = UsageReportSchedule'
  { fromUsageReportSchedule ::
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

pattern UsageReportScheduleDAILY :: UsageReportSchedule
pattern UsageReportScheduleDAILY = UsageReportSchedule' "DAILY"

{-# COMPLETE
  UsageReportScheduleDAILY,
  UsageReportSchedule'
  #-}

instance Prelude.FromText UsageReportSchedule where
  parser = UsageReportSchedule' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageReportSchedule where
  toText (UsageReportSchedule' x) = x

instance Prelude.Hashable UsageReportSchedule

instance Prelude.NFData UsageReportSchedule

instance Prelude.ToByteString UsageReportSchedule

instance Prelude.ToQuery UsageReportSchedule

instance Prelude.ToHeader UsageReportSchedule

instance Prelude.FromJSON UsageReportSchedule where
  parseJSON = Prelude.parseJSONText "UsageReportSchedule"
