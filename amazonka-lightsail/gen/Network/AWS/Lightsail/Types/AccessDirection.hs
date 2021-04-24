{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.AccessDirection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AccessDirection
  ( AccessDirection
      ( ..,
        Inbound,
        Outbound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccessDirection = AccessDirection' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Inbound :: AccessDirection
pattern Inbound = AccessDirection' "inbound"

pattern Outbound :: AccessDirection
pattern Outbound = AccessDirection' "outbound"

{-# COMPLETE
  Inbound,
  Outbound,
  AccessDirection'
  #-}

instance FromText AccessDirection where
  parser = (AccessDirection' . mk) <$> takeText

instance ToText AccessDirection where
  toText (AccessDirection' ci) = original ci

instance Hashable AccessDirection

instance NFData AccessDirection

instance ToByteString AccessDirection

instance ToQuery AccessDirection

instance ToHeader AccessDirection

instance FromJSON AccessDirection where
  parseJSON = parseJSONText "AccessDirection"
