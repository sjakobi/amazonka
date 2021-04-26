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
-- Module      : Network.AWS.EC2.Types.Protocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Protocol
  ( Protocol
      ( ..,
        ProtocolTcp,
        ProtocolUdp
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype Protocol = Protocol'
  { fromProtocol ::
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

pattern ProtocolTcp :: Protocol
pattern ProtocolTcp = Protocol' "tcp"

pattern ProtocolUdp :: Protocol
pattern ProtocolUdp = Protocol' "udp"

{-# COMPLETE
  ProtocolTcp,
  ProtocolUdp,
  Protocol'
  #-}

instance Prelude.FromText Protocol where
  parser = Protocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText Protocol where
  toText (Protocol' x) = x

instance Prelude.Hashable Protocol

instance Prelude.NFData Protocol

instance Prelude.ToByteString Protocol

instance Prelude.ToQuery Protocol

instance Prelude.ToHeader Protocol

instance Prelude.FromXML Protocol where
  parseXML = Prelude.parseXMLText "Protocol"
