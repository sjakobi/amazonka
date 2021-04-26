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
-- Module      : Network.AWS.MediaConvert.Types.AacCodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacCodecProfile
  ( AacCodecProfile
      ( ..,
        AacCodecProfileHEV1,
        AacCodecProfileHEV2,
        AacCodecProfileLC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | AAC Profile.
newtype AacCodecProfile = AacCodecProfile'
  { fromAacCodecProfile ::
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

pattern AacCodecProfileHEV1 :: AacCodecProfile
pattern AacCodecProfileHEV1 = AacCodecProfile' "HEV1"

pattern AacCodecProfileHEV2 :: AacCodecProfile
pattern AacCodecProfileHEV2 = AacCodecProfile' "HEV2"

pattern AacCodecProfileLC :: AacCodecProfile
pattern AacCodecProfileLC = AacCodecProfile' "LC"

{-# COMPLETE
  AacCodecProfileHEV1,
  AacCodecProfileHEV2,
  AacCodecProfileLC,
  AacCodecProfile'
  #-}

instance Prelude.FromText AacCodecProfile where
  parser = AacCodecProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacCodecProfile where
  toText (AacCodecProfile' x) = x

instance Prelude.Hashable AacCodecProfile

instance Prelude.NFData AacCodecProfile

instance Prelude.ToByteString AacCodecProfile

instance Prelude.ToQuery AacCodecProfile

instance Prelude.ToHeader AacCodecProfile

instance Prelude.ToJSON AacCodecProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacCodecProfile where
  parseJSON = Prelude.parseJSONText "AacCodecProfile"
