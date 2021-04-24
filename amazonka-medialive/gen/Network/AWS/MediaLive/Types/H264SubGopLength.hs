{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264SubGopLength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264SubGopLength
  ( H264SubGopLength
      ( ..,
        HSGLDynamic,
        HSGLFixed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Sub Gop Length
data H264SubGopLength = H264SubGopLength' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HSGLDynamic :: H264SubGopLength
pattern HSGLDynamic = H264SubGopLength' "DYNAMIC"

pattern HSGLFixed :: H264SubGopLength
pattern HSGLFixed = H264SubGopLength' "FIXED"

{-# COMPLETE
  HSGLDynamic,
  HSGLFixed,
  H264SubGopLength'
  #-}

instance FromText H264SubGopLength where
  parser = (H264SubGopLength' . mk) <$> takeText

instance ToText H264SubGopLength where
  toText (H264SubGopLength' ci) = original ci

instance Hashable H264SubGopLength

instance NFData H264SubGopLength

instance ToByteString H264SubGopLength

instance ToQuery H264SubGopLength

instance ToHeader H264SubGopLength

instance ToJSON H264SubGopLength where
  toJSON = toJSONText

instance FromJSON H264SubGopLength where
  parseJSON = parseJSONText "H264SubGopLength"
