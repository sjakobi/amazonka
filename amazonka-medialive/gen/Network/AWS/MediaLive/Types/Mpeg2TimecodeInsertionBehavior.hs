{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2TimecodeInsertionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2TimecodeInsertionBehavior
  ( Mpeg2TimecodeInsertionBehavior
      ( ..,
        Disabled,
        GopTimecode
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mpeg2 Timecode Insertion Behavior
data Mpeg2TimecodeInsertionBehavior
  = Mpeg2TimecodeInsertionBehavior'
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

pattern Disabled :: Mpeg2TimecodeInsertionBehavior
pattern Disabled = Mpeg2TimecodeInsertionBehavior' "DISABLED"

pattern GopTimecode :: Mpeg2TimecodeInsertionBehavior
pattern GopTimecode = Mpeg2TimecodeInsertionBehavior' "GOP_TIMECODE"

{-# COMPLETE
  Disabled,
  GopTimecode,
  Mpeg2TimecodeInsertionBehavior'
  #-}

instance FromText Mpeg2TimecodeInsertionBehavior where
  parser = (Mpeg2TimecodeInsertionBehavior' . mk) <$> takeText

instance ToText Mpeg2TimecodeInsertionBehavior where
  toText (Mpeg2TimecodeInsertionBehavior' ci) = original ci

instance Hashable Mpeg2TimecodeInsertionBehavior

instance NFData Mpeg2TimecodeInsertionBehavior

instance ToByteString Mpeg2TimecodeInsertionBehavior

instance ToQuery Mpeg2TimecodeInsertionBehavior

instance ToHeader Mpeg2TimecodeInsertionBehavior

instance ToJSON Mpeg2TimecodeInsertionBehavior where
  toJSON = toJSONText

instance FromJSON Mpeg2TimecodeInsertionBehavior where
  parseJSON = parseJSONText "Mpeg2TimecodeInsertionBehavior"
