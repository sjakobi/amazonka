{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        LBPHTTP,
        LBPHTTPHTTPS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerProtocol
  = LoadBalancerProtocol'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LBPHTTP :: LoadBalancerProtocol
pattern LBPHTTP = LoadBalancerProtocol' "HTTP"

pattern LBPHTTPHTTPS :: LoadBalancerProtocol
pattern LBPHTTPHTTPS = LoadBalancerProtocol' "HTTP_HTTPS"

{-# COMPLETE
  LBPHTTP,
  LBPHTTPHTTPS,
  LoadBalancerProtocol'
  #-}

instance FromText LoadBalancerProtocol where
  parser = (LoadBalancerProtocol' . mk) <$> takeText

instance ToText LoadBalancerProtocol where
  toText (LoadBalancerProtocol' ci) = original ci

instance Hashable LoadBalancerProtocol

instance NFData LoadBalancerProtocol

instance ToByteString LoadBalancerProtocol

instance ToQuery LoadBalancerProtocol

instance ToHeader LoadBalancerProtocol

instance FromJSON LoadBalancerProtocol where
  parseJSON = parseJSONText "LoadBalancerProtocol"
