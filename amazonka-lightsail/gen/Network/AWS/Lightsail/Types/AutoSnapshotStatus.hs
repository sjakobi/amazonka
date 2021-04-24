{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.AutoSnapshotStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AutoSnapshotStatus
  ( AutoSnapshotStatus
      ( ..,
        ASSFailed,
        ASSInProgress,
        ASSNotFound,
        ASSSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutoSnapshotStatus
  = AutoSnapshotStatus'
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

pattern ASSFailed :: AutoSnapshotStatus
pattern ASSFailed = AutoSnapshotStatus' "Failed"

pattern ASSInProgress :: AutoSnapshotStatus
pattern ASSInProgress = AutoSnapshotStatus' "InProgress"

pattern ASSNotFound :: AutoSnapshotStatus
pattern ASSNotFound = AutoSnapshotStatus' "NotFound"

pattern ASSSuccess :: AutoSnapshotStatus
pattern ASSSuccess = AutoSnapshotStatus' "Success"

{-# COMPLETE
  ASSFailed,
  ASSInProgress,
  ASSNotFound,
  ASSSuccess,
  AutoSnapshotStatus'
  #-}

instance FromText AutoSnapshotStatus where
  parser = (AutoSnapshotStatus' . mk) <$> takeText

instance ToText AutoSnapshotStatus where
  toText (AutoSnapshotStatus' ci) = original ci

instance Hashable AutoSnapshotStatus

instance NFData AutoSnapshotStatus

instance ToByteString AutoSnapshotStatus

instance ToQuery AutoSnapshotStatus

instance ToHeader AutoSnapshotStatus

instance FromJSON AutoSnapshotStatus where
  parseJSON = parseJSONText "AutoSnapshotStatus"
