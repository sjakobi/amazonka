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
-- Module      : Network.AWS.MechanicalTurk.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.EventType
  ( EventType
      ( ..,
        EventTypeAssignmentAbandoned,
        EventTypeAssignmentAccepted,
        EventTypeAssignmentApproved,
        EventTypeAssignmentRejected,
        EventTypeAssignmentReturned,
        EventTypeAssignmentSubmitted,
        EventTypeHITCreated,
        EventTypeHITDisposed,
        EventTypeHITExpired,
        EventTypeHITExtended,
        EventTypeHITReviewable,
        EventTypePing
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventType = EventType'
  { fromEventType ::
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

pattern EventTypeAssignmentAbandoned :: EventType
pattern EventTypeAssignmentAbandoned = EventType' "AssignmentAbandoned"

pattern EventTypeAssignmentAccepted :: EventType
pattern EventTypeAssignmentAccepted = EventType' "AssignmentAccepted"

pattern EventTypeAssignmentApproved :: EventType
pattern EventTypeAssignmentApproved = EventType' "AssignmentApproved"

pattern EventTypeAssignmentRejected :: EventType
pattern EventTypeAssignmentRejected = EventType' "AssignmentRejected"

pattern EventTypeAssignmentReturned :: EventType
pattern EventTypeAssignmentReturned = EventType' "AssignmentReturned"

pattern EventTypeAssignmentSubmitted :: EventType
pattern EventTypeAssignmentSubmitted = EventType' "AssignmentSubmitted"

pattern EventTypeHITCreated :: EventType
pattern EventTypeHITCreated = EventType' "HITCreated"

pattern EventTypeHITDisposed :: EventType
pattern EventTypeHITDisposed = EventType' "HITDisposed"

pattern EventTypeHITExpired :: EventType
pattern EventTypeHITExpired = EventType' "HITExpired"

pattern EventTypeHITExtended :: EventType
pattern EventTypeHITExtended = EventType' "HITExtended"

pattern EventTypeHITReviewable :: EventType
pattern EventTypeHITReviewable = EventType' "HITReviewable"

pattern EventTypePing :: EventType
pattern EventTypePing = EventType' "Ping"

{-# COMPLETE
  EventTypeAssignmentAbandoned,
  EventTypeAssignmentAccepted,
  EventTypeAssignmentApproved,
  EventTypeAssignmentRejected,
  EventTypeAssignmentReturned,
  EventTypeAssignmentSubmitted,
  EventTypeHITCreated,
  EventTypeHITDisposed,
  EventTypeHITExpired,
  EventTypeHITExtended,
  EventTypeHITReviewable,
  EventTypePing,
  EventType'
  #-}

instance Prelude.FromText EventType where
  parser = EventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventType where
  toText (EventType' x) = x

instance Prelude.Hashable EventType

instance Prelude.NFData EventType

instance Prelude.ToByteString EventType

instance Prelude.ToQuery EventType

instance Prelude.ToHeader EventType

instance Prelude.ToJSON EventType where
  toJSON = Prelude.toJSONText
