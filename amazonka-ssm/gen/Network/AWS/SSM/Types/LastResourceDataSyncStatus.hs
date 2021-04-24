{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.LastResourceDataSyncStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.LastResourceDataSyncStatus
  ( LastResourceDataSyncStatus
      ( ..,
        LRDSSFailed,
        LRDSSInProgress,
        LRDSSSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LastResourceDataSyncStatus
  = LastResourceDataSyncStatus'
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

pattern LRDSSFailed :: LastResourceDataSyncStatus
pattern LRDSSFailed = LastResourceDataSyncStatus' "Failed"

pattern LRDSSInProgress :: LastResourceDataSyncStatus
pattern LRDSSInProgress = LastResourceDataSyncStatus' "InProgress"

pattern LRDSSSuccessful :: LastResourceDataSyncStatus
pattern LRDSSSuccessful = LastResourceDataSyncStatus' "Successful"

{-# COMPLETE
  LRDSSFailed,
  LRDSSInProgress,
  LRDSSSuccessful,
  LastResourceDataSyncStatus'
  #-}

instance FromText LastResourceDataSyncStatus where
  parser = (LastResourceDataSyncStatus' . mk) <$> takeText

instance ToText LastResourceDataSyncStatus where
  toText (LastResourceDataSyncStatus' ci) = original ci

instance Hashable LastResourceDataSyncStatus

instance NFData LastResourceDataSyncStatus

instance ToByteString LastResourceDataSyncStatus

instance ToQuery LastResourceDataSyncStatus

instance ToHeader LastResourceDataSyncStatus

instance FromJSON LastResourceDataSyncStatus where
  parseJSON = parseJSONText "LastResourceDataSyncStatus"
