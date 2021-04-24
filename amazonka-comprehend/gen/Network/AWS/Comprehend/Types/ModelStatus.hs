{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.ModelStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.ModelStatus
  ( ModelStatus
      ( ..,
        MSDeleting,
        MSInError,
        MSStopRequested,
        MSStopped,
        MSSubmitted,
        MSTrained,
        MSTraining
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelStatus = ModelStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MSDeleting :: ModelStatus
pattern MSDeleting = ModelStatus' "DELETING"

pattern MSInError :: ModelStatus
pattern MSInError = ModelStatus' "IN_ERROR"

pattern MSStopRequested :: ModelStatus
pattern MSStopRequested = ModelStatus' "STOP_REQUESTED"

pattern MSStopped :: ModelStatus
pattern MSStopped = ModelStatus' "STOPPED"

pattern MSSubmitted :: ModelStatus
pattern MSSubmitted = ModelStatus' "SUBMITTED"

pattern MSTrained :: ModelStatus
pattern MSTrained = ModelStatus' "TRAINED"

pattern MSTraining :: ModelStatus
pattern MSTraining = ModelStatus' "TRAINING"

{-# COMPLETE
  MSDeleting,
  MSInError,
  MSStopRequested,
  MSStopped,
  MSSubmitted,
  MSTrained,
  MSTraining,
  ModelStatus'
  #-}

instance FromText ModelStatus where
  parser = (ModelStatus' . mk) <$> takeText

instance ToText ModelStatus where
  toText (ModelStatus' ci) = original ci

instance Hashable ModelStatus

instance NFData ModelStatus

instance ToByteString ModelStatus

instance ToQuery ModelStatus

instance ToHeader ModelStatus

instance ToJSON ModelStatus where
  toJSON = toJSONText

instance FromJSON ModelStatus where
  parseJSON = parseJSONText "ModelStatus"
