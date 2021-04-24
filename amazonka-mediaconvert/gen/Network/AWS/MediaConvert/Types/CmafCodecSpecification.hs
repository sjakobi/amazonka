{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmafCodecSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafCodecSpecification
  ( CmafCodecSpecification
      ( ..,
        CCSRfc4281,
        CCSRfc6381
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
data CmafCodecSpecification
  = CmafCodecSpecification'
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

pattern CCSRfc4281 :: CmafCodecSpecification
pattern CCSRfc4281 = CmafCodecSpecification' "RFC_4281"

pattern CCSRfc6381 :: CmafCodecSpecification
pattern CCSRfc6381 = CmafCodecSpecification' "RFC_6381"

{-# COMPLETE
  CCSRfc4281,
  CCSRfc6381,
  CmafCodecSpecification'
  #-}

instance FromText CmafCodecSpecification where
  parser = (CmafCodecSpecification' . mk) <$> takeText

instance ToText CmafCodecSpecification where
  toText (CmafCodecSpecification' ci) = original ci

instance Hashable CmafCodecSpecification

instance NFData CmafCodecSpecification

instance ToByteString CmafCodecSpecification

instance ToQuery CmafCodecSpecification

instance ToHeader CmafCodecSpecification

instance ToJSON CmafCodecSpecification where
  toJSON = toJSONText

instance FromJSON CmafCodecSpecification where
  parseJSON = parseJSONText "CmafCodecSpecification"
