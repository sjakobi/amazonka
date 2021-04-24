{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TunnelInsideIPVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TunnelInsideIPVersion
  ( TunnelInsideIPVersion
      ( ..,
        IPV4,
        IPV6
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TunnelInsideIPVersion
  = TunnelInsideIPVersion'
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

pattern IPV4 :: TunnelInsideIPVersion
pattern IPV4 = TunnelInsideIPVersion' "ipv4"

pattern IPV6 :: TunnelInsideIPVersion
pattern IPV6 = TunnelInsideIPVersion' "ipv6"

{-# COMPLETE
  IPV4,
  IPV6,
  TunnelInsideIPVersion'
  #-}

instance FromText TunnelInsideIPVersion where
  parser = (TunnelInsideIPVersion' . mk) <$> takeText

instance ToText TunnelInsideIPVersion where
  toText (TunnelInsideIPVersion' ci) = original ci

instance Hashable TunnelInsideIPVersion

instance NFData TunnelInsideIPVersion

instance ToByteString TunnelInsideIPVersion

instance ToQuery TunnelInsideIPVersion

instance ToHeader TunnelInsideIPVersion

instance FromXML TunnelInsideIPVersion where
  parseXML = parseXMLText "TunnelInsideIPVersion"
