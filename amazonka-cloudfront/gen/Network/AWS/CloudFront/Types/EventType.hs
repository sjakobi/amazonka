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
-- Module      : Network.AWS.CloudFront.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.EventType
  ( EventType
      ( ..,
        EventTypeOriginRequest,
        EventTypeOriginResponse,
        EventTypeViewerRequest,
        EventTypeViewerResponse
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

pattern EventTypeOriginRequest :: EventType
pattern EventTypeOriginRequest = EventType' "origin-request"

pattern EventTypeOriginResponse :: EventType
pattern EventTypeOriginResponse = EventType' "origin-response"

pattern EventTypeViewerRequest :: EventType
pattern EventTypeViewerRequest = EventType' "viewer-request"

pattern EventTypeViewerResponse :: EventType
pattern EventTypeViewerResponse = EventType' "viewer-response"

{-# COMPLETE
  EventTypeOriginRequest,
  EventTypeOriginResponse,
  EventTypeViewerRequest,
  EventTypeViewerResponse,
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

instance Prelude.ToXML EventType where
  toXML = Prelude.toXMLText
