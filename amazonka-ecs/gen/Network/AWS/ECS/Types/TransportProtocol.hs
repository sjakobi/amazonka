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
-- Module      : Network.AWS.ECS.Types.TransportProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TransportProtocol
  ( TransportProtocol
      ( ..,
        TransportProtocolTcp,
        TransportProtocolUdp
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TransportProtocol = TransportProtocol'
  { fromTransportProtocol ::
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

pattern TransportProtocolTcp :: TransportProtocol
pattern TransportProtocolTcp = TransportProtocol' "tcp"

pattern TransportProtocolUdp :: TransportProtocol
pattern TransportProtocolUdp = TransportProtocol' "udp"

{-# COMPLETE
  TransportProtocolTcp,
  TransportProtocolUdp,
  TransportProtocol'
  #-}

instance Prelude.FromText TransportProtocol where
  parser = TransportProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransportProtocol where
  toText (TransportProtocol' x) = x

instance Prelude.Hashable TransportProtocol

instance Prelude.NFData TransportProtocol

instance Prelude.ToByteString TransportProtocol

instance Prelude.ToQuery TransportProtocol

instance Prelude.ToHeader TransportProtocol

instance Prelude.ToJSON TransportProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TransportProtocol where
  parseJSON = Prelude.parseJSONText "TransportProtocol"
