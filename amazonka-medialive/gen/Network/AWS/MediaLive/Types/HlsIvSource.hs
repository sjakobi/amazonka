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
-- Module      : Network.AWS.MediaLive.Types.HlsIvSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsIvSource
  ( HlsIvSource
      ( ..,
        HlsIvSourceEXPLICIT,
        HlsIvSourceFOLLOWSSEGMENTNUMBER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Iv Source
newtype HlsIvSource = HlsIvSource'
  { fromHlsIvSource ::
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

pattern HlsIvSourceEXPLICIT :: HlsIvSource
pattern HlsIvSourceEXPLICIT = HlsIvSource' "EXPLICIT"

pattern HlsIvSourceFOLLOWSSEGMENTNUMBER :: HlsIvSource
pattern HlsIvSourceFOLLOWSSEGMENTNUMBER = HlsIvSource' "FOLLOWS_SEGMENT_NUMBER"

{-# COMPLETE
  HlsIvSourceEXPLICIT,
  HlsIvSourceFOLLOWSSEGMENTNUMBER,
  HlsIvSource'
  #-}

instance Prelude.FromText HlsIvSource where
  parser = HlsIvSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsIvSource where
  toText (HlsIvSource' x) = x

instance Prelude.Hashable HlsIvSource

instance Prelude.NFData HlsIvSource

instance Prelude.ToByteString HlsIvSource

instance Prelude.ToQuery HlsIvSource

instance Prelude.ToHeader HlsIvSource

instance Prelude.ToJSON HlsIvSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsIvSource where
  parseJSON = Prelude.parseJSONText "HlsIvSource"
