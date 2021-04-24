{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Protocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Protocol
  ( Protocol
      ( ..,
        PTCP,
        PUdp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
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

pattern PTCP :: Protocol
pattern PTCP = Protocol' "tcp"

pattern PUdp :: Protocol
pattern PUdp = Protocol' "udp"

{-# COMPLETE
  PTCP,
  PUdp,
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

instance FromXML Protocol where
  parseXML = parseXMLText "Protocol"
