{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        HEV1,
        HEV2,
        LC
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Aac Profile
data AacProfile = AacProfile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HEV1 :: AacProfile
pattern HEV1 = AacProfile' "HEV1"

pattern HEV2 :: AacProfile
pattern HEV2 = AacProfile' "HEV2"

pattern LC :: AacProfile
pattern LC = AacProfile' "LC"

{-# COMPLETE
  HEV1,
  HEV2,
  LC,
  AacProfile'
  #-}

instance FromText AacProfile where
  parser = (AacProfile' . mk) <$> takeText

instance ToText AacProfile where
  toText (AacProfile' ci) = original ci

instance Hashable AacProfile

instance NFData AacProfile

instance ToByteString AacProfile

instance ToQuery AacProfile

instance ToHeader AacProfile

instance ToJSON AacProfile where
  toJSON = toJSONText

instance FromJSON AacProfile where
  parseJSON = parseJSONText "AacProfile"
