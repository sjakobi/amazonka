{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.PidMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PidMode
  ( PidMode
      ( ..,
        Host,
        Task
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PidMode = PidMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Host :: PidMode
pattern Host = PidMode' "host"

pattern Task :: PidMode
pattern Task = PidMode' "task"

{-# COMPLETE
  Host,
  Task,
  PidMode'
  #-}

instance FromText PidMode where
  parser = (PidMode' . mk) <$> takeText

instance ToText PidMode where
  toText (PidMode' ci) = original ci

instance Hashable PidMode

instance NFData PidMode

instance ToByteString PidMode

instance ToQuery PidMode

instance ToHeader PidMode

instance ToJSON PidMode where
  toJSON = toJSONText

instance FromJSON PidMode where
  parseJSON = parseJSONText "PidMode"
