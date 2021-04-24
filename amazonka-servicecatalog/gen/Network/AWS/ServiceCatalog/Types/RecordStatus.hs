{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.RecordStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.RecordStatus
  ( RecordStatus
      ( ..,
        RSCreated,
        RSFailed,
        RSInProgress,
        RSInProgressInError,
        RSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecordStatus = RecordStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RSCreated :: RecordStatus
pattern RSCreated = RecordStatus' "CREATED"

pattern RSFailed :: RecordStatus
pattern RSFailed = RecordStatus' "FAILED"

pattern RSInProgress :: RecordStatus
pattern RSInProgress = RecordStatus' "IN_PROGRESS"

pattern RSInProgressInError :: RecordStatus
pattern RSInProgressInError = RecordStatus' "IN_PROGRESS_IN_ERROR"

pattern RSSucceeded :: RecordStatus
pattern RSSucceeded = RecordStatus' "SUCCEEDED"

{-# COMPLETE
  RSCreated,
  RSFailed,
  RSInProgress,
  RSInProgressInError,
  RSSucceeded,
  RecordStatus'
  #-}

instance FromText RecordStatus where
  parser = (RecordStatus' . mk) <$> takeText

instance ToText RecordStatus where
  toText (RecordStatus' ci) = original ci

instance Hashable RecordStatus

instance NFData RecordStatus

instance ToByteString RecordStatus

instance ToQuery RecordStatus

instance ToHeader RecordStatus

instance FromJSON RecordStatus where
  parseJSON = parseJSONText "RecordStatus"
