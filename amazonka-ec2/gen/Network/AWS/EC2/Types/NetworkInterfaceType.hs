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
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceType
  ( NetworkInterfaceType
      ( ..,
        NetworkInterfaceTypeEfa,
        NetworkInterfaceTypeInterface,
        NetworkInterfaceTypeNatGateway
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype NetworkInterfaceType = NetworkInterfaceType'
  { fromNetworkInterfaceType ::
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

pattern NetworkInterfaceTypeEfa :: NetworkInterfaceType
pattern NetworkInterfaceTypeEfa = NetworkInterfaceType' "efa"

pattern NetworkInterfaceTypeInterface :: NetworkInterfaceType
pattern NetworkInterfaceTypeInterface = NetworkInterfaceType' "interface"

pattern NetworkInterfaceTypeNatGateway :: NetworkInterfaceType
pattern NetworkInterfaceTypeNatGateway = NetworkInterfaceType' "natGateway"

{-# COMPLETE
  NetworkInterfaceTypeEfa,
  NetworkInterfaceTypeInterface,
  NetworkInterfaceTypeNatGateway,
  NetworkInterfaceType'
  #-}

instance Prelude.FromText NetworkInterfaceType where
  parser = NetworkInterfaceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkInterfaceType where
  toText (NetworkInterfaceType' x) = x

instance Prelude.Hashable NetworkInterfaceType

instance Prelude.NFData NetworkInterfaceType

instance Prelude.ToByteString NetworkInterfaceType

instance Prelude.ToQuery NetworkInterfaceType

instance Prelude.ToHeader NetworkInterfaceType

instance Prelude.FromXML NetworkInterfaceType where
  parseXML = Prelude.parseXMLText "NetworkInterfaceType"
