{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.RecrawlBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.RecrawlBehavior
  ( RecrawlBehavior
      ( ..,
        CrawlEverything,
        CrawlNewFoldersOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecrawlBehavior = RecrawlBehavior' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CrawlEverything :: RecrawlBehavior
pattern CrawlEverything = RecrawlBehavior' "CRAWL_EVERYTHING"

pattern CrawlNewFoldersOnly :: RecrawlBehavior
pattern CrawlNewFoldersOnly = RecrawlBehavior' "CRAWL_NEW_FOLDERS_ONLY"

{-# COMPLETE
  CrawlEverything,
  CrawlNewFoldersOnly,
  RecrawlBehavior'
  #-}

instance FromText RecrawlBehavior where
  parser = (RecrawlBehavior' . mk) <$> takeText

instance ToText RecrawlBehavior where
  toText (RecrawlBehavior' ci) = original ci

instance Hashable RecrawlBehavior

instance NFData RecrawlBehavior

instance ToByteString RecrawlBehavior

instance ToQuery RecrawlBehavior

instance ToHeader RecrawlBehavior

instance ToJSON RecrawlBehavior where
  toJSON = toJSONText

instance FromJSON RecrawlBehavior where
  parseJSON = parseJSONText "RecrawlBehavior"
