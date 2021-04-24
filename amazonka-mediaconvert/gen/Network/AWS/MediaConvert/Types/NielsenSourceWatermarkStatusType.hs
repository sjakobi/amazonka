{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NielsenSourceWatermarkStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NielsenSourceWatermarkStatusType
  ( NielsenSourceWatermarkStatusType
      ( ..,
        Clean,
        Watermarked
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Required. Specify whether your source content already contains Nielsen non-linear watermarks. When you set this value to Watermarked (WATERMARKED), the service fails the job. Nielsen requires that you add non-linear watermarking to only clean content that doesn't already  have non-linear Nielsen watermarks.
data NielsenSourceWatermarkStatusType
  = NielsenSourceWatermarkStatusType'
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

pattern Clean :: NielsenSourceWatermarkStatusType
pattern Clean = NielsenSourceWatermarkStatusType' "CLEAN"

pattern Watermarked :: NielsenSourceWatermarkStatusType
pattern Watermarked = NielsenSourceWatermarkStatusType' "WATERMARKED"

{-# COMPLETE
  Clean,
  Watermarked,
  NielsenSourceWatermarkStatusType'
  #-}

instance FromText NielsenSourceWatermarkStatusType where
  parser = (NielsenSourceWatermarkStatusType' . mk) <$> takeText

instance ToText NielsenSourceWatermarkStatusType where
  toText (NielsenSourceWatermarkStatusType' ci) = original ci

instance Hashable NielsenSourceWatermarkStatusType

instance NFData NielsenSourceWatermarkStatusType

instance ToByteString NielsenSourceWatermarkStatusType

instance ToQuery NielsenSourceWatermarkStatusType

instance ToHeader NielsenSourceWatermarkStatusType

instance ToJSON NielsenSourceWatermarkStatusType where
  toJSON = toJSONText

instance FromJSON NielsenSourceWatermarkStatusType where
  parseJSON = parseJSONText "NielsenSourceWatermarkStatusType"
