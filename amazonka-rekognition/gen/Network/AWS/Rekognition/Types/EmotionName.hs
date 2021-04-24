{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.EmotionName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.EmotionName
  ( EmotionName
      ( ..,
        Angry,
        Calm,
        Confused,
        Disgusted,
        Fear,
        Happy,
        Sad,
        Surprised,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EmotionName = EmotionName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Angry :: EmotionName
pattern Angry = EmotionName' "ANGRY"

pattern Calm :: EmotionName
pattern Calm = EmotionName' "CALM"

pattern Confused :: EmotionName
pattern Confused = EmotionName' "CONFUSED"

pattern Disgusted :: EmotionName
pattern Disgusted = EmotionName' "DISGUSTED"

pattern Fear :: EmotionName
pattern Fear = EmotionName' "FEAR"

pattern Happy :: EmotionName
pattern Happy = EmotionName' "HAPPY"

pattern Sad :: EmotionName
pattern Sad = EmotionName' "SAD"

pattern Surprised :: EmotionName
pattern Surprised = EmotionName' "SURPRISED"

pattern Unknown :: EmotionName
pattern Unknown = EmotionName' "UNKNOWN"

{-# COMPLETE
  Angry,
  Calm,
  Confused,
  Disgusted,
  Fear,
  Happy,
  Sad,
  Surprised,
  Unknown,
  EmotionName'
  #-}

instance FromText EmotionName where
  parser = (EmotionName' . mk) <$> takeText

instance ToText EmotionName where
  toText (EmotionName' ci) = original ci

instance Hashable EmotionName

instance NFData EmotionName

instance ToByteString EmotionName

instance ToQuery EmotionName

instance ToHeader EmotionName

instance FromJSON EmotionName where
  parseJSON = parseJSONText "EmotionName"
