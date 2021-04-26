{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        PreferredChannelPipelineCURRENTLYACTIVE,
        PreferredChannelPipelinePIPELINE0,
        PreferredChannelPipelinePIPELINE1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Indicates which pipeline is preferred by the multiplex for program
-- ingest. If set to \\\"PIPELINE_0\\\" or \\\"PIPELINE_1\\\" and an
-- unhealthy ingest causes the multiplex to switch to the non-preferred
-- pipeline, it will switch back once that ingest is healthy again. If set
-- to \\\"CURRENTLY_ACTIVE\\\", it will not switch back to the other
-- pipeline based on it recovering to a healthy state, it will only switch
-- if the active pipeline becomes unhealthy.
newtype PreferredChannelPipeline = PreferredChannelPipeline'
  { fromPreferredChannelPipeline ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern PreferredChannelPipelineCURRENTLYACTIVE :: PreferredChannelPipeline
pattern PreferredChannelPipelineCURRENTLYACTIVE = PreferredChannelPipeline' "CURRENTLY_ACTIVE"

pattern PreferredChannelPipelinePIPELINE0 :: PreferredChannelPipeline
pattern PreferredChannelPipelinePIPELINE0 = PreferredChannelPipeline' "PIPELINE_0"

pattern PreferredChannelPipelinePIPELINE1 :: PreferredChannelPipeline
pattern PreferredChannelPipelinePIPELINE1 = PreferredChannelPipeline' "PIPELINE_1"

{-# COMPLETE
  PreferredChannelPipelineCURRENTLYACTIVE,
  PreferredChannelPipelinePIPELINE0,
  PreferredChannelPipelinePIPELINE1,
  PreferredChannelPipeline'
  #-}

instance Prelude.FromText PreferredChannelPipeline where
  parser = PreferredChannelPipeline' Prelude.<$> Prelude.takeText

instance Prelude.ToText PreferredChannelPipeline where
  toText (PreferredChannelPipeline' x) = x

instance Prelude.Hashable PreferredChannelPipeline

instance Prelude.NFData PreferredChannelPipeline

instance Prelude.ToByteString PreferredChannelPipeline

instance Prelude.ToQuery PreferredChannelPipeline

instance Prelude.ToHeader PreferredChannelPipeline

instance Prelude.ToJSON PreferredChannelPipeline where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PreferredChannelPipeline where
  parseJSON = Prelude.parseJSONText "PreferredChannelPipeline"
