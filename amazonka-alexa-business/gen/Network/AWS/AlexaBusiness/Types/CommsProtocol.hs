{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.CommsProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.CommsProtocol
  ( CommsProtocol
      ( ..,
        H323,
        Sip,
        Sips
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CommsProtocol = CommsProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern H323 :: CommsProtocol
pattern H323 = CommsProtocol' "H323"

pattern Sip :: CommsProtocol
pattern Sip = CommsProtocol' "SIP"

pattern Sips :: CommsProtocol
pattern Sips = CommsProtocol' "SIPS"

{-# COMPLETE
  H323,
  Sip,
  Sips,
  CommsProtocol'
  #-}

instance FromText CommsProtocol where
  parser = (CommsProtocol' . mk) <$> takeText

instance ToText CommsProtocol where
  toText (CommsProtocol' ci) = original ci

instance Hashable CommsProtocol

instance NFData CommsProtocol

instance ToByteString CommsProtocol

instance ToQuery CommsProtocol

instance ToHeader CommsProtocol

instance ToJSON CommsProtocol where
  toJSON = toJSONText

instance FromJSON CommsProtocol where
  parseJSON = parseJSONText "CommsProtocol"
