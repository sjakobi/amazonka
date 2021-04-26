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
-- Module      : Network.AWS.MediaLive.Types.H264ForceFieldPictures
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ForceFieldPictures
  ( H264ForceFieldPictures
      ( ..,
        H264ForceFieldPicturesDISABLED,
        H264ForceFieldPicturesENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Force Field Pictures
newtype H264ForceFieldPictures = H264ForceFieldPictures'
  { fromH264ForceFieldPictures ::
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

pattern H264ForceFieldPicturesDISABLED :: H264ForceFieldPictures
pattern H264ForceFieldPicturesDISABLED = H264ForceFieldPictures' "DISABLED"

pattern H264ForceFieldPicturesENABLED :: H264ForceFieldPictures
pattern H264ForceFieldPicturesENABLED = H264ForceFieldPictures' "ENABLED"

{-# COMPLETE
  H264ForceFieldPicturesDISABLED,
  H264ForceFieldPicturesENABLED,
  H264ForceFieldPictures'
  #-}

instance Prelude.FromText H264ForceFieldPictures where
  parser = H264ForceFieldPictures' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264ForceFieldPictures where
  toText (H264ForceFieldPictures' x) = x

instance Prelude.Hashable H264ForceFieldPictures

instance Prelude.NFData H264ForceFieldPictures

instance Prelude.ToByteString H264ForceFieldPictures

instance Prelude.ToQuery H264ForceFieldPictures

instance Prelude.ToHeader H264ForceFieldPictures

instance Prelude.ToJSON H264ForceFieldPictures where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264ForceFieldPictures where
  parseJSON = Prelude.parseJSONText "H264ForceFieldPictures"
