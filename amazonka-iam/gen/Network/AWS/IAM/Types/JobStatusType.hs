{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.JobStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.JobStatusType
  ( JobStatusType
      ( ..,
        JSTCompleted,
        JSTFailed,
        JSTInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobStatusType = JobStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JSTCompleted :: JobStatusType
pattern JSTCompleted = JobStatusType' "COMPLETED"

pattern JSTFailed :: JobStatusType
pattern JSTFailed = JobStatusType' "FAILED"

pattern JSTInProgress :: JobStatusType
pattern JSTInProgress = JobStatusType' "IN_PROGRESS"

{-# COMPLETE
  JSTCompleted,
  JSTFailed,
  JSTInProgress,
  JobStatusType'
  #-}

instance FromText JobStatusType where
  parser = (JobStatusType' . mk) <$> takeText

instance ToText JobStatusType where
  toText (JobStatusType' ci) = original ci

instance Hashable JobStatusType

instance NFData JobStatusType

instance ToByteString JobStatusType

instance ToQuery JobStatusType

instance ToHeader JobStatusType

instance FromXML JobStatusType where
  parseXML = parseXMLText "JobStatusType"
