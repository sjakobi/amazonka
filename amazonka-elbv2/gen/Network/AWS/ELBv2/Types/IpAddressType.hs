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
-- Module      : Network.AWS.ELBv2.Types.IpAddressType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.IpAddressType
  ( IpAddressType
      ( ..,
        IpAddressTypeDualstack,
        IpAddressTypeIPV4
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpAddressType = IpAddressType'
  { fromIpAddressType ::
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

pattern IpAddressTypeDualstack :: IpAddressType
pattern IpAddressTypeDualstack = IpAddressType' "dualstack"

pattern IpAddressTypeIPV4 :: IpAddressType
pattern IpAddressTypeIPV4 = IpAddressType' "ipv4"

{-# COMPLETE
  IpAddressTypeDualstack,
  IpAddressTypeIPV4,
  IpAddressType'
  #-}

instance Prelude.FromText IpAddressType where
  parser = IpAddressType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IpAddressType where
  toText (IpAddressType' x) = x

instance Prelude.Hashable IpAddressType

instance Prelude.NFData IpAddressType

instance Prelude.ToByteString IpAddressType

instance Prelude.ToQuery IpAddressType

instance Prelude.ToHeader IpAddressType

instance Prelude.FromXML IpAddressType where
  parseXML = Prelude.parseXMLText "IpAddressType"
