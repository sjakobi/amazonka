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
-- Module      : Network.AWS.Glue.Types.ScheduleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ScheduleState
  ( ScheduleState
      ( ..,
        ScheduleStateNOTSCHEDULED,
        ScheduleStateSCHEDULED,
        ScheduleStateTRANSITIONING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScheduleState = ScheduleState'
  { fromScheduleState ::
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

pattern ScheduleStateNOTSCHEDULED :: ScheduleState
pattern ScheduleStateNOTSCHEDULED = ScheduleState' "NOT_SCHEDULED"

pattern ScheduleStateSCHEDULED :: ScheduleState
pattern ScheduleStateSCHEDULED = ScheduleState' "SCHEDULED"

pattern ScheduleStateTRANSITIONING :: ScheduleState
pattern ScheduleStateTRANSITIONING = ScheduleState' "TRANSITIONING"

{-# COMPLETE
  ScheduleStateNOTSCHEDULED,
  ScheduleStateSCHEDULED,
  ScheduleStateTRANSITIONING,
  ScheduleState'
  #-}

instance Prelude.FromText ScheduleState where
  parser = ScheduleState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduleState where
  toText (ScheduleState' x) = x

instance Prelude.Hashable ScheduleState

instance Prelude.NFData ScheduleState

instance Prelude.ToByteString ScheduleState

instance Prelude.ToQuery ScheduleState

instance Prelude.ToHeader ScheduleState

instance Prelude.FromJSON ScheduleState where
  parseJSON = Prelude.parseJSONText "ScheduleState"
