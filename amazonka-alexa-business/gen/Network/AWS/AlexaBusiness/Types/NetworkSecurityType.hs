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
-- Module      : Network.AWS.AlexaBusiness.Types.NetworkSecurityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.NetworkSecurityType
  ( NetworkSecurityType
      ( ..,
        NetworkSecurityTypeOPEN,
        NetworkSecurityTypeWEP,
        NetworkSecurityTypeWPA2ENTERPRISE,
        NetworkSecurityTypeWPA2PSK,
        NetworkSecurityTypeWPAPSK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NetworkSecurityType = NetworkSecurityType'
  { fromNetworkSecurityType ::
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

pattern NetworkSecurityTypeOPEN :: NetworkSecurityType
pattern NetworkSecurityTypeOPEN = NetworkSecurityType' "OPEN"

pattern NetworkSecurityTypeWEP :: NetworkSecurityType
pattern NetworkSecurityTypeWEP = NetworkSecurityType' "WEP"

pattern NetworkSecurityTypeWPA2ENTERPRISE :: NetworkSecurityType
pattern NetworkSecurityTypeWPA2ENTERPRISE = NetworkSecurityType' "WPA2_ENTERPRISE"

pattern NetworkSecurityTypeWPA2PSK :: NetworkSecurityType
pattern NetworkSecurityTypeWPA2PSK = NetworkSecurityType' "WPA2_PSK"

pattern NetworkSecurityTypeWPAPSK :: NetworkSecurityType
pattern NetworkSecurityTypeWPAPSK = NetworkSecurityType' "WPA_PSK"

{-# COMPLETE
  NetworkSecurityTypeOPEN,
  NetworkSecurityTypeWEP,
  NetworkSecurityTypeWPA2ENTERPRISE,
  NetworkSecurityTypeWPA2PSK,
  NetworkSecurityTypeWPAPSK,
  NetworkSecurityType'
  #-}

instance Prelude.FromText NetworkSecurityType where
  parser = NetworkSecurityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkSecurityType where
  toText (NetworkSecurityType' x) = x

instance Prelude.Hashable NetworkSecurityType

instance Prelude.NFData NetworkSecurityType

instance Prelude.ToByteString NetworkSecurityType

instance Prelude.ToQuery NetworkSecurityType

instance Prelude.ToHeader NetworkSecurityType

instance Prelude.ToJSON NetworkSecurityType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NetworkSecurityType where
  parseJSON = Prelude.parseJSONText "NetworkSecurityType"
