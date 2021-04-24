{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.ConfigurationSyncStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.ConfigurationSyncStatus
  ( ConfigurationSyncStatus
      ( ..,
        InSync,
        OutOfSync
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConfigurationSyncStatus
  = ConfigurationSyncStatus'
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

pattern InSync :: ConfigurationSyncStatus
pattern InSync = ConfigurationSyncStatus' "InSync"

pattern OutOfSync :: ConfigurationSyncStatus
pattern OutOfSync = ConfigurationSyncStatus' "OutOfSync"

{-# COMPLETE
  InSync,
  OutOfSync,
  ConfigurationSyncStatus'
  #-}

instance FromText ConfigurationSyncStatus where
  parser = (ConfigurationSyncStatus' . mk) <$> takeText

instance ToText ConfigurationSyncStatus where
  toText (ConfigurationSyncStatus' ci) = original ci

instance Hashable ConfigurationSyncStatus

instance NFData ConfigurationSyncStatus

instance ToByteString ConfigurationSyncStatus

instance ToQuery ConfigurationSyncStatus

instance ToHeader ConfigurationSyncStatus

instance FromJSON ConfigurationSyncStatus where
  parseJSON = parseJSONText "ConfigurationSyncStatus"
