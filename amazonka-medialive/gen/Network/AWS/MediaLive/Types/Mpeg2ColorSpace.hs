{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2ColorSpace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2ColorSpace
  ( Mpeg2ColorSpace
      ( ..,
        MCSAuto,
        MCSPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mpeg2 Color Space
data Mpeg2ColorSpace = Mpeg2ColorSpace' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MCSAuto :: Mpeg2ColorSpace
pattern MCSAuto = Mpeg2ColorSpace' "AUTO"

pattern MCSPassthrough :: Mpeg2ColorSpace
pattern MCSPassthrough = Mpeg2ColorSpace' "PASSTHROUGH"

{-# COMPLETE
  MCSAuto,
  MCSPassthrough,
  Mpeg2ColorSpace'
  #-}

instance FromText Mpeg2ColorSpace where
  parser = (Mpeg2ColorSpace' . mk) <$> takeText

instance ToText Mpeg2ColorSpace where
  toText (Mpeg2ColorSpace' ci) = original ci

instance Hashable Mpeg2ColorSpace

instance NFData Mpeg2ColorSpace

instance ToByteString Mpeg2ColorSpace

instance ToQuery Mpeg2ColorSpace

instance ToHeader Mpeg2ColorSpace

instance ToJSON Mpeg2ColorSpace where
  toJSON = toJSONText

instance FromJSON Mpeg2ColorSpace where
  parseJSON = parseJSONText "Mpeg2ColorSpace"
