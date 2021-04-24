{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsH265PackagingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsH265PackagingType
  ( HlsH265PackagingType
      ( ..,
        HHPTHEV1,
        HHPTHVC1
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls H265 Packaging Type
data HlsH265PackagingType
  = HlsH265PackagingType'
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

pattern HHPTHEV1 :: HlsH265PackagingType
pattern HHPTHEV1 = HlsH265PackagingType' "HEV1"

pattern HHPTHVC1 :: HlsH265PackagingType
pattern HHPTHVC1 = HlsH265PackagingType' "HVC1"

{-# COMPLETE
  HHPTHEV1,
  HHPTHVC1,
  HlsH265PackagingType'
  #-}

instance FromText HlsH265PackagingType where
  parser = (HlsH265PackagingType' . mk) <$> takeText

instance ToText HlsH265PackagingType where
  toText (HlsH265PackagingType' ci) = original ci

instance Hashable HlsH265PackagingType

instance NFData HlsH265PackagingType

instance ToByteString HlsH265PackagingType

instance ToQuery HlsH265PackagingType

instance ToHeader HlsH265PackagingType

instance ToJSON HlsH265PackagingType where
  toJSON = toJSONText

instance FromJSON HlsH265PackagingType where
  parseJSON = parseJSONText "HlsH265PackagingType"
