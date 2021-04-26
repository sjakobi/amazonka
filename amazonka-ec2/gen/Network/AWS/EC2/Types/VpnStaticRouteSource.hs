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
-- Module      : Network.AWS.EC2.Types.VpnStaticRouteSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpnStaticRouteSource
  ( VpnStaticRouteSource
      ( ..,
        VpnStaticRouteSourceStatic
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpnStaticRouteSource = VpnStaticRouteSource'
  { fromVpnStaticRouteSource ::
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

pattern VpnStaticRouteSourceStatic :: VpnStaticRouteSource
pattern VpnStaticRouteSourceStatic = VpnStaticRouteSource' "Static"

{-# COMPLETE
  VpnStaticRouteSourceStatic,
  VpnStaticRouteSource'
  #-}

instance Prelude.FromText VpnStaticRouteSource where
  parser = VpnStaticRouteSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpnStaticRouteSource where
  toText (VpnStaticRouteSource' x) = x

instance Prelude.Hashable VpnStaticRouteSource

instance Prelude.NFData VpnStaticRouteSource

instance Prelude.ToByteString VpnStaticRouteSource

instance Prelude.ToQuery VpnStaticRouteSource

instance Prelude.ToHeader VpnStaticRouteSource

instance Prelude.FromXML VpnStaticRouteSource where
  parseXML = Prelude.parseXMLText "VpnStaticRouteSource"
