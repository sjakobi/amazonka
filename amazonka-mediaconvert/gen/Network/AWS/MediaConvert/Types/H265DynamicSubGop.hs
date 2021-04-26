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
-- Module      : Network.AWS.MediaConvert.Types.H265DynamicSubGop
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265DynamicSubGop
  ( H265DynamicSubGop
      ( ..,
        H265DynamicSubGopADAPTIVE,
        H265DynamicSubGopSTATIC
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
newtype H265DynamicSubGop = H265DynamicSubGop'
  { fromH265DynamicSubGop ::
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

pattern H265DynamicSubGopADAPTIVE :: H265DynamicSubGop
pattern H265DynamicSubGopADAPTIVE = H265DynamicSubGop' "ADAPTIVE"

pattern H265DynamicSubGopSTATIC :: H265DynamicSubGop
pattern H265DynamicSubGopSTATIC = H265DynamicSubGop' "STATIC"

{-# COMPLETE
  H265DynamicSubGopADAPTIVE,
  H265DynamicSubGopSTATIC,
  H265DynamicSubGop'
  #-}

instance Prelude.FromText H265DynamicSubGop where
  parser = H265DynamicSubGop' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265DynamicSubGop where
  toText (H265DynamicSubGop' x) = x

instance Prelude.Hashable H265DynamicSubGop

instance Prelude.NFData H265DynamicSubGop

instance Prelude.ToByteString H265DynamicSubGop

instance Prelude.ToQuery H265DynamicSubGop

instance Prelude.ToHeader H265DynamicSubGop

instance Prelude.ToJSON H265DynamicSubGop where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265DynamicSubGop where
  parseJSON = Prelude.parseJSONText "H265DynamicSubGop"
