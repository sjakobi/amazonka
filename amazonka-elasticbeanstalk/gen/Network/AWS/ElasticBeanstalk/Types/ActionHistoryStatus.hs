{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ActionHistoryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ActionHistoryStatus
  ( ActionHistoryStatus
      ( ..,
        AHSCompleted,
        AHSFailed,
        AHSUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionHistoryStatus
  = ActionHistoryStatus'
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

pattern AHSCompleted :: ActionHistoryStatus
pattern AHSCompleted = ActionHistoryStatus' "Completed"

pattern AHSFailed :: ActionHistoryStatus
pattern AHSFailed = ActionHistoryStatus' "Failed"

pattern AHSUnknown :: ActionHistoryStatus
pattern AHSUnknown = ActionHistoryStatus' "Unknown"

{-# COMPLETE
  AHSCompleted,
  AHSFailed,
  AHSUnknown,
  ActionHistoryStatus'
  #-}

instance FromText ActionHistoryStatus where
  parser = (ActionHistoryStatus' . mk) <$> takeText

instance ToText ActionHistoryStatus where
  toText (ActionHistoryStatus' ci) = original ci

instance Hashable ActionHistoryStatus

instance NFData ActionHistoryStatus

instance ToByteString ActionHistoryStatus

instance ToQuery ActionHistoryStatus

instance ToHeader ActionHistoryStatus

instance FromXML ActionHistoryStatus where
  parseXML = parseXMLText "ActionHistoryStatus"
