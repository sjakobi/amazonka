{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.InstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.InstanceStatus
  ( InstanceStatus
      ( ..,
        ISAvailable,
        ISInUse,
        ISNotAvailable,
        ISPreparing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceStatus = InstanceStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISAvailable :: InstanceStatus
pattern ISAvailable = InstanceStatus' "AVAILABLE"

pattern ISInUse :: InstanceStatus
pattern ISInUse = InstanceStatus' "IN_USE"

pattern ISNotAvailable :: InstanceStatus
pattern ISNotAvailable = InstanceStatus' "NOT_AVAILABLE"

pattern ISPreparing :: InstanceStatus
pattern ISPreparing = InstanceStatus' "PREPARING"

{-# COMPLETE
  ISAvailable,
  ISInUse,
  ISNotAvailable,
  ISPreparing,
  InstanceStatus'
  #-}

instance FromText InstanceStatus where
  parser = (InstanceStatus' . mk) <$> takeText

instance ToText InstanceStatus where
  toText (InstanceStatus' ci) = original ci

instance Hashable InstanceStatus

instance NFData InstanceStatus

instance ToByteString InstanceStatus

instance ToQuery InstanceStatus

instance ToHeader InstanceStatus

instance FromJSON InstanceStatus where
  parseJSON = parseJSONText "InstanceStatus"
