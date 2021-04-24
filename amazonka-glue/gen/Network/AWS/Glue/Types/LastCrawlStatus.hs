{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.LastCrawlStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.LastCrawlStatus
  ( LastCrawlStatus
      ( ..,
        LCSCancelled,
        LCSFailed,
        LCSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LastCrawlStatus = LastCrawlStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LCSCancelled :: LastCrawlStatus
pattern LCSCancelled = LastCrawlStatus' "CANCELLED"

pattern LCSFailed :: LastCrawlStatus
pattern LCSFailed = LastCrawlStatus' "FAILED"

pattern LCSSucceeded :: LastCrawlStatus
pattern LCSSucceeded = LastCrawlStatus' "SUCCEEDED"

{-# COMPLETE
  LCSCancelled,
  LCSFailed,
  LCSSucceeded,
  LastCrawlStatus'
  #-}

instance FromText LastCrawlStatus where
  parser = (LastCrawlStatus' . mk) <$> takeText

instance ToText LastCrawlStatus where
  toText (LastCrawlStatus' ci) = original ci

instance Hashable LastCrawlStatus

instance NFData LastCrawlStatus

instance ToByteString LastCrawlStatus

instance ToQuery LastCrawlStatus

instance ToHeader LastCrawlStatus

instance FromJSON LastCrawlStatus where
  parseJSON = parseJSONText "LastCrawlStatus"
