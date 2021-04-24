{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.RoutingPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.RoutingPolicy
  ( RoutingPolicy
      ( ..,
        Multivalue,
        Weighted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RoutingPolicy = RoutingPolicy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Multivalue :: RoutingPolicy
pattern Multivalue = RoutingPolicy' "MULTIVALUE"

pattern Weighted :: RoutingPolicy
pattern Weighted = RoutingPolicy' "WEIGHTED"

{-# COMPLETE
  Multivalue,
  Weighted,
  RoutingPolicy'
  #-}

instance FromText RoutingPolicy where
  parser = (RoutingPolicy' . mk) <$> takeText

instance ToText RoutingPolicy where
  toText (RoutingPolicy' ci) = original ci

instance Hashable RoutingPolicy

instance NFData RoutingPolicy

instance ToByteString RoutingPolicy

instance ToQuery RoutingPolicy

instance ToHeader RoutingPolicy

instance ToJSON RoutingPolicy where
  toJSON = toJSONText

instance FromJSON RoutingPolicy where
  parseJSON = parseJSONText "RoutingPolicy"
