{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        HEV1,
        HEV2,
        LC
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | AAC Profile.
data AacCodecProfile = AacCodecProfile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HEV1 :: AacCodecProfile
pattern HEV1 = AacCodecProfile' "HEV1"

pattern HEV2 :: AacCodecProfile
pattern HEV2 = AacCodecProfile' "HEV2"

pattern LC :: AacCodecProfile
pattern LC = AacCodecProfile' "LC"

{-# COMPLETE
  HEV1,
  HEV2,
  LC,
  AacCodecProfile'
  #-}

instance FromText AacCodecProfile where
  parser = (AacCodecProfile' . mk) <$> takeText

instance ToText AacCodecProfile where
  toText (AacCodecProfile' ci) = original ci

instance Hashable AacCodecProfile

instance NFData AacCodecProfile

instance ToByteString AacCodecProfile

instance ToQuery AacCodecProfile

instance ToHeader AacCodecProfile

instance ToJSON AacCodecProfile where
  toJSON = toJSONText

instance FromJSON AacCodecProfile where
  parseJSON = parseJSONText "AacCodecProfile"
