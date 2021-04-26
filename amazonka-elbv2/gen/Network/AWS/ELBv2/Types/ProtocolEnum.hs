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
-- Module      : Network.AWS.ELBv2.Types.ProtocolEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.ProtocolEnum
  ( ProtocolEnum
      ( ..,
        ProtocolEnumGENEVE,
        ProtocolEnumHTTP,
        ProtocolEnumHTTPS,
        ProtocolEnumTCP,
        ProtocolEnumTCPUDP,
        ProtocolEnumTLS,
        ProtocolEnumUDP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProtocolEnum = ProtocolEnum'
  { fromProtocolEnum ::
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

pattern ProtocolEnumGENEVE :: ProtocolEnum
pattern ProtocolEnumGENEVE = ProtocolEnum' "GENEVE"

pattern ProtocolEnumHTTP :: ProtocolEnum
pattern ProtocolEnumHTTP = ProtocolEnum' "HTTP"

pattern ProtocolEnumHTTPS :: ProtocolEnum
pattern ProtocolEnumHTTPS = ProtocolEnum' "HTTPS"

pattern ProtocolEnumTCP :: ProtocolEnum
pattern ProtocolEnumTCP = ProtocolEnum' "TCP"

pattern ProtocolEnumTCPUDP :: ProtocolEnum
pattern ProtocolEnumTCPUDP = ProtocolEnum' "TCP_UDP"

pattern ProtocolEnumTLS :: ProtocolEnum
pattern ProtocolEnumTLS = ProtocolEnum' "TLS"

pattern ProtocolEnumUDP :: ProtocolEnum
pattern ProtocolEnumUDP = ProtocolEnum' "UDP"

{-# COMPLETE
  ProtocolEnumGENEVE,
  ProtocolEnumHTTP,
  ProtocolEnumHTTPS,
  ProtocolEnumTCP,
  ProtocolEnumTCPUDP,
  ProtocolEnumTLS,
  ProtocolEnumUDP,
  ProtocolEnum'
  #-}

instance Prelude.FromText ProtocolEnum where
  parser = ProtocolEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProtocolEnum where
  toText (ProtocolEnum' x) = x

instance Prelude.Hashable ProtocolEnum

instance Prelude.NFData ProtocolEnum

instance Prelude.ToByteString ProtocolEnum

instance Prelude.ToQuery ProtocolEnum

instance Prelude.ToHeader ProtocolEnum

instance Prelude.FromXML ProtocolEnum where
  parseXML = Prelude.parseXMLText "ProtocolEnum"
