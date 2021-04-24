{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.ShipmentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ShipmentState
  ( ShipmentState
      ( ..,
        Received,
        Returned
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShipmentState = ShipmentState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Received :: ShipmentState
pattern Received = ShipmentState' "RECEIVED"

pattern Returned :: ShipmentState
pattern Returned = ShipmentState' "RETURNED"

{-# COMPLETE
  Received,
  Returned,
  ShipmentState'
  #-}

instance FromText ShipmentState where
  parser = (ShipmentState' . mk) <$> takeText

instance ToText ShipmentState where
  toText (ShipmentState' ci) = original ci

instance Hashable ShipmentState

instance NFData ShipmentState

instance ToByteString ShipmentState

instance ToQuery ShipmentState

instance ToHeader ShipmentState

instance ToJSON ShipmentState where
  toJSON = toJSONText
