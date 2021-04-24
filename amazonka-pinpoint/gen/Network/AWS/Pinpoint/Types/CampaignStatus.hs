{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignStatus
  ( CampaignStatus
      ( ..,
        CSCompleted,
        CSDeleted,
        CSExecuting,
        CSInvalid,
        CSPaused,
        CSPendingNextRun,
        CSScheduled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CampaignStatus = CampaignStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSCompleted :: CampaignStatus
pattern CSCompleted = CampaignStatus' "COMPLETED"

pattern CSDeleted :: CampaignStatus
pattern CSDeleted = CampaignStatus' "DELETED"

pattern CSExecuting :: CampaignStatus
pattern CSExecuting = CampaignStatus' "EXECUTING"

pattern CSInvalid :: CampaignStatus
pattern CSInvalid = CampaignStatus' "INVALID"

pattern CSPaused :: CampaignStatus
pattern CSPaused = CampaignStatus' "PAUSED"

pattern CSPendingNextRun :: CampaignStatus
pattern CSPendingNextRun = CampaignStatus' "PENDING_NEXT_RUN"

pattern CSScheduled :: CampaignStatus
pattern CSScheduled = CampaignStatus' "SCHEDULED"

{-# COMPLETE
  CSCompleted,
  CSDeleted,
  CSExecuting,
  CSInvalid,
  CSPaused,
  CSPendingNextRun,
  CSScheduled,
  CampaignStatus'
  #-}

instance FromText CampaignStatus where
  parser = (CampaignStatus' . mk) <$> takeText

instance ToText CampaignStatus where
  toText (CampaignStatus' ci) = original ci

instance Hashable CampaignStatus

instance NFData CampaignStatus

instance ToByteString CampaignStatus

instance ToQuery CampaignStatus

instance ToHeader CampaignStatus

instance FromJSON CampaignStatus where
  parseJSON = parseJSONText "CampaignStatus"
