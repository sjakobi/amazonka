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
-- Module      : Network.AWS.MediaLive.Types.H264Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264Profile
  ( H264Profile
      ( ..,
        H264ProfileBASELINE,
        H264ProfileHIGH,
        H264ProfileHIGH10BIT,
        H264ProfileHIGH422,
        H264ProfileHIGH42210BIT,
        H264ProfileMAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Profile
newtype H264Profile = H264Profile'
  { fromH264Profile ::
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

pattern H264ProfileBASELINE :: H264Profile
pattern H264ProfileBASELINE = H264Profile' "BASELINE"

pattern H264ProfileHIGH :: H264Profile
pattern H264ProfileHIGH = H264Profile' "HIGH"

pattern H264ProfileHIGH10BIT :: H264Profile
pattern H264ProfileHIGH10BIT = H264Profile' "HIGH_10BIT"

pattern H264ProfileHIGH422 :: H264Profile
pattern H264ProfileHIGH422 = H264Profile' "HIGH_422"

pattern H264ProfileHIGH42210BIT :: H264Profile
pattern H264ProfileHIGH42210BIT = H264Profile' "HIGH_422_10BIT"

pattern H264ProfileMAIN :: H264Profile
pattern H264ProfileMAIN = H264Profile' "MAIN"

{-# COMPLETE
  H264ProfileBASELINE,
  H264ProfileHIGH,
  H264ProfileHIGH10BIT,
  H264ProfileHIGH422,
  H264ProfileHIGH42210BIT,
  H264ProfileMAIN,
  H264Profile'
  #-}

instance Prelude.FromText H264Profile where
  parser = H264Profile' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264Profile where
  toText (H264Profile' x) = x

instance Prelude.Hashable H264Profile

instance Prelude.NFData H264Profile

instance Prelude.ToByteString H264Profile

instance Prelude.ToQuery H264Profile

instance Prelude.ToHeader H264Profile

instance Prelude.ToJSON H264Profile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264Profile where
  parseJSON = Prelude.parseJSONText "H264Profile"
