{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Profile5
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data.
data DolbyVisionProfile
  = DolbyVisionProfile'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Profile5 :: DolbyVisionProfile
pattern Profile5 = DolbyVisionProfile' "PROFILE_5"

{-# COMPLETE
  Profile5,
  DolbyVisionProfile'
  #-}

instance FromText DolbyVisionProfile where
  parser = (DolbyVisionProfile' . mk) <$> takeText

instance ToText DolbyVisionProfile where
  toText (DolbyVisionProfile' ci) = original ci

instance Hashable DolbyVisionProfile

instance NFData DolbyVisionProfile

instance ToByteString DolbyVisionProfile

instance ToQuery DolbyVisionProfile

instance ToHeader DolbyVisionProfile

instance ToJSON DolbyVisionProfile where
  toJSON = toJSONText

instance FromJSON DolbyVisionProfile where
  parseJSON = parseJSONText "DolbyVisionProfile"
