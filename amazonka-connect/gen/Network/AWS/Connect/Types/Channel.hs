{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Channel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Channel
  ( Channel
      ( ..,
        Chat,
        Task,
        Voice
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Channel = Channel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Chat :: Channel
pattern Chat = Channel' "CHAT"

pattern Task :: Channel
pattern Task = Channel' "TASK"

pattern Voice :: Channel
pattern Voice = Channel' "VOICE"

{-# COMPLETE
  Chat,
  Task,
  Voice,
  Channel'
  #-}

instance FromText Channel where
  parser = (Channel' . mk) <$> takeText

instance ToText Channel where
  toText (Channel' ci) = original ci

instance Hashable Channel

instance NFData Channel

instance ToByteString Channel

instance ToQuery Channel

instance ToHeader Channel

instance ToJSON Channel where
  toJSON = toJSONText

instance FromJSON Channel where
  parseJSON = parseJSONText "Channel"
