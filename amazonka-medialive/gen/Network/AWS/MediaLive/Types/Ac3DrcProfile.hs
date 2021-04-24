{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Ac3DrcProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3DrcProfile
  ( Ac3DrcProfile
      ( ..,
        FilmStandard,
        None
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ac3 Drc Profile
data Ac3DrcProfile = Ac3DrcProfile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FilmStandard :: Ac3DrcProfile
pattern FilmStandard = Ac3DrcProfile' "FILM_STANDARD"

pattern None :: Ac3DrcProfile
pattern None = Ac3DrcProfile' "NONE"

{-# COMPLETE
  FilmStandard,
  None,
  Ac3DrcProfile'
  #-}

instance FromText Ac3DrcProfile where
  parser = (Ac3DrcProfile' . mk) <$> takeText

instance ToText Ac3DrcProfile where
  toText (Ac3DrcProfile' ci) = original ci

instance Hashable Ac3DrcProfile

instance NFData Ac3DrcProfile

instance ToByteString Ac3DrcProfile

instance ToQuery Ac3DrcProfile

instance ToHeader Ac3DrcProfile

instance ToJSON Ac3DrcProfile where
  toJSON = toJSONText

instance FromJSON Ac3DrcProfile where
  parseJSON = parseJSONText "Ac3DrcProfile"
