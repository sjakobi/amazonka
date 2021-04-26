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
-- Module      : Network.AWS.MediaConvert.Types.H264CodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264CodecProfile
  ( H264CodecProfile
      ( ..,
        H264CodecProfileBASELINE,
        H264CodecProfileHIGH,
        H264CodecProfileHIGH10BIT,
        H264CodecProfileHIGH422,
        H264CodecProfileHIGH42210BIT,
        H264CodecProfileMAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H.264 Profile. High 4:2:2 and 10-bit profiles are only available with
-- the AVC-I License.
newtype H264CodecProfile = H264CodecProfile'
  { fromH264CodecProfile ::
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

pattern H264CodecProfileBASELINE :: H264CodecProfile
pattern H264CodecProfileBASELINE = H264CodecProfile' "BASELINE"

pattern H264CodecProfileHIGH :: H264CodecProfile
pattern H264CodecProfileHIGH = H264CodecProfile' "HIGH"

pattern H264CodecProfileHIGH10BIT :: H264CodecProfile
pattern H264CodecProfileHIGH10BIT = H264CodecProfile' "HIGH_10BIT"

pattern H264CodecProfileHIGH422 :: H264CodecProfile
pattern H264CodecProfileHIGH422 = H264CodecProfile' "HIGH_422"

pattern H264CodecProfileHIGH42210BIT :: H264CodecProfile
pattern H264CodecProfileHIGH42210BIT = H264CodecProfile' "HIGH_422_10BIT"

pattern H264CodecProfileMAIN :: H264CodecProfile
pattern H264CodecProfileMAIN = H264CodecProfile' "MAIN"

{-# COMPLETE
  H264CodecProfileBASELINE,
  H264CodecProfileHIGH,
  H264CodecProfileHIGH10BIT,
  H264CodecProfileHIGH422,
  H264CodecProfileHIGH42210BIT,
  H264CodecProfileMAIN,
  H264CodecProfile'
  #-}

instance Prelude.FromText H264CodecProfile where
  parser = H264CodecProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264CodecProfile where
  toText (H264CodecProfile' x) = x

instance Prelude.Hashable H264CodecProfile

instance Prelude.NFData H264CodecProfile

instance Prelude.ToByteString H264CodecProfile

instance Prelude.ToQuery H264CodecProfile

instance Prelude.ToHeader H264CodecProfile

instance Prelude.ToJSON H264CodecProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264CodecProfile where
  parseJSON = Prelude.parseJSONText "H264CodecProfile"
