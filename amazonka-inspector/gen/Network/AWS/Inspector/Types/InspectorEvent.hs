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
-- Module      : Network.AWS.Inspector.Types.InspectorEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.InspectorEvent
  ( InspectorEvent
      ( ..,
        InspectorEventASSESSMENTRUNCOMPLETED,
        InspectorEventASSESSMENTRUNSTARTED,
        InspectorEventASSESSMENTRUNSTATECHANGED,
        InspectorEventFINDINGREPORTED,
        InspectorEventOTHER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InspectorEvent = InspectorEvent'
  { fromInspectorEvent ::
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

pattern InspectorEventASSESSMENTRUNCOMPLETED :: InspectorEvent
pattern InspectorEventASSESSMENTRUNCOMPLETED = InspectorEvent' "ASSESSMENT_RUN_COMPLETED"

pattern InspectorEventASSESSMENTRUNSTARTED :: InspectorEvent
pattern InspectorEventASSESSMENTRUNSTARTED = InspectorEvent' "ASSESSMENT_RUN_STARTED"

pattern InspectorEventASSESSMENTRUNSTATECHANGED :: InspectorEvent
pattern InspectorEventASSESSMENTRUNSTATECHANGED = InspectorEvent' "ASSESSMENT_RUN_STATE_CHANGED"

pattern InspectorEventFINDINGREPORTED :: InspectorEvent
pattern InspectorEventFINDINGREPORTED = InspectorEvent' "FINDING_REPORTED"

pattern InspectorEventOTHER :: InspectorEvent
pattern InspectorEventOTHER = InspectorEvent' "OTHER"

{-# COMPLETE
  InspectorEventASSESSMENTRUNCOMPLETED,
  InspectorEventASSESSMENTRUNSTARTED,
  InspectorEventASSESSMENTRUNSTATECHANGED,
  InspectorEventFINDINGREPORTED,
  InspectorEventOTHER,
  InspectorEvent'
  #-}

instance Prelude.FromText InspectorEvent where
  parser = InspectorEvent' Prelude.<$> Prelude.takeText

instance Prelude.ToText InspectorEvent where
  toText (InspectorEvent' x) = x

instance Prelude.Hashable InspectorEvent

instance Prelude.NFData InspectorEvent

instance Prelude.ToByteString InspectorEvent

instance Prelude.ToQuery InspectorEvent

instance Prelude.ToHeader InspectorEvent

instance Prelude.ToJSON InspectorEvent where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InspectorEvent where
  parseJSON = Prelude.parseJSONText "InspectorEvent"
