{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.StreamView
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StreamView
  ( StreamView
      ( ..,
        App,
        Desktop
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StreamView = StreamView' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern App :: StreamView
pattern App = StreamView' "APP"

pattern Desktop :: StreamView
pattern Desktop = StreamView' "DESKTOP"

{-# COMPLETE
  App,
  Desktop,
  StreamView'
  #-}

instance FromText StreamView where
  parser = (StreamView' . mk) <$> takeText

instance ToText StreamView where
  toText (StreamView' ci) = original ci

instance Hashable StreamView

instance NFData StreamView

instance ToByteString StreamView

instance ToQuery StreamView

instance ToHeader StreamView

instance ToJSON StreamView where
  toJSON = toJSONText

instance FromJSON StreamView where
  parseJSON = parseJSONText "StreamView"
