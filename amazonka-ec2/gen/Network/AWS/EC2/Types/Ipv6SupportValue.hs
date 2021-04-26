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
-- Module      : Network.AWS.EC2.Types.Ipv6SupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Ipv6SupportValue
  ( Ipv6SupportValue
      ( ..,
        Ipv6SupportValueDisable,
        Ipv6SupportValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype Ipv6SupportValue = Ipv6SupportValue'
  { fromIpv6SupportValue ::
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

pattern Ipv6SupportValueDisable :: Ipv6SupportValue
pattern Ipv6SupportValueDisable = Ipv6SupportValue' "disable"

pattern Ipv6SupportValueEnable :: Ipv6SupportValue
pattern Ipv6SupportValueEnable = Ipv6SupportValue' "enable"

{-# COMPLETE
  Ipv6SupportValueDisable,
  Ipv6SupportValueEnable,
  Ipv6SupportValue'
  #-}

instance Prelude.FromText Ipv6SupportValue where
  parser = Ipv6SupportValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText Ipv6SupportValue where
  toText (Ipv6SupportValue' x) = x

instance Prelude.Hashable Ipv6SupportValue

instance Prelude.NFData Ipv6SupportValue

instance Prelude.ToByteString Ipv6SupportValue

instance Prelude.ToQuery Ipv6SupportValue

instance Prelude.ToHeader Ipv6SupportValue

instance Prelude.FromXML Ipv6SupportValue where
  parseXML = Prelude.parseXMLText "Ipv6SupportValue"
