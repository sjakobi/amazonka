{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.JobStatus
  ( JobStatus
      ( ..,
        Canceled,
        Complete,
        Error',
        Progressing,
        Submitted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
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

pattern Canceled :: JobStatus
pattern Canceled = JobStatus' "CANCELED"

pattern Complete :: JobStatus
pattern Complete = JobStatus' "COMPLETE"

pattern Error' :: JobStatus
pattern Error' = JobStatus' "ERROR"

pattern Progressing :: JobStatus
pattern Progressing = JobStatus' "PROGRESSING"

pattern Submitted :: JobStatus
pattern Submitted = JobStatus' "SUBMITTED"

{-# COMPLETE
  Canceled,
  Complete,
  Error',
  Progressing,
  Submitted,
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
