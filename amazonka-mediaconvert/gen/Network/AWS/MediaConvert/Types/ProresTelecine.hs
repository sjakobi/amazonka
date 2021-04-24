{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresTelecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresTelecine
  ( ProresTelecine
      ( ..,
        PTHard,
        PTNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
data ProresTelecine = ProresTelecine' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PTHard :: ProresTelecine
pattern PTHard = ProresTelecine' "HARD"

pattern PTNone :: ProresTelecine
pattern PTNone = ProresTelecine' "NONE"

{-# COMPLETE
  PTHard,
  PTNone,
  ProresTelecine'
  #-}

instance FromText ProresTelecine where
  parser = (ProresTelecine' . mk) <$> takeText

instance ToText ProresTelecine where
  toText (ProresTelecine' ci) = original ci

instance Hashable ProresTelecine

instance NFData ProresTelecine

instance ToByteString ProresTelecine

instance ToQuery ProresTelecine

instance ToHeader ProresTelecine

instance ToJSON ProresTelecine where
  toJSON = toJSONText

instance FromJSON ProresTelecine where
  parseJSON = parseJSONText "ProresTelecine"
