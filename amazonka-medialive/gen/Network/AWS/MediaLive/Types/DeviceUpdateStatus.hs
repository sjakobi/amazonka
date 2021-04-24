{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DeviceUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DeviceUpdateStatus
  ( DeviceUpdateStatus
      ( ..,
        NotUpToDate,
        UpToDate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The status of software on the input device.
data DeviceUpdateStatus
  = DeviceUpdateStatus'
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

pattern NotUpToDate :: DeviceUpdateStatus
pattern NotUpToDate = DeviceUpdateStatus' "NOT_UP_TO_DATE"

pattern UpToDate :: DeviceUpdateStatus
pattern UpToDate = DeviceUpdateStatus' "UP_TO_DATE"

{-# COMPLETE
  NotUpToDate,
  UpToDate,
  DeviceUpdateStatus'
  #-}

instance FromText DeviceUpdateStatus where
  parser = (DeviceUpdateStatus' . mk) <$> takeText

instance ToText DeviceUpdateStatus where
  toText (DeviceUpdateStatus' ci) = original ci

instance Hashable DeviceUpdateStatus

instance NFData DeviceUpdateStatus

instance ToByteString DeviceUpdateStatus

instance ToQuery DeviceUpdateStatus

instance ToHeader DeviceUpdateStatus

instance FromJSON DeviceUpdateStatus where
  parseJSON = parseJSONText "DeviceUpdateStatus"
