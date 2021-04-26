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
-- Module      : Network.AWS.Lightsail.Types.NetworkProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.NetworkProtocol
  ( NetworkProtocol
      ( ..,
        NetworkProtocolAll,
        NetworkProtocolIcmp,
        NetworkProtocolTcp,
        NetworkProtocolUdp
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NetworkProtocol = NetworkProtocol'
  { fromNetworkProtocol ::
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

pattern NetworkProtocolAll :: NetworkProtocol
pattern NetworkProtocolAll = NetworkProtocol' "all"

pattern NetworkProtocolIcmp :: NetworkProtocol
pattern NetworkProtocolIcmp = NetworkProtocol' "icmp"

pattern NetworkProtocolTcp :: NetworkProtocol
pattern NetworkProtocolTcp = NetworkProtocol' "tcp"

pattern NetworkProtocolUdp :: NetworkProtocol
pattern NetworkProtocolUdp = NetworkProtocol' "udp"

{-# COMPLETE
  NetworkProtocolAll,
  NetworkProtocolIcmp,
  NetworkProtocolTcp,
  NetworkProtocolUdp,
  NetworkProtocol'
  #-}

instance Prelude.FromText NetworkProtocol where
  parser = NetworkProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkProtocol where
  toText (NetworkProtocol' x) = x

instance Prelude.Hashable NetworkProtocol

instance Prelude.NFData NetworkProtocol

instance Prelude.ToByteString NetworkProtocol

instance Prelude.ToQuery NetworkProtocol

instance Prelude.ToHeader NetworkProtocol

instance Prelude.ToJSON NetworkProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NetworkProtocol where
  parseJSON = Prelude.parseJSONText "NetworkProtocol"
