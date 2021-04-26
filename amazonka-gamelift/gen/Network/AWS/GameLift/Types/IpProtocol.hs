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
-- Module      : Network.AWS.GameLift.Types.IpProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.IpProtocol
  ( IpProtocol
      ( ..,
        IpProtocolTCP,
        IpProtocolUDP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpProtocol = IpProtocol'
  { fromIpProtocol ::
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

pattern IpProtocolTCP :: IpProtocol
pattern IpProtocolTCP = IpProtocol' "TCP"

pattern IpProtocolUDP :: IpProtocol
pattern IpProtocolUDP = IpProtocol' "UDP"

{-# COMPLETE
  IpProtocolTCP,
  IpProtocolUDP,
  IpProtocol'
  #-}

instance Prelude.FromText IpProtocol where
  parser = IpProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText IpProtocol where
  toText (IpProtocol' x) = x

instance Prelude.Hashable IpProtocol

instance Prelude.NFData IpProtocol

instance Prelude.ToByteString IpProtocol

instance Prelude.ToQuery IpProtocol

instance Prelude.ToHeader IpProtocol

instance Prelude.ToJSON IpProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IpProtocol where
  parseJSON = Prelude.parseJSONText "IpProtocol"
