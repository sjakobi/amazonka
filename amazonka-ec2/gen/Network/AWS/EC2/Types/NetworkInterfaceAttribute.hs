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
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceAttribute
  ( NetworkInterfaceAttribute
      ( ..,
        NetworkInterfaceAttributeAttachment,
        NetworkInterfaceAttributeDescription,
        NetworkInterfaceAttributeGroupSet,
        NetworkInterfaceAttributeSourceDestCheck
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype NetworkInterfaceAttribute = NetworkInterfaceAttribute'
  { fromNetworkInterfaceAttribute ::
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

pattern NetworkInterfaceAttributeAttachment :: NetworkInterfaceAttribute
pattern NetworkInterfaceAttributeAttachment = NetworkInterfaceAttribute' "attachment"

pattern NetworkInterfaceAttributeDescription :: NetworkInterfaceAttribute
pattern NetworkInterfaceAttributeDescription = NetworkInterfaceAttribute' "description"

pattern NetworkInterfaceAttributeGroupSet :: NetworkInterfaceAttribute
pattern NetworkInterfaceAttributeGroupSet = NetworkInterfaceAttribute' "groupSet"

pattern NetworkInterfaceAttributeSourceDestCheck :: NetworkInterfaceAttribute
pattern NetworkInterfaceAttributeSourceDestCheck = NetworkInterfaceAttribute' "sourceDestCheck"

{-# COMPLETE
  NetworkInterfaceAttributeAttachment,
  NetworkInterfaceAttributeDescription,
  NetworkInterfaceAttributeGroupSet,
  NetworkInterfaceAttributeSourceDestCheck,
  NetworkInterfaceAttribute'
  #-}

instance Prelude.FromText NetworkInterfaceAttribute where
  parser = NetworkInterfaceAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkInterfaceAttribute where
  toText (NetworkInterfaceAttribute' x) = x

instance Prelude.Hashable NetworkInterfaceAttribute

instance Prelude.NFData NetworkInterfaceAttribute

instance Prelude.ToByteString NetworkInterfaceAttribute

instance Prelude.ToQuery NetworkInterfaceAttribute

instance Prelude.ToHeader NetworkInterfaceAttribute
