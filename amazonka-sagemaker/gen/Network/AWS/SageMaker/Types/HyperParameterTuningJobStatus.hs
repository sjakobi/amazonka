{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobStatus
  ( HyperParameterTuningJobStatus
      ( ..,
        HPTJSCompleted,
        HPTJSFailed,
        HPTJSInProgress,
        HPTJSStopped,
        HPTJSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HyperParameterTuningJobStatus
  = HyperParameterTuningJobStatus'
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

pattern HPTJSCompleted :: HyperParameterTuningJobStatus
pattern HPTJSCompleted = HyperParameterTuningJobStatus' "Completed"

pattern HPTJSFailed :: HyperParameterTuningJobStatus
pattern HPTJSFailed = HyperParameterTuningJobStatus' "Failed"

pattern HPTJSInProgress :: HyperParameterTuningJobStatus
pattern HPTJSInProgress = HyperParameterTuningJobStatus' "InProgress"

pattern HPTJSStopped :: HyperParameterTuningJobStatus
pattern HPTJSStopped = HyperParameterTuningJobStatus' "Stopped"

pattern HPTJSStopping :: HyperParameterTuningJobStatus
pattern HPTJSStopping = HyperParameterTuningJobStatus' "Stopping"

{-# COMPLETE
  HPTJSCompleted,
  HPTJSFailed,
  HPTJSInProgress,
  HPTJSStopped,
  HPTJSStopping,
  HyperParameterTuningJobStatus'
  #-}

instance FromText HyperParameterTuningJobStatus where
  parser = (HyperParameterTuningJobStatus' . mk) <$> takeText

instance ToText HyperParameterTuningJobStatus where
  toText (HyperParameterTuningJobStatus' ci) = original ci

instance Hashable HyperParameterTuningJobStatus

instance NFData HyperParameterTuningJobStatus

instance ToByteString HyperParameterTuningJobStatus

instance ToQuery HyperParameterTuningJobStatus

instance ToHeader HyperParameterTuningJobStatus

instance ToJSON HyperParameterTuningJobStatus where
  toJSON = toJSONText

instance FromJSON HyperParameterTuningJobStatus where
  parseJSON = parseJSONText "HyperParameterTuningJobStatus"
