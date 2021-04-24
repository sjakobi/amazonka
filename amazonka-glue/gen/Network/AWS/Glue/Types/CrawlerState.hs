{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlerState
  ( CrawlerState
      ( ..,
        CReady,
        CRunning,
        CStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CrawlerState = CrawlerState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CReady :: CrawlerState
pattern CReady = CrawlerState' "READY"

pattern CRunning :: CrawlerState
pattern CRunning = CrawlerState' "RUNNING"

pattern CStopping :: CrawlerState
pattern CStopping = CrawlerState' "STOPPING"

{-# COMPLETE
  CReady,
  CRunning,
  CStopping,
  CrawlerState'
  #-}

instance FromText CrawlerState where
  parser = (CrawlerState' . mk) <$> takeText

instance ToText CrawlerState where
  toText (CrawlerState' ci) = original ci

instance Hashable CrawlerState

instance NFData CrawlerState

instance ToByteString CrawlerState

instance ToQuery CrawlerState

instance ToHeader CrawlerState

instance FromJSON CrawlerState where
  parseJSON = parseJSONText "CrawlerState"
