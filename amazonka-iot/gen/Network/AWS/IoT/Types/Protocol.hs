{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.Protocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.Protocol
  ( Protocol
      ( ..,
        HTTP,
        Mqtt
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Protocol = Protocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTTP :: Protocol
pattern HTTP = Protocol' "HTTP"

pattern Mqtt :: Protocol
pattern Mqtt = Protocol' "MQTT"

{-# COMPLETE
  HTTP,
  Mqtt,
  Protocol'
  #-}

instance FromText Protocol where
  parser = (Protocol' . mk) <$> takeText

instance ToText Protocol where
  toText (Protocol' ci) = original ci

instance Hashable Protocol

instance NFData Protocol

instance ToByteString Protocol

instance ToQuery Protocol

instance ToHeader Protocol

instance ToJSON Protocol where
  toJSON = toJSONText

instance FromJSON Protocol where
  parseJSON = parseJSONText "Protocol"
