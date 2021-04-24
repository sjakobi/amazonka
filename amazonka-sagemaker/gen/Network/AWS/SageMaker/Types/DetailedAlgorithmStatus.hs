{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DetailedAlgorithmStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DetailedAlgorithmStatus
  ( DetailedAlgorithmStatus
      ( ..,
        DASCompleted,
        DASFailed,
        DASInProgress,
        DASNotStarted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DetailedAlgorithmStatus
  = DetailedAlgorithmStatus'
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

pattern DASCompleted :: DetailedAlgorithmStatus
pattern DASCompleted = DetailedAlgorithmStatus' "Completed"

pattern DASFailed :: DetailedAlgorithmStatus
pattern DASFailed = DetailedAlgorithmStatus' "Failed"

pattern DASInProgress :: DetailedAlgorithmStatus
pattern DASInProgress = DetailedAlgorithmStatus' "InProgress"

pattern DASNotStarted :: DetailedAlgorithmStatus
pattern DASNotStarted = DetailedAlgorithmStatus' "NotStarted"

{-# COMPLETE
  DASCompleted,
  DASFailed,
  DASInProgress,
  DASNotStarted,
  DetailedAlgorithmStatus'
  #-}

instance FromText DetailedAlgorithmStatus where
  parser = (DetailedAlgorithmStatus' . mk) <$> takeText

instance ToText DetailedAlgorithmStatus where
  toText (DetailedAlgorithmStatus' ci) = original ci

instance Hashable DetailedAlgorithmStatus

instance NFData DetailedAlgorithmStatus

instance ToByteString DetailedAlgorithmStatus

instance ToQuery DetailedAlgorithmStatus

instance ToHeader DetailedAlgorithmStatus

instance FromJSON DetailedAlgorithmStatus where
  parseJSON = parseJSONText "DetailedAlgorithmStatus"
