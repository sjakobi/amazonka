{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceHealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceHealthStatus
  ( InstanceHealthStatus
      ( ..,
        Healthy,
        Unhealthy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data InstanceHealthStatus
  = InstanceHealthStatus'
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

pattern Healthy :: InstanceHealthStatus
pattern Healthy = InstanceHealthStatus' "healthy"

pattern Unhealthy :: InstanceHealthStatus
pattern Unhealthy = InstanceHealthStatus' "unhealthy"

{-# COMPLETE
  Healthy,
  Unhealthy,
  InstanceHealthStatus'
  #-}

instance FromText InstanceHealthStatus where
  parser = (InstanceHealthStatus' . mk) <$> takeText

instance ToText InstanceHealthStatus where
  toText (InstanceHealthStatus' ci) = original ci

instance Hashable InstanceHealthStatus

instance NFData InstanceHealthStatus

instance ToByteString InstanceHealthStatus

instance ToQuery InstanceHealthStatus

instance ToHeader InstanceHealthStatus

instance FromXML InstanceHealthStatus where
  parseXML = parseXMLText "InstanceHealthStatus"
