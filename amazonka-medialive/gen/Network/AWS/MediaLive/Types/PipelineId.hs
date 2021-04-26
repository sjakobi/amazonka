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
-- Module      : Network.AWS.MediaLive.Types.PipelineId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.PipelineId
  ( PipelineId
      ( ..,
        PipelineIdPIPELINE0,
        PipelineIdPIPELINE1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Pipeline ID
newtype PipelineId = PipelineId'
  { fromPipelineId ::
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

pattern PipelineIdPIPELINE0 :: PipelineId
pattern PipelineIdPIPELINE0 = PipelineId' "PIPELINE_0"

pattern PipelineIdPIPELINE1 :: PipelineId
pattern PipelineIdPIPELINE1 = PipelineId' "PIPELINE_1"

{-# COMPLETE
  PipelineIdPIPELINE0,
  PipelineIdPIPELINE1,
  PipelineId'
  #-}

instance Prelude.FromText PipelineId where
  parser = PipelineId' Prelude.<$> Prelude.takeText

instance Prelude.ToText PipelineId where
  toText (PipelineId' x) = x

instance Prelude.Hashable PipelineId

instance Prelude.NFData PipelineId

instance Prelude.ToByteString PipelineId

instance Prelude.ToQuery PipelineId

instance Prelude.ToHeader PipelineId

instance Prelude.ToJSON PipelineId where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PipelineId where
  parseJSON = Prelude.parseJSONText "PipelineId"
