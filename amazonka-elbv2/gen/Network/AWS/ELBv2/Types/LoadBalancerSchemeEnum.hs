{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerSchemeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerSchemeEnum
  ( LoadBalancerSchemeEnum
      ( ..,
        Internal,
        InternetFacing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerSchemeEnum
  = LoadBalancerSchemeEnum'
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

pattern Internal :: LoadBalancerSchemeEnum
pattern Internal = LoadBalancerSchemeEnum' "internal"

pattern InternetFacing :: LoadBalancerSchemeEnum
pattern InternetFacing = LoadBalancerSchemeEnum' "internet-facing"

{-# COMPLETE
  Internal,
  InternetFacing,
  LoadBalancerSchemeEnum'
  #-}

instance FromText LoadBalancerSchemeEnum where
  parser = (LoadBalancerSchemeEnum' . mk) <$> takeText

instance ToText LoadBalancerSchemeEnum where
  toText (LoadBalancerSchemeEnum' ci) = original ci

instance Hashable LoadBalancerSchemeEnum

instance NFData LoadBalancerSchemeEnum

instance ToByteString LoadBalancerSchemeEnum

instance ToQuery LoadBalancerSchemeEnum

instance ToHeader LoadBalancerSchemeEnum

instance FromXML LoadBalancerSchemeEnum where
  parseXML = parseXMLText "LoadBalancerSchemeEnum"
