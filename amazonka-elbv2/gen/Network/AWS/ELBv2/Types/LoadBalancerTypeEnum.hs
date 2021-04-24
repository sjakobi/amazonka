{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerTypeEnum
  ( LoadBalancerTypeEnum
      ( ..,
        Application,
        Gateway,
        Network
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerTypeEnum
  = LoadBalancerTypeEnum'
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

pattern Application :: LoadBalancerTypeEnum
pattern Application = LoadBalancerTypeEnum' "application"

pattern Gateway :: LoadBalancerTypeEnum
pattern Gateway = LoadBalancerTypeEnum' "gateway"

pattern Network :: LoadBalancerTypeEnum
pattern Network = LoadBalancerTypeEnum' "network"

{-# COMPLETE
  Application,
  Gateway,
  Network,
  LoadBalancerTypeEnum'
  #-}

instance FromText LoadBalancerTypeEnum where
  parser = (LoadBalancerTypeEnum' . mk) <$> takeText

instance ToText LoadBalancerTypeEnum where
  toText (LoadBalancerTypeEnum' ci) = original ci

instance Hashable LoadBalancerTypeEnum

instance NFData LoadBalancerTypeEnum

instance ToByteString LoadBalancerTypeEnum

instance ToQuery LoadBalancerTypeEnum

instance ToHeader LoadBalancerTypeEnum

instance FromXML LoadBalancerTypeEnum where
  parseXML = parseXMLText "LoadBalancerTypeEnum"
