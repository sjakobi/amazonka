{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlerLineageSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlerLineageSettings
  ( CrawlerLineageSettings
      ( ..,
        Disable,
        Enable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CrawlerLineageSettings
  = CrawlerLineageSettings'
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

pattern Disable :: CrawlerLineageSettings
pattern Disable = CrawlerLineageSettings' "DISABLE"

pattern Enable :: CrawlerLineageSettings
pattern Enable = CrawlerLineageSettings' "ENABLE"

{-# COMPLETE
  Disable,
  Enable,
  CrawlerLineageSettings'
  #-}

instance FromText CrawlerLineageSettings where
  parser = (CrawlerLineageSettings' . mk) <$> takeText

instance ToText CrawlerLineageSettings where
  toText (CrawlerLineageSettings' ci) = original ci

instance Hashable CrawlerLineageSettings

instance NFData CrawlerLineageSettings

instance ToByteString CrawlerLineageSettings

instance ToQuery CrawlerLineageSettings

instance ToHeader CrawlerLineageSettings

instance ToJSON CrawlerLineageSettings where
  toJSON = toJSONText

instance FromJSON CrawlerLineageSettings where
  parseJSON = parseJSONText "CrawlerLineageSettings"
