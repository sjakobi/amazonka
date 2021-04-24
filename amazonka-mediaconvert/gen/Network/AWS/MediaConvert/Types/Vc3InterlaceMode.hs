{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vc3InterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3InterlaceMode
  ( Vc3InterlaceMode
      ( ..,
        Interlaced,
        Progressive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
data Vc3InterlaceMode = Vc3InterlaceMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Interlaced :: Vc3InterlaceMode
pattern Interlaced = Vc3InterlaceMode' "INTERLACED"

pattern Progressive :: Vc3InterlaceMode
pattern Progressive = Vc3InterlaceMode' "PROGRESSIVE"

{-# COMPLETE
  Interlaced,
  Progressive,
  Vc3InterlaceMode'
  #-}

instance FromText Vc3InterlaceMode where
  parser = (Vc3InterlaceMode' . mk) <$> takeText

instance ToText Vc3InterlaceMode where
  toText (Vc3InterlaceMode' ci) = original ci

instance Hashable Vc3InterlaceMode

instance NFData Vc3InterlaceMode

instance ToByteString Vc3InterlaceMode

instance ToQuery Vc3InterlaceMode

instance ToHeader Vc3InterlaceMode

instance ToJSON Vc3InterlaceMode where
  toJSON = toJSONText

instance FromJSON Vc3InterlaceMode where
  parseJSON = parseJSONText "Vc3InterlaceMode"
