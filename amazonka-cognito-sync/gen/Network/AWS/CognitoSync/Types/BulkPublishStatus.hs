{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types.BulkPublishStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.BulkPublishStatus
  ( BulkPublishStatus
      ( ..,
        Failed,
        InProgress,
        NotStarted,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BulkPublishStatus = BulkPublishStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: BulkPublishStatus
pattern Failed = BulkPublishStatus' "FAILED"

pattern InProgress :: BulkPublishStatus
pattern InProgress = BulkPublishStatus' "IN_PROGRESS"

pattern NotStarted :: BulkPublishStatus
pattern NotStarted = BulkPublishStatus' "NOT_STARTED"

pattern Succeeded :: BulkPublishStatus
pattern Succeeded = BulkPublishStatus' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  NotStarted,
  Succeeded,
  BulkPublishStatus'
  #-}

instance FromText BulkPublishStatus where
  parser = (BulkPublishStatus' . mk) <$> takeText

instance ToText BulkPublishStatus where
  toText (BulkPublishStatus' ci) = original ci

instance Hashable BulkPublishStatus

instance NFData BulkPublishStatus

instance ToByteString BulkPublishStatus

instance ToQuery BulkPublishStatus

instance ToHeader BulkPublishStatus

instance FromJSON BulkPublishStatus where
  parseJSON = parseJSONText "BulkPublishStatus"
