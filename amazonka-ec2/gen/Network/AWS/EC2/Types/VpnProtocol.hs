{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VpnProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpnProtocol
  ( VpnProtocol
      ( ..,
        VpnProtocolOpenvpn
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpnProtocol = VpnProtocol'
  { fromVpnProtocol ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern VpnProtocolOpenvpn :: VpnProtocol
pattern VpnProtocolOpenvpn = VpnProtocol' "openvpn"

{-# COMPLETE
  VpnProtocolOpenvpn,
  VpnProtocol'
  #-}

instance Prelude.FromText VpnProtocol where
  parser = VpnProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpnProtocol where
  toText (VpnProtocol' x) = x

instance Prelude.Hashable VpnProtocol

instance Prelude.NFData VpnProtocol

instance Prelude.ToByteString VpnProtocol

instance Prelude.ToQuery VpnProtocol

instance Prelude.ToHeader VpnProtocol

instance Prelude.FromXML VpnProtocol where
  parseXML = Prelude.parseXMLText "VpnProtocol"
