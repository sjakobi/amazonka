{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        OriginRequest,
        OriginResponse,
        ViewerRequest,
        ViewerResponse
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

pattern OriginRequest :: EventType
pattern OriginRequest = EventType' "origin-request"

pattern OriginResponse :: EventType
pattern OriginResponse = EventType' "origin-response"

pattern ViewerRequest :: EventType
pattern ViewerRequest = EventType' "viewer-request"

pattern ViewerResponse :: EventType
pattern ViewerResponse = EventType' "viewer-response"

{-# COMPLETE
  OriginRequest,
  OriginResponse,
  ViewerRequest,
  ViewerResponse,
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

instance ToXML EventType where
  toXML = toXMLText
