{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ConnectorStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ConnectorStatus
  ( ConnectorStatus
      ( ..,
        Healthy,
        Unhealthy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectorStatus = ConnectorStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Healthy :: ConnectorStatus
pattern Healthy = ConnectorStatus' "HEALTHY"

pattern Unhealthy :: ConnectorStatus
pattern Unhealthy = ConnectorStatus' "UNHEALTHY"

{-# COMPLETE
  Healthy,
  Unhealthy,
  ConnectorStatus'
  #-}

instance FromText ConnectorStatus where
  parser = (ConnectorStatus' . mk) <$> takeText

instance ToText ConnectorStatus where
  toText (ConnectorStatus' ci) = original ci

instance Hashable ConnectorStatus

instance NFData ConnectorStatus

instance ToByteString ConnectorStatus

instance ToQuery ConnectorStatus

instance ToHeader ConnectorStatus

instance FromJSON ConnectorStatus where
  parseJSON = parseJSONText "ConnectorStatus"
