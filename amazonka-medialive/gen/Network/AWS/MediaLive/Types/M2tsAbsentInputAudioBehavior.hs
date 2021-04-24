{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsAbsentInputAudioBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAbsentInputAudioBehavior
  ( M2tsAbsentInputAudioBehavior
      ( ..,
        Drop,
        EncodeSilence
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Absent Input Audio Behavior
data M2tsAbsentInputAudioBehavior
  = M2tsAbsentInputAudioBehavior'
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

pattern Drop :: M2tsAbsentInputAudioBehavior
pattern Drop = M2tsAbsentInputAudioBehavior' "DROP"

pattern EncodeSilence :: M2tsAbsentInputAudioBehavior
pattern EncodeSilence = M2tsAbsentInputAudioBehavior' "ENCODE_SILENCE"

{-# COMPLETE
  Drop,
  EncodeSilence,
  M2tsAbsentInputAudioBehavior'
  #-}

instance FromText M2tsAbsentInputAudioBehavior where
  parser = (M2tsAbsentInputAudioBehavior' . mk) <$> takeText

instance ToText M2tsAbsentInputAudioBehavior where
  toText (M2tsAbsentInputAudioBehavior' ci) = original ci

instance Hashable M2tsAbsentInputAudioBehavior

instance NFData M2tsAbsentInputAudioBehavior

instance ToByteString M2tsAbsentInputAudioBehavior

instance ToQuery M2tsAbsentInputAudioBehavior

instance ToHeader M2tsAbsentInputAudioBehavior

instance ToJSON M2tsAbsentInputAudioBehavior where
  toJSON = toJSONText

instance FromJSON M2tsAbsentInputAudioBehavior where
  parseJSON = parseJSONText "M2tsAbsentInputAudioBehavior"
