{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPNProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPNProtocol
  ( VPNProtocol
      ( ..,
        Openvpn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPNProtocol = VPNProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Openvpn :: VPNProtocol
pattern Openvpn = VPNProtocol' "openvpn"

{-# COMPLETE
  Openvpn,
  VPNProtocol'
  #-}

instance FromText VPNProtocol where
  parser = (VPNProtocol' . mk) <$> takeText

instance ToText VPNProtocol where
  toText (VPNProtocol' ci) = original ci

instance Hashable VPNProtocol

instance NFData VPNProtocol

instance ToByteString VPNProtocol

instance ToQuery VPNProtocol

instance ToHeader VPNProtocol

instance FromXML VPNProtocol where
  parseXML = parseXMLText "VPNProtocol"
