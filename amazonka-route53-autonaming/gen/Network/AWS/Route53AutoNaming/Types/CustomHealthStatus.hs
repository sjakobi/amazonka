{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.CustomHealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.CustomHealthStatus
  ( CustomHealthStatus
      ( ..,
        CHSHealthy,
        CHSUnhealthy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CustomHealthStatus
  = CustomHealthStatus'
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

pattern CHSHealthy :: CustomHealthStatus
pattern CHSHealthy = CustomHealthStatus' "HEALTHY"

pattern CHSUnhealthy :: CustomHealthStatus
pattern CHSUnhealthy = CustomHealthStatus' "UNHEALTHY"

{-# COMPLETE
  CHSHealthy,
  CHSUnhealthy,
  CustomHealthStatus'
  #-}

instance FromText CustomHealthStatus where
  parser = (CustomHealthStatus' . mk) <$> takeText

instance ToText CustomHealthStatus where
  toText (CustomHealthStatus' ci) = original ci

instance Hashable CustomHealthStatus

instance NFData CustomHealthStatus

instance ToByteString CustomHealthStatus

instance ToQuery CustomHealthStatus

instance ToHeader CustomHealthStatus

instance ToJSON CustomHealthStatus where
  toJSON = toJSONText
