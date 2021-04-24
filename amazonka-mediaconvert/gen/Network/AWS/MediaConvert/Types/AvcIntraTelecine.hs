{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraTelecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraTelecine
  ( AvcIntraTelecine
      ( ..,
        AITHard,
        AITNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
data AvcIntraTelecine = AvcIntraTelecine' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AITHard :: AvcIntraTelecine
pattern AITHard = AvcIntraTelecine' "HARD"

pattern AITNone :: AvcIntraTelecine
pattern AITNone = AvcIntraTelecine' "NONE"

{-# COMPLETE
  AITHard,
  AITNone,
  AvcIntraTelecine'
  #-}

instance FromText AvcIntraTelecine where
  parser = (AvcIntraTelecine' . mk) <$> takeText

instance ToText AvcIntraTelecine where
  toText (AvcIntraTelecine' ci) = original ci

instance Hashable AvcIntraTelecine

instance NFData AvcIntraTelecine

instance ToByteString AvcIntraTelecine

instance ToQuery AvcIntraTelecine

instance ToHeader AvcIntraTelecine

instance ToJSON AvcIntraTelecine where
  toJSON = toJSONText

instance FromJSON AvcIntraTelecine where
  parseJSON = parseJSONText "AvcIntraTelecine"
