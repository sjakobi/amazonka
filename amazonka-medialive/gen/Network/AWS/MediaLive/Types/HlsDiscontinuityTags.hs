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
-- Module      : Network.AWS.MediaLive.Types.HlsDiscontinuityTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsDiscontinuityTags
  ( HlsDiscontinuityTags
      ( ..,
        HlsDiscontinuityTagsINSERT,
        HlsDiscontinuityTagsNEVERINSERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Discontinuity Tags
newtype HlsDiscontinuityTags = HlsDiscontinuityTags'
  { fromHlsDiscontinuityTags ::
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

pattern HlsDiscontinuityTagsINSERT :: HlsDiscontinuityTags
pattern HlsDiscontinuityTagsINSERT = HlsDiscontinuityTags' "INSERT"

pattern HlsDiscontinuityTagsNEVERINSERT :: HlsDiscontinuityTags
pattern HlsDiscontinuityTagsNEVERINSERT = HlsDiscontinuityTags' "NEVER_INSERT"

{-# COMPLETE
  HlsDiscontinuityTagsINSERT,
  HlsDiscontinuityTagsNEVERINSERT,
  HlsDiscontinuityTags'
  #-}

instance Prelude.FromText HlsDiscontinuityTags where
  parser = HlsDiscontinuityTags' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsDiscontinuityTags where
  toText (HlsDiscontinuityTags' x) = x

instance Prelude.Hashable HlsDiscontinuityTags

instance Prelude.NFData HlsDiscontinuityTags

instance Prelude.ToByteString HlsDiscontinuityTags

instance Prelude.ToQuery HlsDiscontinuityTags

instance Prelude.ToHeader HlsDiscontinuityTags

instance Prelude.ToJSON HlsDiscontinuityTags where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsDiscontinuityTags where
  parseJSON = Prelude.parseJSONText "HlsDiscontinuityTags"
