{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.IPProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.IPProtocol
  ( IPProtocol
      ( ..,
        TCP,
        Udp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPProtocol = IPProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TCP :: IPProtocol
pattern TCP = IPProtocol' "TCP"

pattern Udp :: IPProtocol
pattern Udp = IPProtocol' "UDP"

{-# COMPLETE
  TCP,
  Udp,
  IPProtocol'
  #-}

instance FromText IPProtocol where
  parser = (IPProtocol' . mk) <$> takeText

instance ToText IPProtocol where
  toText (IPProtocol' ci) = original ci

instance Hashable IPProtocol

instance NFData IPProtocol

instance ToByteString IPProtocol

instance ToQuery IPProtocol

instance ToHeader IPProtocol

instance ToJSON IPProtocol where
  toJSON = toJSONText

instance FromJSON IPProtocol where
  parseJSON = parseJSONText "IPProtocol"
