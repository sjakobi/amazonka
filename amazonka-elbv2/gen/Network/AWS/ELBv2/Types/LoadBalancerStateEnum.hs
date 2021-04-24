{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerStateEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerStateEnum
  ( LoadBalancerStateEnum
      ( ..,
        Active,
        ActiveImpaired,
        Failed,
        Provisioning
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerStateEnum
  = LoadBalancerStateEnum'
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

pattern Active :: LoadBalancerStateEnum
pattern Active = LoadBalancerStateEnum' "active"

pattern ActiveImpaired :: LoadBalancerStateEnum
pattern ActiveImpaired = LoadBalancerStateEnum' "active_impaired"

pattern Failed :: LoadBalancerStateEnum
pattern Failed = LoadBalancerStateEnum' "failed"

pattern Provisioning :: LoadBalancerStateEnum
pattern Provisioning = LoadBalancerStateEnum' "provisioning"

{-# COMPLETE
  Active,
  ActiveImpaired,
  Failed,
  Provisioning,
  LoadBalancerStateEnum'
  #-}

instance FromText LoadBalancerStateEnum where
  parser = (LoadBalancerStateEnum' . mk) <$> takeText

instance ToText LoadBalancerStateEnum where
  toText (LoadBalancerStateEnum' ci) = original ci

instance Hashable LoadBalancerStateEnum

instance NFData LoadBalancerStateEnum

instance ToByteString LoadBalancerStateEnum

instance ToQuery LoadBalancerStateEnum

instance ToHeader LoadBalancerStateEnum

instance FromXML LoadBalancerStateEnum where
  parseXML = parseXMLText "LoadBalancerStateEnum"
