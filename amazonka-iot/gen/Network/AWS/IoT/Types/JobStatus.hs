{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobStatus
  ( JobStatus
      ( ..,
        JSCanceled,
        JSCompleted,
        JSDeletionInProgress,
        JSInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobStatus = JobStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JSCanceled :: JobStatus
pattern JSCanceled = JobStatus' "CANCELED"

pattern JSCompleted :: JobStatus
pattern JSCompleted = JobStatus' "COMPLETED"

pattern JSDeletionInProgress :: JobStatus
pattern JSDeletionInProgress = JobStatus' "DELETION_IN_PROGRESS"

pattern JSInProgress :: JobStatus
pattern JSInProgress = JobStatus' "IN_PROGRESS"

{-# COMPLETE
  JSCanceled,
  JSCompleted,
  JSDeletionInProgress,
  JSInProgress,
  JobStatus'
  #-}

instance FromText JobStatus where
  parser = (JobStatus' . mk) <$> takeText

instance ToText JobStatus where
  toText (JobStatus' ci) = original ci

instance Hashable JobStatus

instance NFData JobStatus

instance ToByteString JobStatus

instance ToQuery JobStatus

instance ToHeader JobStatus

instance ToJSON JobStatus where
  toJSON = toJSONText

instance FromJSON JobStatus where
  parseJSON = parseJSONText "JobStatus"
