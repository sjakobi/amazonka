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
-- Module      : Network.AWS.MediaLive.Types.AacProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacProfile
  ( AacProfile
      ( ..,
        AacProfileHEV1,
        AacProfileHEV2,
        AacProfileLC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Aac Profile
newtype AacProfile = AacProfile'
  { fromAacProfile ::
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

pattern AacProfileHEV1 :: AacProfile
pattern AacProfileHEV1 = AacProfile' "HEV1"

pattern AacProfileHEV2 :: AacProfile
pattern AacProfileHEV2 = AacProfile' "HEV2"

pattern AacProfileLC :: AacProfile
pattern AacProfileLC = AacProfile' "LC"

{-# COMPLETE
  AacProfileHEV1,
  AacProfileHEV2,
  AacProfileLC,
  AacProfile'
  #-}

instance Prelude.FromText AacProfile where
  parser = AacProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacProfile where
  toText (AacProfile' x) = x

instance Prelude.Hashable AacProfile

instance Prelude.NFData AacProfile

instance Prelude.ToByteString AacProfile

instance Prelude.ToQuery AacProfile

instance Prelude.ToHeader AacProfile

instance Prelude.ToJSON AacProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacProfile where
  parseJSON = Prelude.parseJSONText "AacProfile"
