{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.TrustDirection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TrustDirection
  ( TrustDirection
      ( ..,
        OneWayIncoming,
        OneWayOutgoing,
        TwoWay
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TrustDirection = TrustDirection' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OneWayIncoming :: TrustDirection
pattern OneWayIncoming = TrustDirection' "One-Way: Incoming"

pattern OneWayOutgoing :: TrustDirection
pattern OneWayOutgoing = TrustDirection' "One-Way: Outgoing"

pattern TwoWay :: TrustDirection
pattern TwoWay = TrustDirection' "Two-Way"

{-# COMPLETE
  OneWayIncoming,
  OneWayOutgoing,
  TwoWay,
  TrustDirection'
  #-}

instance FromText TrustDirection where
  parser = (TrustDirection' . mk) <$> takeText

instance ToText TrustDirection where
  toText (TrustDirection' ci) = original ci

instance Hashable TrustDirection

instance NFData TrustDirection

instance ToByteString TrustDirection

instance ToQuery TrustDirection

instance ToHeader TrustDirection

instance ToJSON TrustDirection where
  toJSON = toJSONText

instance FromJSON TrustDirection where
  parseJSON = parseJSONText "TrustDirection"
