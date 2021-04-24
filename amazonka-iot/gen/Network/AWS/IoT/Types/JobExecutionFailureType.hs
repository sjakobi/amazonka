{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobExecutionFailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobExecutionFailureType
  ( JobExecutionFailureType
      ( ..,
        JEFTAll,
        JEFTFailed,
        JEFTRejected,
        JEFTTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobExecutionFailureType
  = JobExecutionFailureType'
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

pattern JEFTAll :: JobExecutionFailureType
pattern JEFTAll = JobExecutionFailureType' "ALL"

pattern JEFTFailed :: JobExecutionFailureType
pattern JEFTFailed = JobExecutionFailureType' "FAILED"

pattern JEFTRejected :: JobExecutionFailureType
pattern JEFTRejected = JobExecutionFailureType' "REJECTED"

pattern JEFTTimedOut :: JobExecutionFailureType
pattern JEFTTimedOut = JobExecutionFailureType' "TIMED_OUT"

{-# COMPLETE
  JEFTAll,
  JEFTFailed,
  JEFTRejected,
  JEFTTimedOut,
  JobExecutionFailureType'
  #-}

instance FromText JobExecutionFailureType where
  parser = (JobExecutionFailureType' . mk) <$> takeText

instance ToText JobExecutionFailureType where
  toText (JobExecutionFailureType' ci) = original ci

instance Hashable JobExecutionFailureType

instance NFData JobExecutionFailureType

instance ToByteString JobExecutionFailureType

instance ToQuery JobExecutionFailureType

instance ToHeader JobExecutionFailureType

instance ToJSON JobExecutionFailureType where
  toJSON = toJSONText

instance FromJSON JobExecutionFailureType where
  parseJSON = parseJSONText "JobExecutionFailureType"
