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
-- Module      : Network.AWS.SES.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.EventType
  ( EventType
      ( ..,
        EventTypeBounce,
        EventTypeClick,
        EventTypeComplaint,
        EventTypeDelivery,
        EventTypeOpen,
        EventTypeReject,
        EventTypeRenderingFailure,
        EventTypeSend
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

pattern EventTypeBounce :: EventType
pattern EventTypeBounce = EventType' "bounce"

pattern EventTypeClick :: EventType
pattern EventTypeClick = EventType' "click"

pattern EventTypeComplaint :: EventType
pattern EventTypeComplaint = EventType' "complaint"

pattern EventTypeDelivery :: EventType
pattern EventTypeDelivery = EventType' "delivery"

pattern EventTypeOpen :: EventType
pattern EventTypeOpen = EventType' "open"

pattern EventTypeReject :: EventType
pattern EventTypeReject = EventType' "reject"

pattern EventTypeRenderingFailure :: EventType
pattern EventTypeRenderingFailure = EventType' "renderingFailure"

pattern EventTypeSend :: EventType
pattern EventTypeSend = EventType' "send"

{-# COMPLETE
  EventTypeBounce,
  EventTypeClick,
  EventTypeComplaint,
  EventTypeDelivery,
  EventTypeOpen,
  EventTypeReject,
  EventTypeRenderingFailure,
  EventTypeSend,
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

instance Prelude.FromXML EventType where
  parseXML = Prelude.parseXMLText "EventType"
