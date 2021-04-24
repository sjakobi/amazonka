{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.RegistryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.RegistryStatus
  ( RegistryStatus
      ( ..,
        Available,
        Deleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RegistryStatus = RegistryStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Available :: RegistryStatus
pattern Available = RegistryStatus' "AVAILABLE"

pattern Deleting :: RegistryStatus
pattern Deleting = RegistryStatus' "DELETING"

{-# COMPLETE
  Available,
  Deleting,
  RegistryStatus'
  #-}

instance FromText RegistryStatus where
  parser = (RegistryStatus' . mk) <$> takeText

instance ToText RegistryStatus where
  toText (RegistryStatus' ci) = original ci

instance Hashable RegistryStatus

instance NFData RegistryStatus

instance ToByteString RegistryStatus

instance ToQuery RegistryStatus

instance ToHeader RegistryStatus

instance FromJSON RegistryStatus where
  parseJSON = parseJSONText "RegistryStatus"
