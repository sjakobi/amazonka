{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlState
  ( CrawlState
      ( ..,
        CSCancelled,
        CSCancelling,
        CSFailed,
        CSRunning,
        CSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CrawlState = CrawlState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSCancelled :: CrawlState
pattern CSCancelled = CrawlState' "CANCELLED"

pattern CSCancelling :: CrawlState
pattern CSCancelling = CrawlState' "CANCELLING"

pattern CSFailed :: CrawlState
pattern CSFailed = CrawlState' "FAILED"

pattern CSRunning :: CrawlState
pattern CSRunning = CrawlState' "RUNNING"

pattern CSSucceeded :: CrawlState
pattern CSSucceeded = CrawlState' "SUCCEEDED"

{-# COMPLETE
  CSCancelled,
  CSCancelling,
  CSFailed,
  CSRunning,
  CSSucceeded,
  CrawlState'
  #-}

instance FromText CrawlState where
  parser = (CrawlState' . mk) <$> takeText

instance ToText CrawlState where
  toText (CrawlState' ci) = original ci

instance Hashable CrawlState

instance NFData CrawlState

instance ToByteString CrawlState

instance ToQuery CrawlState

instance ToHeader CrawlState

instance ToJSON CrawlState where
  toJSON = toJSONText

instance FromJSON CrawlState where
  parseJSON = parseJSONText "CrawlState"
