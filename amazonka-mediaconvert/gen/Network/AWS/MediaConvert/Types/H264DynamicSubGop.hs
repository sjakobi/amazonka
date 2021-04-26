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
-- Module      : Network.AWS.MediaConvert.Types.H264DynamicSubGop
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264DynamicSubGop
  ( H264DynamicSubGop
      ( ..,
        H264DynamicSubGopADAPTIVE,
        H264DynamicSubGopSTATIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose Adaptive to improve subjective video quality for high-motion
-- content. This will cause the service to use fewer B-frames (which infer
-- information based on other frames) for high-motion portions of the video
-- and more B-frames for low-motion portions. The maximum number of
-- B-frames is limited by the value you provide for the setting B frames
-- between reference frames (numberBFramesBetweenReferenceFrames).
newtype H264DynamicSubGop = H264DynamicSubGop'
  { fromH264DynamicSubGop ::
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

pattern H264DynamicSubGopADAPTIVE :: H264DynamicSubGop
pattern H264DynamicSubGopADAPTIVE = H264DynamicSubGop' "ADAPTIVE"

pattern H264DynamicSubGopSTATIC :: H264DynamicSubGop
pattern H264DynamicSubGopSTATIC = H264DynamicSubGop' "STATIC"

{-# COMPLETE
  H264DynamicSubGopADAPTIVE,
  H264DynamicSubGopSTATIC,
  H264DynamicSubGop'
  #-}

instance Prelude.FromText H264DynamicSubGop where
  parser = H264DynamicSubGop' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264DynamicSubGop where
  toText (H264DynamicSubGop' x) = x

instance Prelude.Hashable H264DynamicSubGop

instance Prelude.NFData H264DynamicSubGop

instance Prelude.ToByteString H264DynamicSubGop

instance Prelude.ToQuery H264DynamicSubGop

instance Prelude.ToHeader H264DynamicSubGop

instance Prelude.ToJSON H264DynamicSubGop where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264DynamicSubGop where
  parseJSON = Prelude.parseJSONText "H264DynamicSubGop"
