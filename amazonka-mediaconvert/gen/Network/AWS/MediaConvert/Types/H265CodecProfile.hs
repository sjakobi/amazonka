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
-- Module      : Network.AWS.MediaConvert.Types.H265CodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265CodecProfile
  ( H265CodecProfile
      ( ..,
        H265CodecProfileMAIN10HIGH,
        H265CodecProfileMAIN10MAIN,
        H265CodecProfileMAIN42210BITHIGH,
        H265CodecProfileMAIN42210BITMAIN,
        H265CodecProfileMAIN4228BITHIGH,
        H265CodecProfileMAIN4228BITMAIN,
        H265CodecProfileMAINHIGH,
        H265CodecProfileMAINMAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Represents the Profile and Tier, per the HEVC (H.265) specification.
-- Selections are grouped as [Profile] \/ [Tier], so \"Main\/High\"
-- represents Main Profile with High Tier. 4:2:2 profiles are only
-- available with the HEVC 4:2:2 License.
newtype H265CodecProfile = H265CodecProfile'
  { fromH265CodecProfile ::
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

pattern H265CodecProfileMAIN10HIGH :: H265CodecProfile
pattern H265CodecProfileMAIN10HIGH = H265CodecProfile' "MAIN10_HIGH"

pattern H265CodecProfileMAIN10MAIN :: H265CodecProfile
pattern H265CodecProfileMAIN10MAIN = H265CodecProfile' "MAIN10_MAIN"

pattern H265CodecProfileMAIN42210BITHIGH :: H265CodecProfile
pattern H265CodecProfileMAIN42210BITHIGH = H265CodecProfile' "MAIN_422_10BIT_HIGH"

pattern H265CodecProfileMAIN42210BITMAIN :: H265CodecProfile
pattern H265CodecProfileMAIN42210BITMAIN = H265CodecProfile' "MAIN_422_10BIT_MAIN"

pattern H265CodecProfileMAIN4228BITHIGH :: H265CodecProfile
pattern H265CodecProfileMAIN4228BITHIGH = H265CodecProfile' "MAIN_422_8BIT_HIGH"

pattern H265CodecProfileMAIN4228BITMAIN :: H265CodecProfile
pattern H265CodecProfileMAIN4228BITMAIN = H265CodecProfile' "MAIN_422_8BIT_MAIN"

pattern H265CodecProfileMAINHIGH :: H265CodecProfile
pattern H265CodecProfileMAINHIGH = H265CodecProfile' "MAIN_HIGH"

pattern H265CodecProfileMAINMAIN :: H265CodecProfile
pattern H265CodecProfileMAINMAIN = H265CodecProfile' "MAIN_MAIN"

{-# COMPLETE
  H265CodecProfileMAIN10HIGH,
  H265CodecProfileMAIN10MAIN,
  H265CodecProfileMAIN42210BITHIGH,
  H265CodecProfileMAIN42210BITMAIN,
  H265CodecProfileMAIN4228BITHIGH,
  H265CodecProfileMAIN4228BITMAIN,
  H265CodecProfileMAINHIGH,
  H265CodecProfileMAINMAIN,
  H265CodecProfile'
  #-}

instance Prelude.FromText H265CodecProfile where
  parser = H265CodecProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265CodecProfile where
  toText (H265CodecProfile' x) = x

instance Prelude.Hashable H265CodecProfile

instance Prelude.NFData H265CodecProfile

instance Prelude.ToByteString H265CodecProfile

instance Prelude.ToQuery H265CodecProfile

instance Prelude.ToHeader H265CodecProfile

instance Prelude.ToJSON H265CodecProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265CodecProfile where
  parseJSON = Prelude.parseJSONText "H265CodecProfile"
