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
-- Module      : Network.AWS.MediaConvert.Types.MxfAfdSignaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MxfAfdSignaling
  ( MxfAfdSignaling
      ( ..,
        MxfAfdSignalingCOPYFROMVIDEO,
        MxfAfdSignalingNOCOPY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. When you have AFD signaling set up in your output video
-- stream, use this setting to choose whether to also include it in the MXF
-- wrapper. Choose Don\'t copy (NO_COPY) to exclude AFD signaling from the
-- MXF wrapper. Choose Copy from video stream (COPY_FROM_VIDEO) to copy the
-- AFD values from the video stream for this output to the MXF wrapper.
-- Regardless of which option you choose, the AFD values remain in the
-- video stream. Related settings: To set up your output to include or
-- exclude AFD values, see AfdSignaling, under VideoDescription. On the
-- console, find AFD signaling under the output\'s video encoding settings.
newtype MxfAfdSignaling = MxfAfdSignaling'
  { fromMxfAfdSignaling ::
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

pattern MxfAfdSignalingCOPYFROMVIDEO :: MxfAfdSignaling
pattern MxfAfdSignalingCOPYFROMVIDEO = MxfAfdSignaling' "COPY_FROM_VIDEO"

pattern MxfAfdSignalingNOCOPY :: MxfAfdSignaling
pattern MxfAfdSignalingNOCOPY = MxfAfdSignaling' "NO_COPY"

{-# COMPLETE
  MxfAfdSignalingCOPYFROMVIDEO,
  MxfAfdSignalingNOCOPY,
  MxfAfdSignaling'
  #-}

instance Prelude.FromText MxfAfdSignaling where
  parser = MxfAfdSignaling' Prelude.<$> Prelude.takeText

instance Prelude.ToText MxfAfdSignaling where
  toText (MxfAfdSignaling' x) = x

instance Prelude.Hashable MxfAfdSignaling

instance Prelude.NFData MxfAfdSignaling

instance Prelude.ToByteString MxfAfdSignaling

instance Prelude.ToQuery MxfAfdSignaling

instance Prelude.ToHeader MxfAfdSignaling

instance Prelude.ToJSON MxfAfdSignaling where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MxfAfdSignaling where
  parseJSON = Prelude.parseJSONText "MxfAfdSignaling"
