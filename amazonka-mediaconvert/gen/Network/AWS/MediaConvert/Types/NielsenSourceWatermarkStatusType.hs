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
-- Module      : Network.AWS.MediaConvert.Types.NielsenSourceWatermarkStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NielsenSourceWatermarkStatusType
  ( NielsenSourceWatermarkStatusType
      ( ..,
        NielsenSourceWatermarkStatusTypeCLEAN,
        NielsenSourceWatermarkStatusTypeWATERMARKED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Required. Specify whether your source content already contains Nielsen
-- non-linear watermarks. When you set this value to Watermarked
-- (WATERMARKED), the service fails the job. Nielsen requires that you add
-- non-linear watermarking to only clean content that doesn\'t already have
-- non-linear Nielsen watermarks.
newtype NielsenSourceWatermarkStatusType = NielsenSourceWatermarkStatusType'
  { fromNielsenSourceWatermarkStatusType ::
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

pattern NielsenSourceWatermarkStatusTypeCLEAN :: NielsenSourceWatermarkStatusType
pattern NielsenSourceWatermarkStatusTypeCLEAN = NielsenSourceWatermarkStatusType' "CLEAN"

pattern NielsenSourceWatermarkStatusTypeWATERMARKED :: NielsenSourceWatermarkStatusType
pattern NielsenSourceWatermarkStatusTypeWATERMARKED = NielsenSourceWatermarkStatusType' "WATERMARKED"

{-# COMPLETE
  NielsenSourceWatermarkStatusTypeCLEAN,
  NielsenSourceWatermarkStatusTypeWATERMARKED,
  NielsenSourceWatermarkStatusType'
  #-}

instance Prelude.FromText NielsenSourceWatermarkStatusType where
  parser = NielsenSourceWatermarkStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NielsenSourceWatermarkStatusType where
  toText (NielsenSourceWatermarkStatusType' x) = x

instance Prelude.Hashable NielsenSourceWatermarkStatusType

instance Prelude.NFData NielsenSourceWatermarkStatusType

instance Prelude.ToByteString NielsenSourceWatermarkStatusType

instance Prelude.ToQuery NielsenSourceWatermarkStatusType

instance Prelude.ToHeader NielsenSourceWatermarkStatusType

instance Prelude.ToJSON NielsenSourceWatermarkStatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NielsenSourceWatermarkStatusType where
  parseJSON = Prelude.parseJSONText "NielsenSourceWatermarkStatusType"
