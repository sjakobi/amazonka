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
-- Module      : Network.AWS.EC2.Types.GatewayType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.GatewayType
  ( GatewayType
      ( ..,
        GatewayTypeIpsec_1
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype GatewayType = GatewayType'
  { fromGatewayType ::
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

pattern GatewayTypeIpsec_1 :: GatewayType
pattern GatewayTypeIpsec_1 = GatewayType' "ipsec.1"

{-# COMPLETE
  GatewayTypeIpsec_1,
  GatewayType'
  #-}

instance Prelude.FromText GatewayType where
  parser = GatewayType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GatewayType where
  toText (GatewayType' x) = x

instance Prelude.Hashable GatewayType

instance Prelude.NFData GatewayType

instance Prelude.ToByteString GatewayType

instance Prelude.ToQuery GatewayType

instance Prelude.ToHeader GatewayType

instance Prelude.FromXML GatewayType where
  parseXML = Prelude.parseXMLText "GatewayType"
