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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerProtocol
  ( LoadBalancerProtocol
      ( ..,
        LoadBalancerProtocolHTTP,
        LoadBalancerProtocolHTTPHTTPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerProtocol = LoadBalancerProtocol'
  { fromLoadBalancerProtocol ::
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

pattern LoadBalancerProtocolHTTP :: LoadBalancerProtocol
pattern LoadBalancerProtocolHTTP = LoadBalancerProtocol' "HTTP"

pattern LoadBalancerProtocolHTTPHTTPS :: LoadBalancerProtocol
pattern LoadBalancerProtocolHTTPHTTPS = LoadBalancerProtocol' "HTTP_HTTPS"

{-# COMPLETE
  LoadBalancerProtocolHTTP,
  LoadBalancerProtocolHTTPHTTPS,
  LoadBalancerProtocol'
  #-}

instance Prelude.FromText LoadBalancerProtocol where
  parser = LoadBalancerProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerProtocol where
  toText (LoadBalancerProtocol' x) = x

instance Prelude.Hashable LoadBalancerProtocol

instance Prelude.NFData LoadBalancerProtocol

instance Prelude.ToByteString LoadBalancerProtocol

instance Prelude.ToQuery LoadBalancerProtocol

instance Prelude.ToHeader LoadBalancerProtocol

instance Prelude.FromJSON LoadBalancerProtocol where
  parseJSON = Prelude.parseJSONText "LoadBalancerProtocol"
