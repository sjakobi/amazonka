{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppReplicationConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppReplicationConfigurationStatus
  ( AppReplicationConfigurationStatus
      ( ..,
        Configured,
        NotConfigured
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppReplicationConfigurationStatus
  = AppReplicationConfigurationStatus'
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

pattern Configured :: AppReplicationConfigurationStatus
pattern Configured = AppReplicationConfigurationStatus' "CONFIGURED"

pattern NotConfigured :: AppReplicationConfigurationStatus
pattern NotConfigured = AppReplicationConfigurationStatus' "NOT_CONFIGURED"

{-# COMPLETE
  Configured,
  NotConfigured,
  AppReplicationConfigurationStatus'
  #-}

instance FromText AppReplicationConfigurationStatus where
  parser = (AppReplicationConfigurationStatus' . mk) <$> takeText

instance ToText AppReplicationConfigurationStatus where
  toText (AppReplicationConfigurationStatus' ci) = original ci

instance Hashable AppReplicationConfigurationStatus

instance NFData AppReplicationConfigurationStatus

instance ToByteString AppReplicationConfigurationStatus

instance ToQuery AppReplicationConfigurationStatus

instance ToHeader AppReplicationConfigurationStatus

instance FromJSON AppReplicationConfigurationStatus where
  parseJSON = parseJSONText "AppReplicationConfigurationStatus"
