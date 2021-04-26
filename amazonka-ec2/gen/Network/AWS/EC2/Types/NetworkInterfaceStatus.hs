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
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceStatus
  ( NetworkInterfaceStatus
      ( ..,
        NetworkInterfaceStatusAssociated,
        NetworkInterfaceStatusAttaching,
        NetworkInterfaceStatusAvailable,
        NetworkInterfaceStatusDetaching,
        NetworkInterfaceStatusInUse
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype NetworkInterfaceStatus = NetworkInterfaceStatus'
  { fromNetworkInterfaceStatus ::
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

pattern NetworkInterfaceStatusAssociated :: NetworkInterfaceStatus
pattern NetworkInterfaceStatusAssociated = NetworkInterfaceStatus' "associated"

pattern NetworkInterfaceStatusAttaching :: NetworkInterfaceStatus
pattern NetworkInterfaceStatusAttaching = NetworkInterfaceStatus' "attaching"

pattern NetworkInterfaceStatusAvailable :: NetworkInterfaceStatus
pattern NetworkInterfaceStatusAvailable = NetworkInterfaceStatus' "available"

pattern NetworkInterfaceStatusDetaching :: NetworkInterfaceStatus
pattern NetworkInterfaceStatusDetaching = NetworkInterfaceStatus' "detaching"

pattern NetworkInterfaceStatusInUse :: NetworkInterfaceStatus
pattern NetworkInterfaceStatusInUse = NetworkInterfaceStatus' "in-use"

{-# COMPLETE
  NetworkInterfaceStatusAssociated,
  NetworkInterfaceStatusAttaching,
  NetworkInterfaceStatusAvailable,
  NetworkInterfaceStatusDetaching,
  NetworkInterfaceStatusInUse,
  NetworkInterfaceStatus'
  #-}

instance Prelude.FromText NetworkInterfaceStatus where
  parser = NetworkInterfaceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkInterfaceStatus where
  toText (NetworkInterfaceStatus' x) = x

instance Prelude.Hashable NetworkInterfaceStatus

instance Prelude.NFData NetworkInterfaceStatus

instance Prelude.ToByteString NetworkInterfaceStatus

instance Prelude.ToQuery NetworkInterfaceStatus

instance Prelude.ToHeader NetworkInterfaceStatus

instance Prelude.FromXML NetworkInterfaceStatus where
  parseXML = Prelude.parseXMLText "NetworkInterfaceStatus"
