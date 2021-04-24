{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ExecutionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ExecutionMode
  ( ExecutionMode
      ( ..,
        EMAuto,
        EMInteractive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionMode = ExecutionMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EMAuto :: ExecutionMode
pattern EMAuto = ExecutionMode' "Auto"

pattern EMInteractive :: ExecutionMode
pattern EMInteractive = ExecutionMode' "Interactive"

{-# COMPLETE
  EMAuto,
  EMInteractive,
  ExecutionMode'
  #-}

instance FromText ExecutionMode where
  parser = (ExecutionMode' . mk) <$> takeText

instance ToText ExecutionMode where
  toText (ExecutionMode' ci) = original ci

instance Hashable ExecutionMode

instance NFData ExecutionMode

instance ToByteString ExecutionMode

instance ToQuery ExecutionMode

instance ToHeader ExecutionMode

instance ToJSON ExecutionMode where
  toJSON = toJSONText

instance FromJSON ExecutionMode where
  parseJSON = parseJSONText "ExecutionMode"
