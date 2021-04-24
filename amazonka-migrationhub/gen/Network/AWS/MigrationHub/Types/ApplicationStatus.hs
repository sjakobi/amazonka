{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.ApplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.ApplicationStatus
  ( ApplicationStatus
      ( ..,
        ASCompleted,
        ASInProgress,
        ASNotStarted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApplicationStatus = ApplicationStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASCompleted :: ApplicationStatus
pattern ASCompleted = ApplicationStatus' "COMPLETED"

pattern ASInProgress :: ApplicationStatus
pattern ASInProgress = ApplicationStatus' "IN_PROGRESS"

pattern ASNotStarted :: ApplicationStatus
pattern ASNotStarted = ApplicationStatus' "NOT_STARTED"

{-# COMPLETE
  ASCompleted,
  ASInProgress,
  ASNotStarted,
  ApplicationStatus'
  #-}

instance FromText ApplicationStatus where
  parser = (ApplicationStatus' . mk) <$> takeText

instance ToText ApplicationStatus where
  toText (ApplicationStatus' ci) = original ci

instance Hashable ApplicationStatus

instance NFData ApplicationStatus

instance ToByteString ApplicationStatus

instance ToQuery ApplicationStatus

instance ToHeader ApplicationStatus

instance ToJSON ApplicationStatus where
  toJSON = toJSONText

instance FromJSON ApplicationStatus where
  parseJSON = parseJSONText "ApplicationStatus"
