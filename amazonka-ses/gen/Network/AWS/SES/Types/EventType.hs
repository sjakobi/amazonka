{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Bounce,
        Click,
        Complaint,
        Delivery,
        Open,
        Reject,
        RenderingFailure,
        Send
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventType = EventType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Bounce :: EventType
pattern Bounce = EventType' "bounce"

pattern Click :: EventType
pattern Click = EventType' "click"

pattern Complaint :: EventType
pattern Complaint = EventType' "complaint"

pattern Delivery :: EventType
pattern Delivery = EventType' "delivery"

pattern Open :: EventType
pattern Open = EventType' "open"

pattern Reject :: EventType
pattern Reject = EventType' "reject"

pattern RenderingFailure :: EventType
pattern RenderingFailure = EventType' "renderingFailure"

pattern Send :: EventType
pattern Send = EventType' "send"

{-# COMPLETE
  Bounce,
  Click,
  Complaint,
  Delivery,
  Open,
  Reject,
  RenderingFailure,
  Send,
  EventType'
  #-}

instance FromText EventType where
  parser = (EventType' . mk) <$> takeText

instance ToText EventType where
  toText (EventType' ci) = original ci

instance Hashable EventType

instance NFData EventType

instance ToByteString EventType

instance ToQuery EventType

instance ToHeader EventType

instance FromXML EventType where
  parseXML = parseXMLText "EventType"
