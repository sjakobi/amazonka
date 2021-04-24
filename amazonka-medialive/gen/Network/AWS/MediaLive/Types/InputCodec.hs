{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputCodec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputCodec
  ( InputCodec
      ( ..,
        ICAvc,
        ICHevc,
        ICMPEG2
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | codec in increasing order of complexity
data InputCodec = InputCodec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ICAvc :: InputCodec
pattern ICAvc = InputCodec' "AVC"

pattern ICHevc :: InputCodec
pattern ICHevc = InputCodec' "HEVC"

pattern ICMPEG2 :: InputCodec
pattern ICMPEG2 = InputCodec' "MPEG2"

{-# COMPLETE
  ICAvc,
  ICHevc,
  ICMPEG2,
  InputCodec'
  #-}

instance FromText InputCodec where
  parser = (InputCodec' . mk) <$> takeText

instance ToText InputCodec where
  toText (InputCodec' ci) = original ci

instance Hashable InputCodec

instance NFData InputCodec

instance ToByteString InputCodec

instance ToQuery InputCodec

instance ToHeader InputCodec

instance ToJSON InputCodec where
  toJSON = toJSONText

instance FromJSON InputCodec where
  parseJSON = parseJSONText "InputCodec"
