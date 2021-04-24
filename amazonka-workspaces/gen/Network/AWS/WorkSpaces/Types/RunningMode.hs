{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.RunningMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.RunningMode
  ( RunningMode
      ( ..,
        AlwaysOn,
        AutoStop
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RunningMode = RunningMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AlwaysOn :: RunningMode
pattern AlwaysOn = RunningMode' "ALWAYS_ON"

pattern AutoStop :: RunningMode
pattern AutoStop = RunningMode' "AUTO_STOP"

{-# COMPLETE
  AlwaysOn,
  AutoStop,
  RunningMode'
  #-}

instance FromText RunningMode where
  parser = (RunningMode' . mk) <$> takeText

instance ToText RunningMode where
  toText (RunningMode' ci) = original ci

instance Hashable RunningMode

instance NFData RunningMode

instance ToByteString RunningMode

instance ToQuery RunningMode

instance ToHeader RunningMode

instance ToJSON RunningMode where
  toJSON = toJSONText

instance FromJSON RunningMode where
  parseJSON = parseJSONText "RunningMode"
