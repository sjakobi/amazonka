{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineExecutionStatus
  ( PipelineExecutionStatus
      ( ..,
        PESExecuting,
        PESFailed,
        PESStopped,
        PESStopping,
        PESSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PipelineExecutionStatus
  = PipelineExecutionStatus'
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

pattern PESExecuting :: PipelineExecutionStatus
pattern PESExecuting = PipelineExecutionStatus' "Executing"

pattern PESFailed :: PipelineExecutionStatus
pattern PESFailed = PipelineExecutionStatus' "Failed"

pattern PESStopped :: PipelineExecutionStatus
pattern PESStopped = PipelineExecutionStatus' "Stopped"

pattern PESStopping :: PipelineExecutionStatus
pattern PESStopping = PipelineExecutionStatus' "Stopping"

pattern PESSucceeded :: PipelineExecutionStatus
pattern PESSucceeded = PipelineExecutionStatus' "Succeeded"

{-# COMPLETE
  PESExecuting,
  PESFailed,
  PESStopped,
  PESStopping,
  PESSucceeded,
  PipelineExecutionStatus'
  #-}

instance FromText PipelineExecutionStatus where
  parser = (PipelineExecutionStatus' . mk) <$> takeText

instance ToText PipelineExecutionStatus where
  toText (PipelineExecutionStatus' ci) = original ci

instance Hashable PipelineExecutionStatus

instance NFData PipelineExecutionStatus

instance ToByteString PipelineExecutionStatus

instance ToQuery PipelineExecutionStatus

instance ToHeader PipelineExecutionStatus

instance FromJSON PipelineExecutionStatus where
  parseJSON = parseJSONText "PipelineExecutionStatus"
