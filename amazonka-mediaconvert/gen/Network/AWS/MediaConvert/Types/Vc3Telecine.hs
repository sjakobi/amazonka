{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vc3Telecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3Telecine
  ( Vc3Telecine
      ( ..,
        VTHard,
        VTNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
data Vc3Telecine = Vc3Telecine' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VTHard :: Vc3Telecine
pattern VTHard = Vc3Telecine' "HARD"

pattern VTNone :: Vc3Telecine
pattern VTNone = Vc3Telecine' "NONE"

{-# COMPLETE
  VTHard,
  VTNone,
  Vc3Telecine'
  #-}

instance FromText Vc3Telecine where
  parser = (Vc3Telecine' . mk) <$> takeText

instance ToText Vc3Telecine where
  toText (Vc3Telecine' ci) = original ci

instance Hashable Vc3Telecine

instance NFData Vc3Telecine

instance ToByteString Vc3Telecine

instance ToQuery Vc3Telecine

instance ToHeader Vc3Telecine

instance ToJSON Vc3Telecine where
  toJSON = toJSONText

instance FromJSON Vc3Telecine where
  parseJSON = parseJSONText "Vc3Telecine"
