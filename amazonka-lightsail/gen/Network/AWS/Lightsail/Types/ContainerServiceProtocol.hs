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
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceProtocol
  ( ContainerServiceProtocol
      ( ..,
        ContainerServiceProtocolHTTP,
        ContainerServiceProtocolHTTPS,
        ContainerServiceProtocolTCP,
        ContainerServiceProtocolUDP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerServiceProtocol = ContainerServiceProtocol'
  { fromContainerServiceProtocol ::
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

pattern ContainerServiceProtocolHTTP :: ContainerServiceProtocol
pattern ContainerServiceProtocolHTTP = ContainerServiceProtocol' "HTTP"

pattern ContainerServiceProtocolHTTPS :: ContainerServiceProtocol
pattern ContainerServiceProtocolHTTPS = ContainerServiceProtocol' "HTTPS"

pattern ContainerServiceProtocolTCP :: ContainerServiceProtocol
pattern ContainerServiceProtocolTCP = ContainerServiceProtocol' "TCP"

pattern ContainerServiceProtocolUDP :: ContainerServiceProtocol
pattern ContainerServiceProtocolUDP = ContainerServiceProtocol' "UDP"

{-# COMPLETE
  ContainerServiceProtocolHTTP,
  ContainerServiceProtocolHTTPS,
  ContainerServiceProtocolTCP,
  ContainerServiceProtocolUDP,
  ContainerServiceProtocol'
  #-}

instance Prelude.FromText ContainerServiceProtocol where
  parser = ContainerServiceProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerServiceProtocol where
  toText (ContainerServiceProtocol' x) = x

instance Prelude.Hashable ContainerServiceProtocol

instance Prelude.NFData ContainerServiceProtocol

instance Prelude.ToByteString ContainerServiceProtocol

instance Prelude.ToQuery ContainerServiceProtocol

instance Prelude.ToHeader ContainerServiceProtocol

instance Prelude.ToJSON ContainerServiceProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContainerServiceProtocol where
  parseJSON = Prelude.parseJSONText "ContainerServiceProtocol"
