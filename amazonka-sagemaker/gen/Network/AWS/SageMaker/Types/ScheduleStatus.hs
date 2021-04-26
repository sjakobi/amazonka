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
-- Module      : Network.AWS.SageMaker.Types.ScheduleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ScheduleStatus
  ( ScheduleStatus
      ( ..,
        ScheduleStatusFailed,
        ScheduleStatusPending,
        ScheduleStatusScheduled,
        ScheduleStatusStopped
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScheduleStatus = ScheduleStatus'
  { fromScheduleStatus ::
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

pattern ScheduleStatusFailed :: ScheduleStatus
pattern ScheduleStatusFailed = ScheduleStatus' "Failed"

pattern ScheduleStatusPending :: ScheduleStatus
pattern ScheduleStatusPending = ScheduleStatus' "Pending"

pattern ScheduleStatusScheduled :: ScheduleStatus
pattern ScheduleStatusScheduled = ScheduleStatus' "Scheduled"

pattern ScheduleStatusStopped :: ScheduleStatus
pattern ScheduleStatusStopped = ScheduleStatus' "Stopped"

{-# COMPLETE
  ScheduleStatusFailed,
  ScheduleStatusPending,
  ScheduleStatusScheduled,
  ScheduleStatusStopped,
  ScheduleStatus'
  #-}

instance Prelude.FromText ScheduleStatus where
  parser = ScheduleStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduleStatus where
  toText (ScheduleStatus' x) = x

instance Prelude.Hashable ScheduleStatus

instance Prelude.NFData ScheduleStatus

instance Prelude.ToByteString ScheduleStatus

instance Prelude.ToQuery ScheduleStatus

instance Prelude.ToHeader ScheduleStatus

instance Prelude.ToJSON ScheduleStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScheduleStatus where
  parseJSON = Prelude.parseJSONText "ScheduleStatus"
