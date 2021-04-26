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
-- Module      : Network.AWS.MediaConvert.Types.DolbyVisionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DolbyVisionProfile
  ( DolbyVisionProfile
      ( ..,
        DolbyVisionProfilePROFILE5
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | In the current MediaConvert implementation, the Dolby Vision profile is
-- always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby
-- Vision frame interleaved data.
newtype DolbyVisionProfile = DolbyVisionProfile'
  { fromDolbyVisionProfile ::
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

pattern DolbyVisionProfilePROFILE5 :: DolbyVisionProfile
pattern DolbyVisionProfilePROFILE5 = DolbyVisionProfile' "PROFILE_5"

{-# COMPLETE
  DolbyVisionProfilePROFILE5,
  DolbyVisionProfile'
  #-}

instance Prelude.FromText DolbyVisionProfile where
  parser = DolbyVisionProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText DolbyVisionProfile where
  toText (DolbyVisionProfile' x) = x

instance Prelude.Hashable DolbyVisionProfile

instance Prelude.NFData DolbyVisionProfile

instance Prelude.ToByteString DolbyVisionProfile

instance Prelude.ToQuery DolbyVisionProfile

instance Prelude.ToHeader DolbyVisionProfile

instance Prelude.ToJSON DolbyVisionProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DolbyVisionProfile where
  parseJSON = Prelude.parseJSONText "DolbyVisionProfile"
