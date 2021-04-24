{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2SubGopLength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2SubGopLength
  ( Mpeg2SubGopLength
      ( ..,
        Dynamic,
        Fixed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mpeg2 Sub Gop Length
data Mpeg2SubGopLength = Mpeg2SubGopLength' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Dynamic :: Mpeg2SubGopLength
pattern Dynamic = Mpeg2SubGopLength' "DYNAMIC"

pattern Fixed :: Mpeg2SubGopLength
pattern Fixed = Mpeg2SubGopLength' "FIXED"

{-# COMPLETE
  Dynamic,
  Fixed,
  Mpeg2SubGopLength'
  #-}

instance FromText Mpeg2SubGopLength where
  parser = (Mpeg2SubGopLength' . mk) <$> takeText

instance ToText Mpeg2SubGopLength where
  toText (Mpeg2SubGopLength' ci) = original ci

instance Hashable Mpeg2SubGopLength

instance NFData Mpeg2SubGopLength

instance ToByteString Mpeg2SubGopLength

instance ToQuery Mpeg2SubGopLength

instance ToHeader Mpeg2SubGopLength

instance ToJSON Mpeg2SubGopLength where
  toJSON = toJSONText

instance FromJSON Mpeg2SubGopLength where
  parseJSON = parseJSONText "Mpeg2SubGopLength"
