{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresCodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresCodecProfile
  ( ProresCodecProfile
      ( ..,
        AppleProres422,
        AppleProres422Hq,
        AppleProres422LT,
        AppleProres422Proxy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Profile (ProResCodecProfile) to specify the type of Apple ProRes codec to use for this output.
data ProresCodecProfile
  = ProresCodecProfile'
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

pattern AppleProres422 :: ProresCodecProfile
pattern AppleProres422 = ProresCodecProfile' "APPLE_PRORES_422"

pattern AppleProres422Hq :: ProresCodecProfile
pattern AppleProres422Hq = ProresCodecProfile' "APPLE_PRORES_422_HQ"

pattern AppleProres422LT :: ProresCodecProfile
pattern AppleProres422LT = ProresCodecProfile' "APPLE_PRORES_422_LT"

pattern AppleProres422Proxy :: ProresCodecProfile
pattern AppleProres422Proxy = ProresCodecProfile' "APPLE_PRORES_422_PROXY"

{-# COMPLETE
  AppleProres422,
  AppleProres422Hq,
  AppleProres422LT,
  AppleProres422Proxy,
  ProresCodecProfile'
  #-}

instance FromText ProresCodecProfile where
  parser = (ProresCodecProfile' . mk) <$> takeText

instance ToText ProresCodecProfile where
  toText (ProresCodecProfile' ci) = original ci

instance Hashable ProresCodecProfile

instance NFData ProresCodecProfile

instance ToByteString ProresCodecProfile

instance ToQuery ProresCodecProfile

instance ToHeader ProresCodecProfile

instance ToJSON ProresCodecProfile where
  toJSON = toJSONText

instance FromJSON ProresCodecProfile where
  parseJSON = parseJSONText "ProresCodecProfile"
