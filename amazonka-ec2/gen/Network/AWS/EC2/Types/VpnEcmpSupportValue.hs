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
-- Module      : Network.AWS.EC2.Types.VpnEcmpSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpnEcmpSupportValue
  ( VpnEcmpSupportValue
      ( ..,
        VpnEcmpSupportValueDisable,
        VpnEcmpSupportValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpnEcmpSupportValue = VpnEcmpSupportValue'
  { fromVpnEcmpSupportValue ::
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

pattern VpnEcmpSupportValueDisable :: VpnEcmpSupportValue
pattern VpnEcmpSupportValueDisable = VpnEcmpSupportValue' "disable"

pattern VpnEcmpSupportValueEnable :: VpnEcmpSupportValue
pattern VpnEcmpSupportValueEnable = VpnEcmpSupportValue' "enable"

{-# COMPLETE
  VpnEcmpSupportValueDisable,
  VpnEcmpSupportValueEnable,
  VpnEcmpSupportValue'
  #-}

instance Prelude.FromText VpnEcmpSupportValue where
  parser = VpnEcmpSupportValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpnEcmpSupportValue where
  toText (VpnEcmpSupportValue' x) = x

instance Prelude.Hashable VpnEcmpSupportValue

instance Prelude.NFData VpnEcmpSupportValue

instance Prelude.ToByteString VpnEcmpSupportValue

instance Prelude.ToQuery VpnEcmpSupportValue

instance Prelude.ToHeader VpnEcmpSupportValue

instance Prelude.FromXML VpnEcmpSupportValue where
  parseXML = Prelude.parseXMLText "VpnEcmpSupportValue"
