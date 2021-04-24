{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.PreferredChannelPipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.PreferredChannelPipeline
  ( PreferredChannelPipeline
      ( ..,
        PCPCurrentlyActive,
        PCPPipeline0,
        PCPPipeline1
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Indicates which pipeline is preferred by the multiplex for program ingest.
--
-- If set to \"PIPELINE_0\" or \"PIPELINE_1\" and an unhealthy ingest causes the multiplex to switch to the non-preferred pipeline,
-- it will switch back once that ingest is healthy again. If set to \"CURRENTLY_ACTIVE\",
-- it will not switch back to the other pipeline based on it recovering to a healthy state,
-- it will only switch if the active pipeline becomes unhealthy.
data PreferredChannelPipeline
  = PreferredChannelPipeline'
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

pattern PCPCurrentlyActive :: PreferredChannelPipeline
pattern PCPCurrentlyActive = PreferredChannelPipeline' "CURRENTLY_ACTIVE"

pattern PCPPipeline0 :: PreferredChannelPipeline
pattern PCPPipeline0 = PreferredChannelPipeline' "PIPELINE_0"

pattern PCPPipeline1 :: PreferredChannelPipeline
pattern PCPPipeline1 = PreferredChannelPipeline' "PIPELINE_1"

{-# COMPLETE
  PCPCurrentlyActive,
  PCPPipeline0,
  PCPPipeline1,
  PreferredChannelPipeline'
  #-}

instance FromText PreferredChannelPipeline where
  parser = (PreferredChannelPipeline' . mk) <$> takeText

instance ToText PreferredChannelPipeline where
  toText (PreferredChannelPipeline' ci) = original ci

instance Hashable PreferredChannelPipeline

instance NFData PreferredChannelPipeline

instance ToByteString PreferredChannelPipeline

instance ToQuery PreferredChannelPipeline

instance ToHeader PreferredChannelPipeline

instance ToJSON PreferredChannelPipeline where
  toJSON = toJSONText

instance FromJSON PreferredChannelPipeline where
  parseJSON = parseJSONText "PreferredChannelPipeline"
