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
-- Module      : Network.AWS.MediaConvert.Types.TimedMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TimedMetadata
  ( TimedMetadata
      ( ..,
        TimedMetadataNONE,
        TimedMetadataPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Applies only to HLS outputs. Use this setting to specify whether the
-- service inserts the ID3 timed metadata from the input in this output.
newtype TimedMetadata = TimedMetadata'
  { fromTimedMetadata ::
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

pattern TimedMetadataNONE :: TimedMetadata
pattern TimedMetadataNONE = TimedMetadata' "NONE"

pattern TimedMetadataPASSTHROUGH :: TimedMetadata
pattern TimedMetadataPASSTHROUGH = TimedMetadata' "PASSTHROUGH"

{-# COMPLETE
  TimedMetadataNONE,
  TimedMetadataPASSTHROUGH,
  TimedMetadata'
  #-}

instance Prelude.FromText TimedMetadata where
  parser = TimedMetadata' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimedMetadata where
  toText (TimedMetadata' x) = x

instance Prelude.Hashable TimedMetadata

instance Prelude.NFData TimedMetadata

instance Prelude.ToByteString TimedMetadata

instance Prelude.ToQuery TimedMetadata

instance Prelude.ToHeader TimedMetadata

instance Prelude.ToJSON TimedMetadata where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimedMetadata where
  parseJSON = Prelude.parseJSONText "TimedMetadata"
