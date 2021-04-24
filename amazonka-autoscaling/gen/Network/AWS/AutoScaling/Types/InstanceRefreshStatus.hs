{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.InstanceRefreshStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceRefreshStatus
  ( InstanceRefreshStatus
      ( ..,
        IRSCancelled,
        IRSCancelling,
        IRSFailed,
        IRSInProgress,
        IRSPending,
        IRSSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceRefreshStatus
  = InstanceRefreshStatus'
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

pattern IRSCancelled :: InstanceRefreshStatus
pattern IRSCancelled = InstanceRefreshStatus' "Cancelled"

pattern IRSCancelling :: InstanceRefreshStatus
pattern IRSCancelling = InstanceRefreshStatus' "Cancelling"

pattern IRSFailed :: InstanceRefreshStatus
pattern IRSFailed = InstanceRefreshStatus' "Failed"

pattern IRSInProgress :: InstanceRefreshStatus
pattern IRSInProgress = InstanceRefreshStatus' "InProgress"

pattern IRSPending :: InstanceRefreshStatus
pattern IRSPending = InstanceRefreshStatus' "Pending"

pattern IRSSuccessful :: InstanceRefreshStatus
pattern IRSSuccessful = InstanceRefreshStatus' "Successful"

{-# COMPLETE
  IRSCancelled,
  IRSCancelling,
  IRSFailed,
  IRSInProgress,
  IRSPending,
  IRSSuccessful,
  InstanceRefreshStatus'
  #-}

instance FromText InstanceRefreshStatus where
  parser = (InstanceRefreshStatus' . mk) <$> takeText

instance ToText InstanceRefreshStatus where
  toText (InstanceRefreshStatus' ci) = original ci

instance Hashable InstanceRefreshStatus

instance NFData InstanceRefreshStatus

instance ToByteString InstanceRefreshStatus

instance ToQuery InstanceRefreshStatus

instance ToHeader InstanceRefreshStatus

instance FromXML InstanceRefreshStatus where
  parseXML = parseXMLText "InstanceRefreshStatus"
