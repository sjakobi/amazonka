{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TransportProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TransportProtocol
  ( TransportProtocol
      ( ..,
        TCP,
        Udp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TransportProtocol = TransportProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TCP :: TransportProtocol
pattern TCP = TransportProtocol' "tcp"

pattern Udp :: TransportProtocol
pattern Udp = TransportProtocol' "udp"

{-# COMPLETE
  TCP,
  Udp,
  TransportProtocol'
  #-}

instance FromText TransportProtocol where
  parser = (TransportProtocol' . mk) <$> takeText

instance ToText TransportProtocol where
  toText (TransportProtocol' ci) = original ci

instance Hashable TransportProtocol

instance NFData TransportProtocol

instance ToByteString TransportProtocol

instance ToQuery TransportProtocol

instance ToHeader TransportProtocol

instance ToJSON TransportProtocol where
  toJSON = toJSONText

instance FromJSON TransportProtocol where
  parseJSON = parseJSONText "TransportProtocol"
