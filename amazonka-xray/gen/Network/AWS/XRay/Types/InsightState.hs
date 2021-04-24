{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.InsightState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightState
  ( InsightState
      ( ..,
        Active,
        Closed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InsightState = InsightState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: InsightState
pattern Active = InsightState' "ACTIVE"

pattern Closed :: InsightState
pattern Closed = InsightState' "CLOSED"

{-# COMPLETE
  Active,
  Closed,
  InsightState'
  #-}

instance FromText InsightState where
  parser = (InsightState' . mk) <$> takeText

instance ToText InsightState where
  toText (InsightState' ci) = original ci

instance Hashable InsightState

instance NFData InsightState

instance ToByteString InsightState

instance ToQuery InsightState

instance ToHeader InsightState

instance ToJSON InsightState where
  toJSON = toJSONText

instance FromJSON InsightState where
  parseJSON = parseJSONText "InsightState"
