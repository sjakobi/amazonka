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
-- Module      : Network.AWS.Redshift.Types.ScheduleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduleState
  ( ScheduleState
      ( ..,
        ScheduleStateACTIVE,
        ScheduleStateFAILED,
        ScheduleStateMODIFYING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

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

pattern ScheduleStateACTIVE :: ScheduleState
pattern ScheduleStateACTIVE = ScheduleState' "ACTIVE"

pattern ScheduleStateFAILED :: ScheduleState
pattern ScheduleStateFAILED = ScheduleState' "FAILED"

pattern ScheduleStateMODIFYING :: ScheduleState
pattern ScheduleStateMODIFYING = ScheduleState' "MODIFYING"

{-# COMPLETE
  ScheduleStateACTIVE,
  ScheduleStateFAILED,
  ScheduleStateMODIFYING,
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

instance Prelude.FromXML ScheduleState where
  parseXML = Prelude.parseXMLText "ScheduleState"
