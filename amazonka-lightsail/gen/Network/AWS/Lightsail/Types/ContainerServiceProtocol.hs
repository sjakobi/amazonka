{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceProtocol
  ( ContainerServiceProtocol
      ( ..,
        HTTP,
        HTTPS,
        TCP,
        Udp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerServiceProtocol
  = ContainerServiceProtocol'
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

pattern HTTP :: ContainerServiceProtocol
pattern HTTP = ContainerServiceProtocol' "HTTP"

pattern HTTPS :: ContainerServiceProtocol
pattern HTTPS = ContainerServiceProtocol' "HTTPS"

pattern TCP :: ContainerServiceProtocol
pattern TCP = ContainerServiceProtocol' "TCP"

pattern Udp :: ContainerServiceProtocol
pattern Udp = ContainerServiceProtocol' "UDP"

{-# COMPLETE
  HTTP,
  HTTPS,
  TCP,
  Udp,
  ContainerServiceProtocol'
  #-}

instance FromText ContainerServiceProtocol where
  parser = (ContainerServiceProtocol' . mk) <$> takeText

instance ToText ContainerServiceProtocol where
  toText (ContainerServiceProtocol' ci) = original ci

instance Hashable ContainerServiceProtocol

instance NFData ContainerServiceProtocol

instance ToByteString ContainerServiceProtocol

instance ToQuery ContainerServiceProtocol

instance ToHeader ContainerServiceProtocol

instance ToJSON ContainerServiceProtocol where
  toJSON = toJSONText

instance FromJSON ContainerServiceProtocol where
  parseJSON = parseJSONText "ContainerServiceProtocol"
