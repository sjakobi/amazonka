{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsStreamInfResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsStreamInfResolution
  ( HlsStreamInfResolution
      ( ..,
        HSIRExclude,
        HSIRInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Stream Inf Resolution
data HlsStreamInfResolution
  = HlsStreamInfResolution'
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

pattern HSIRExclude :: HlsStreamInfResolution
pattern HSIRExclude = HlsStreamInfResolution' "EXCLUDE"

pattern HSIRInclude :: HlsStreamInfResolution
pattern HSIRInclude = HlsStreamInfResolution' "INCLUDE"

{-# COMPLETE
  HSIRExclude,
  HSIRInclude,
  HlsStreamInfResolution'
  #-}

instance FromText HlsStreamInfResolution where
  parser = (HlsStreamInfResolution' . mk) <$> takeText

instance ToText HlsStreamInfResolution where
  toText (HlsStreamInfResolution' ci) = original ci

instance Hashable HlsStreamInfResolution

instance NFData HlsStreamInfResolution

instance ToByteString HlsStreamInfResolution

instance ToQuery HlsStreamInfResolution

instance ToHeader HlsStreamInfResolution

instance ToJSON HlsStreamInfResolution where
  toJSON = toJSONText

instance FromJSON HlsStreamInfResolution where
  parseJSON = parseJSONText "HlsStreamInfResolution"
