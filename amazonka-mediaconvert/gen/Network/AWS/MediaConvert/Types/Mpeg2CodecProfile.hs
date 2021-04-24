{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Main,
        Profile422
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.
data Mpeg2CodecProfile = Mpeg2CodecProfile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Main :: Mpeg2CodecProfile
pattern Main = Mpeg2CodecProfile' "MAIN"

pattern Profile422 :: Mpeg2CodecProfile
pattern Profile422 = Mpeg2CodecProfile' "PROFILE_422"

{-# COMPLETE
  Main,
  Profile422,
  Mpeg2CodecProfile'
  #-}

instance FromText Mpeg2CodecProfile where
  parser = (Mpeg2CodecProfile' . mk) <$> takeText

instance ToText Mpeg2CodecProfile where
  toText (Mpeg2CodecProfile' ci) = original ci

instance Hashable Mpeg2CodecProfile

instance NFData Mpeg2CodecProfile

instance ToByteString Mpeg2CodecProfile

instance ToQuery Mpeg2CodecProfile

instance ToHeader Mpeg2CodecProfile

instance ToJSON Mpeg2CodecProfile where
  toJSON = toJSONText

instance FromJSON Mpeg2CodecProfile where
  parseJSON = parseJSONText "Mpeg2CodecProfile"
