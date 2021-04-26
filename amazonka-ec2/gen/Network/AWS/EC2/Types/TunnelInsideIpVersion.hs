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
-- Module      : Network.AWS.EC2.Types.TunnelInsideIpVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TunnelInsideIpVersion
  ( TunnelInsideIpVersion
      ( ..,
        TunnelInsideIpVersionIPV4,
        TunnelInsideIpVersionIPV6
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TunnelInsideIpVersion = TunnelInsideIpVersion'
  { fromTunnelInsideIpVersion ::
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

pattern TunnelInsideIpVersionIPV4 :: TunnelInsideIpVersion
pattern TunnelInsideIpVersionIPV4 = TunnelInsideIpVersion' "ipv4"

pattern TunnelInsideIpVersionIPV6 :: TunnelInsideIpVersion
pattern TunnelInsideIpVersionIPV6 = TunnelInsideIpVersion' "ipv6"

{-# COMPLETE
  TunnelInsideIpVersionIPV4,
  TunnelInsideIpVersionIPV6,
  TunnelInsideIpVersion'
  #-}

instance Prelude.FromText TunnelInsideIpVersion where
  parser = TunnelInsideIpVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText TunnelInsideIpVersion where
  toText (TunnelInsideIpVersion' x) = x

instance Prelude.Hashable TunnelInsideIpVersion

instance Prelude.NFData TunnelInsideIpVersion

instance Prelude.ToByteString TunnelInsideIpVersion

instance Prelude.ToQuery TunnelInsideIpVersion

instance Prelude.ToHeader TunnelInsideIpVersion

instance Prelude.FromXML TunnelInsideIpVersion where
  parseXML = Prelude.parseXMLText "TunnelInsideIpVersion"
