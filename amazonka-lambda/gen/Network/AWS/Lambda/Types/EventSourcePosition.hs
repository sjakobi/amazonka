{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EventSourcePosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EventSourcePosition
  ( EventSourcePosition
      ( ..,
        AtTimestamp,
        Latest,
        TrimHorizon
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventSourcePosition
  = EventSourcePosition'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AtTimestamp :: EventSourcePosition
pattern AtTimestamp = EventSourcePosition' "AT_TIMESTAMP"

pattern Latest :: EventSourcePosition
pattern Latest = EventSourcePosition' "LATEST"

pattern TrimHorizon :: EventSourcePosition
pattern TrimHorizon = EventSourcePosition' "TRIM_HORIZON"

{-# COMPLETE
  AtTimestamp,
  Latest,
  TrimHorizon,
  EventSourcePosition'
  #-}

instance FromText EventSourcePosition where
  parser = (EventSourcePosition' . mk) <$> takeText

instance ToText EventSourcePosition where
  toText (EventSourcePosition' ci) = original ci

instance Hashable EventSourcePosition

instance NFData EventSourcePosition

instance ToByteString EventSourcePosition

instance ToQuery EventSourcePosition

instance ToHeader EventSourcePosition

instance ToJSON EventSourcePosition where
  toJSON = toJSONText

instance FromJSON EventSourcePosition where
  parseJSON = parseJSONText "EventSourcePosition"
