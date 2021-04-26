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
-- Module      : Network.AWS.MediaLive.Types.UdpTimedMetadataId3Frame
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.UdpTimedMetadataId3Frame
  ( UdpTimedMetadataId3Frame
      ( ..,
        UdpTimedMetadataId3FrameNONE,
        UdpTimedMetadataId3FramePRIV,
        UdpTimedMetadataId3FrameTDRL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Udp Timed Metadata Id3 Frame
newtype UdpTimedMetadataId3Frame = UdpTimedMetadataId3Frame'
  { fromUdpTimedMetadataId3Frame ::
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

pattern UdpTimedMetadataId3FrameNONE :: UdpTimedMetadataId3Frame
pattern UdpTimedMetadataId3FrameNONE = UdpTimedMetadataId3Frame' "NONE"

pattern UdpTimedMetadataId3FramePRIV :: UdpTimedMetadataId3Frame
pattern UdpTimedMetadataId3FramePRIV = UdpTimedMetadataId3Frame' "PRIV"

pattern UdpTimedMetadataId3FrameTDRL :: UdpTimedMetadataId3Frame
pattern UdpTimedMetadataId3FrameTDRL = UdpTimedMetadataId3Frame' "TDRL"

{-# COMPLETE
  UdpTimedMetadataId3FrameNONE,
  UdpTimedMetadataId3FramePRIV,
  UdpTimedMetadataId3FrameTDRL,
  UdpTimedMetadataId3Frame'
  #-}

instance Prelude.FromText UdpTimedMetadataId3Frame where
  parser = UdpTimedMetadataId3Frame' Prelude.<$> Prelude.takeText

instance Prelude.ToText UdpTimedMetadataId3Frame where
  toText (UdpTimedMetadataId3Frame' x) = x

instance Prelude.Hashable UdpTimedMetadataId3Frame

instance Prelude.NFData UdpTimedMetadataId3Frame

instance Prelude.ToByteString UdpTimedMetadataId3Frame

instance Prelude.ToQuery UdpTimedMetadataId3Frame

instance Prelude.ToHeader UdpTimedMetadataId3Frame

instance Prelude.ToJSON UdpTimedMetadataId3Frame where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UdpTimedMetadataId3Frame where
  parseJSON = Prelude.parseJSONText "UdpTimedMetadataId3Frame"
