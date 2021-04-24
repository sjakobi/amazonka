{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.PipelineId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.PipelineId
  ( PipelineId
      ( ..,
        Pipeline0,
        Pipeline1
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Pipeline ID
data PipelineId = PipelineId' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Pipeline0 :: PipelineId
pattern Pipeline0 = PipelineId' "PIPELINE_0"

pattern Pipeline1 :: PipelineId
pattern Pipeline1 = PipelineId' "PIPELINE_1"

{-# COMPLETE
  Pipeline0,
  Pipeline1,
  PipelineId'
  #-}

instance FromText PipelineId where
  parser = (PipelineId' . mk) <$> takeText

instance ToText PipelineId where
  toText (PipelineId' ci) = original ci

instance Hashable PipelineId

instance NFData PipelineId

instance ToByteString PipelineId

instance ToQuery PipelineId

instance ToHeader PipelineId

instance ToJSON PipelineId where
  toJSON = toJSONText

instance FromJSON PipelineId where
  parseJSON = parseJSONText "PipelineId"
