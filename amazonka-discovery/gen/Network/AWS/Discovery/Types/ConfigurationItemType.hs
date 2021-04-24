{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.ConfigurationItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ConfigurationItemType
  ( ConfigurationItemType
      ( ..,
        Application,
        Connection,
        Process,
        Server
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConfigurationItemType
  = ConfigurationItemType'
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

pattern Application :: ConfigurationItemType
pattern Application = ConfigurationItemType' "APPLICATION"

pattern Connection :: ConfigurationItemType
pattern Connection = ConfigurationItemType' "CONNECTION"

pattern Process :: ConfigurationItemType
pattern Process = ConfigurationItemType' "PROCESS"

pattern Server :: ConfigurationItemType
pattern Server = ConfigurationItemType' "SERVER"

{-# COMPLETE
  Application,
  Connection,
  Process,
  Server,
  ConfigurationItemType'
  #-}

instance FromText ConfigurationItemType where
  parser = (ConfigurationItemType' . mk) <$> takeText

instance ToText ConfigurationItemType where
  toText (ConfigurationItemType' ci) = original ci

instance Hashable ConfigurationItemType

instance NFData ConfigurationItemType

instance ToByteString ConfigurationItemType

instance ToQuery ConfigurationItemType

instance ToHeader ConfigurationItemType

instance ToJSON ConfigurationItemType where
  toJSON = toJSONText

instance FromJSON ConfigurationItemType where
  parseJSON = parseJSONText "ConfigurationItemType"
