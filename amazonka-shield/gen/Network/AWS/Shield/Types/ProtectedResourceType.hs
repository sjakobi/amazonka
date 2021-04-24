{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.ProtectedResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProtectedResourceType
  ( ProtectedResourceType
      ( ..,
        ApplicationLoadBalancer,
        ClassicLoadBalancer,
        CloudfrontDistribution,
        ElasticIPAllocation,
        GlobalAccelerator,
        Route53HostedZone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProtectedResourceType
  = ProtectedResourceType'
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

pattern ApplicationLoadBalancer :: ProtectedResourceType
pattern ApplicationLoadBalancer = ProtectedResourceType' "APPLICATION_LOAD_BALANCER"

pattern ClassicLoadBalancer :: ProtectedResourceType
pattern ClassicLoadBalancer = ProtectedResourceType' "CLASSIC_LOAD_BALANCER"

pattern CloudfrontDistribution :: ProtectedResourceType
pattern CloudfrontDistribution = ProtectedResourceType' "CLOUDFRONT_DISTRIBUTION"

pattern ElasticIPAllocation :: ProtectedResourceType
pattern ElasticIPAllocation = ProtectedResourceType' "ELASTIC_IP_ALLOCATION"

pattern GlobalAccelerator :: ProtectedResourceType
pattern GlobalAccelerator = ProtectedResourceType' "GLOBAL_ACCELERATOR"

pattern Route53HostedZone :: ProtectedResourceType
pattern Route53HostedZone = ProtectedResourceType' "ROUTE_53_HOSTED_ZONE"

{-# COMPLETE
  ApplicationLoadBalancer,
  ClassicLoadBalancer,
  CloudfrontDistribution,
  ElasticIPAllocation,
  GlobalAccelerator,
  Route53HostedZone,
  ProtectedResourceType'
  #-}

instance FromText ProtectedResourceType where
  parser = (ProtectedResourceType' . mk) <$> takeText

instance ToText ProtectedResourceType where
  toText (ProtectedResourceType' ci) = original ci

instance Hashable ProtectedResourceType

instance NFData ProtectedResourceType

instance ToByteString ProtectedResourceType

instance ToQuery ProtectedResourceType

instance ToHeader ProtectedResourceType

instance ToJSON ProtectedResourceType where
  toJSON = toJSONText

instance FromJSON ProtectedResourceType where
  parseJSON = parseJSONText "ProtectedResourceType"
