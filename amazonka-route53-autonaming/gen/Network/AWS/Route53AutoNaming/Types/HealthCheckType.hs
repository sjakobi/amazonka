{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthCheckType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.HealthCheckType
  ( HealthCheckType
      ( ..,
        HCTHTTP,
        HCTHTTPS,
        HCTTCP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HealthCheckType = HealthCheckType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HCTHTTP :: HealthCheckType
pattern HCTHTTP = HealthCheckType' "HTTP"

pattern HCTHTTPS :: HealthCheckType
pattern HCTHTTPS = HealthCheckType' "HTTPS"

pattern HCTTCP :: HealthCheckType
pattern HCTTCP = HealthCheckType' "TCP"

{-# COMPLETE
  HCTHTTP,
  HCTHTTPS,
  HCTTCP,
  HealthCheckType'
  #-}

instance FromText HealthCheckType where
  parser = (HealthCheckType' . mk) <$> takeText

instance ToText HealthCheckType where
  toText (HealthCheckType' ci) = original ci

instance Hashable HealthCheckType

instance NFData HealthCheckType

instance ToByteString HealthCheckType

instance ToQuery HealthCheckType

instance ToHeader HealthCheckType

instance ToJSON HealthCheckType where
  toJSON = toJSONText

instance FromJSON HealthCheckType where
  parseJSON = parseJSONText "HealthCheckType"
