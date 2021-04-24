{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigurationItemStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigurationItemStatus
  ( ConfigurationItemStatus
      ( ..,
        OK,
        ResourceDeleted,
        ResourceDeletedNotRecorded,
        ResourceDiscovered,
        ResourceNotRecorded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConfigurationItemStatus
  = ConfigurationItemStatus'
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

pattern OK :: ConfigurationItemStatus
pattern OK = ConfigurationItemStatus' "OK"

pattern ResourceDeleted :: ConfigurationItemStatus
pattern ResourceDeleted = ConfigurationItemStatus' "ResourceDeleted"

pattern ResourceDeletedNotRecorded :: ConfigurationItemStatus
pattern ResourceDeletedNotRecorded = ConfigurationItemStatus' "ResourceDeletedNotRecorded"

pattern ResourceDiscovered :: ConfigurationItemStatus
pattern ResourceDiscovered = ConfigurationItemStatus' "ResourceDiscovered"

pattern ResourceNotRecorded :: ConfigurationItemStatus
pattern ResourceNotRecorded = ConfigurationItemStatus' "ResourceNotRecorded"

{-# COMPLETE
  OK,
  ResourceDeleted,
  ResourceDeletedNotRecorded,
  ResourceDiscovered,
  ResourceNotRecorded,
  ConfigurationItemStatus'
  #-}

instance FromText ConfigurationItemStatus where
  parser = (ConfigurationItemStatus' . mk) <$> takeText

instance ToText ConfigurationItemStatus where
  toText (ConfigurationItemStatus' ci) = original ci

instance Hashable ConfigurationItemStatus

instance NFData ConfigurationItemStatus

instance ToByteString ConfigurationItemStatus

instance ToQuery ConfigurationItemStatus

instance ToHeader ConfigurationItemStatus

instance FromJSON ConfigurationItemStatus where
  parseJSON = parseJSONText "ConfigurationItemStatus"
