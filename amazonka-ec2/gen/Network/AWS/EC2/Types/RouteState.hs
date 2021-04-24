{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RouteState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RouteState
  ( RouteState
      ( ..,
        RActive,
        RBlackhole
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data RouteState = RouteState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RActive :: RouteState
pattern RActive = RouteState' "active"

pattern RBlackhole :: RouteState
pattern RBlackhole = RouteState' "blackhole"

{-# COMPLETE
  RActive,
  RBlackhole,
  RouteState'
  #-}

instance FromText RouteState where
  parser = (RouteState' . mk) <$> takeText

instance ToText RouteState where
  toText (RouteState' ci) = original ci

instance Hashable RouteState

instance NFData RouteState

instance ToByteString RouteState

instance ToQuery RouteState

instance ToHeader RouteState

instance FromXML RouteState where
  parseXML = parseXMLText "RouteState"
