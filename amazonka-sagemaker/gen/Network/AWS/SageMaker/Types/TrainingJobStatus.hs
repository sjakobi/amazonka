{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingJobStatus
  ( TrainingJobStatus
      ( ..,
        TJSCompleted,
        TJSFailed,
        TJSInProgress,
        TJSStopped,
        TJSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TrainingJobStatus = TrainingJobStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TJSCompleted :: TrainingJobStatus
pattern TJSCompleted = TrainingJobStatus' "Completed"

pattern TJSFailed :: TrainingJobStatus
pattern TJSFailed = TrainingJobStatus' "Failed"

pattern TJSInProgress :: TrainingJobStatus
pattern TJSInProgress = TrainingJobStatus' "InProgress"

pattern TJSStopped :: TrainingJobStatus
pattern TJSStopped = TrainingJobStatus' "Stopped"

pattern TJSStopping :: TrainingJobStatus
pattern TJSStopping = TrainingJobStatus' "Stopping"

{-# COMPLETE
  TJSCompleted,
  TJSFailed,
  TJSInProgress,
  TJSStopped,
  TJSStopping,
  TrainingJobStatus'
  #-}

instance FromText TrainingJobStatus where
  parser = (TrainingJobStatus' . mk) <$> takeText

instance ToText TrainingJobStatus where
  toText (TrainingJobStatus' ci) = original ci

instance Hashable TrainingJobStatus

instance NFData TrainingJobStatus

instance ToByteString TrainingJobStatus

instance ToQuery TrainingJobStatus

instance ToHeader TrainingJobStatus

instance ToJSON TrainingJobStatus where
  toJSON = toJSONText

instance FromJSON TrainingJobStatus where
  parseJSON = parseJSONText "TrainingJobStatus"
