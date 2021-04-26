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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2DynamicSubGop
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2DynamicSubGop
  ( Mpeg2DynamicSubGop
      ( ..,
        Mpeg2DynamicSubGopADAPTIVE,
        Mpeg2DynamicSubGopSTATIC
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
newtype Mpeg2DynamicSubGop = Mpeg2DynamicSubGop'
  { fromMpeg2DynamicSubGop ::
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

pattern Mpeg2DynamicSubGopADAPTIVE :: Mpeg2DynamicSubGop
pattern Mpeg2DynamicSubGopADAPTIVE = Mpeg2DynamicSubGop' "ADAPTIVE"

pattern Mpeg2DynamicSubGopSTATIC :: Mpeg2DynamicSubGop
pattern Mpeg2DynamicSubGopSTATIC = Mpeg2DynamicSubGop' "STATIC"

{-# COMPLETE
  Mpeg2DynamicSubGopADAPTIVE,
  Mpeg2DynamicSubGopSTATIC,
  Mpeg2DynamicSubGop'
  #-}

instance Prelude.FromText Mpeg2DynamicSubGop where
  parser = Mpeg2DynamicSubGop' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2DynamicSubGop where
  toText (Mpeg2DynamicSubGop' x) = x

instance Prelude.Hashable Mpeg2DynamicSubGop

instance Prelude.NFData Mpeg2DynamicSubGop

instance Prelude.ToByteString Mpeg2DynamicSubGop

instance Prelude.ToQuery Mpeg2DynamicSubGop

instance Prelude.ToHeader Mpeg2DynamicSubGop

instance Prelude.ToJSON Mpeg2DynamicSubGop where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2DynamicSubGop where
  parseJSON = Prelude.parseJSONText "Mpeg2DynamicSubGop"
