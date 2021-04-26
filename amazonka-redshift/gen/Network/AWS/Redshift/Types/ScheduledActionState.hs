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
-- Module      : Network.AWS.Redshift.Types.ScheduledActionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduledActionState
  ( ScheduledActionState
      ( ..,
        ScheduledActionStateACTIVE,
        ScheduledActionStateDISABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype ScheduledActionState = ScheduledActionState'
  { fromScheduledActionState ::
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

pattern ScheduledActionStateACTIVE :: ScheduledActionState
pattern ScheduledActionStateACTIVE = ScheduledActionState' "ACTIVE"

pattern ScheduledActionStateDISABLED :: ScheduledActionState
pattern ScheduledActionStateDISABLED = ScheduledActionState' "DISABLED"

{-# COMPLETE
  ScheduledActionStateACTIVE,
  ScheduledActionStateDISABLED,
  ScheduledActionState'
  #-}

instance Prelude.FromText ScheduledActionState where
  parser = ScheduledActionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduledActionState where
  toText (ScheduledActionState' x) = x

instance Prelude.Hashable ScheduledActionState

instance Prelude.NFData ScheduledActionState

instance Prelude.ToByteString ScheduledActionState

instance Prelude.ToQuery ScheduledActionState

instance Prelude.ToHeader ScheduledActionState

instance Prelude.FromXML ScheduledActionState where
  parseXML = Prelude.parseXMLText "ScheduledActionState"
