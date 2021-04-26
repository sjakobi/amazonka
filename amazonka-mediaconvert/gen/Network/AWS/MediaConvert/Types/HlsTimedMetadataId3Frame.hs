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
-- Module      : Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
  ( HlsTimedMetadataId3Frame
      ( ..,
        HlsTimedMetadataId3FrameNONE,
        HlsTimedMetadataId3FramePRIV,
        HlsTimedMetadataId3FrameTDRL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Indicates ID3 frame that has the timecode.
newtype HlsTimedMetadataId3Frame = HlsTimedMetadataId3Frame'
  { fromHlsTimedMetadataId3Frame ::
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

pattern HlsTimedMetadataId3FrameNONE :: HlsTimedMetadataId3Frame
pattern HlsTimedMetadataId3FrameNONE = HlsTimedMetadataId3Frame' "NONE"

pattern HlsTimedMetadataId3FramePRIV :: HlsTimedMetadataId3Frame
pattern HlsTimedMetadataId3FramePRIV = HlsTimedMetadataId3Frame' "PRIV"

pattern HlsTimedMetadataId3FrameTDRL :: HlsTimedMetadataId3Frame
pattern HlsTimedMetadataId3FrameTDRL = HlsTimedMetadataId3Frame' "TDRL"

{-# COMPLETE
  HlsTimedMetadataId3FrameNONE,
  HlsTimedMetadataId3FramePRIV,
  HlsTimedMetadataId3FrameTDRL,
  HlsTimedMetadataId3Frame'
  #-}

instance Prelude.FromText HlsTimedMetadataId3Frame where
  parser = HlsTimedMetadataId3Frame' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsTimedMetadataId3Frame where
  toText (HlsTimedMetadataId3Frame' x) = x

instance Prelude.Hashable HlsTimedMetadataId3Frame

instance Prelude.NFData HlsTimedMetadataId3Frame

instance Prelude.ToByteString HlsTimedMetadataId3Frame

instance Prelude.ToQuery HlsTimedMetadataId3Frame

instance Prelude.ToHeader HlsTimedMetadataId3Frame

instance Prelude.ToJSON HlsTimedMetadataId3Frame where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsTimedMetadataId3Frame where
  parseJSON = Prelude.parseJSONText "HlsTimedMetadataId3Frame"
