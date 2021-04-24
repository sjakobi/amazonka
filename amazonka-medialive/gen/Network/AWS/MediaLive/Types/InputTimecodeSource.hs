{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputTimecodeSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputTimecodeSource
  ( InputTimecodeSource
      ( ..,
        Embedded,
        Zerobased
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Documentation update needed
data InputTimecodeSource
  = InputTimecodeSource'
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

pattern Embedded :: InputTimecodeSource
pattern Embedded = InputTimecodeSource' "EMBEDDED"

pattern Zerobased :: InputTimecodeSource
pattern Zerobased = InputTimecodeSource' "ZEROBASED"

{-# COMPLETE
  Embedded,
  Zerobased,
  InputTimecodeSource'
  #-}

instance FromText InputTimecodeSource where
  parser = (InputTimecodeSource' . mk) <$> takeText

instance ToText InputTimecodeSource where
  toText (InputTimecodeSource' ci) = original ci

instance Hashable InputTimecodeSource

instance NFData InputTimecodeSource

instance ToByteString InputTimecodeSource

instance ToQuery InputTimecodeSource

instance ToHeader InputTimecodeSource

instance ToJSON InputTimecodeSource where
  toJSON = toJSONText

instance FromJSON InputTimecodeSource where
  parseJSON = parseJSONText "InputTimecodeSource"
