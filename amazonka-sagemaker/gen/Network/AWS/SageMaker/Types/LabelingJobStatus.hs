{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.LabelingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.LabelingJobStatus
  ( LabelingJobStatus
      ( ..,
        Completed,
        Failed,
        InProgress,
        Initializing,
        Stopped,
        Stopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LabelingJobStatus = LabelingJobStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Completed :: LabelingJobStatus
pattern Completed = LabelingJobStatus' "Completed"

pattern Failed :: LabelingJobStatus
pattern Failed = LabelingJobStatus' "Failed"

pattern InProgress :: LabelingJobStatus
pattern InProgress = LabelingJobStatus' "InProgress"

pattern Initializing :: LabelingJobStatus
pattern Initializing = LabelingJobStatus' "Initializing"

pattern Stopped :: LabelingJobStatus
pattern Stopped = LabelingJobStatus' "Stopped"

pattern Stopping :: LabelingJobStatus
pattern Stopping = LabelingJobStatus' "Stopping"

{-# COMPLETE
  Completed,
  Failed,
  InProgress,
  Initializing,
  Stopped,
  Stopping,
  LabelingJobStatus'
  #-}

instance FromText LabelingJobStatus where
  parser = (LabelingJobStatus' . mk) <$> takeText

instance ToText LabelingJobStatus where
  toText (LabelingJobStatus' ci) = original ci

instance Hashable LabelingJobStatus

instance NFData LabelingJobStatus

instance ToByteString LabelingJobStatus

instance ToQuery LabelingJobStatus

instance ToHeader LabelingJobStatus

instance ToJSON LabelingJobStatus where
  toJSON = toJSONText

instance FromJSON LabelingJobStatus where
  parseJSON = parseJSONText "LabelingJobStatus"
