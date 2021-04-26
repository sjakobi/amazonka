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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2CodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2CodecProfile
  ( Mpeg2CodecProfile
      ( ..,
        Mpeg2CodecProfileMAIN,
        Mpeg2CodecProfilePROFILE422
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video
-- output.
newtype Mpeg2CodecProfile = Mpeg2CodecProfile'
  { fromMpeg2CodecProfile ::
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

pattern Mpeg2CodecProfileMAIN :: Mpeg2CodecProfile
pattern Mpeg2CodecProfileMAIN = Mpeg2CodecProfile' "MAIN"

pattern Mpeg2CodecProfilePROFILE422 :: Mpeg2CodecProfile
pattern Mpeg2CodecProfilePROFILE422 = Mpeg2CodecProfile' "PROFILE_422"

{-# COMPLETE
  Mpeg2CodecProfileMAIN,
  Mpeg2CodecProfilePROFILE422,
  Mpeg2CodecProfile'
  #-}

instance Prelude.FromText Mpeg2CodecProfile where
  parser = Mpeg2CodecProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2CodecProfile where
  toText (Mpeg2CodecProfile' x) = x

instance Prelude.Hashable Mpeg2CodecProfile

instance Prelude.NFData Mpeg2CodecProfile

instance Prelude.ToByteString Mpeg2CodecProfile

instance Prelude.ToQuery Mpeg2CodecProfile

instance Prelude.ToHeader Mpeg2CodecProfile

instance Prelude.ToJSON Mpeg2CodecProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2CodecProfile where
  parseJSON = Prelude.parseJSONText "Mpeg2CodecProfile"
