{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.LoggerComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LoggerComponent
  ( LoggerComponent
      ( ..,
        GreengrassSystem,
        Lambda
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoggerComponent = LoggerComponent' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern GreengrassSystem :: LoggerComponent
pattern GreengrassSystem = LoggerComponent' "GreengrassSystem"

pattern Lambda :: LoggerComponent
pattern Lambda = LoggerComponent' "Lambda"

{-# COMPLETE
  GreengrassSystem,
  Lambda,
  LoggerComponent'
  #-}

instance FromText LoggerComponent where
  parser = (LoggerComponent' . mk) <$> takeText

instance ToText LoggerComponent where
  toText (LoggerComponent' ci) = original ci

instance Hashable LoggerComponent

instance NFData LoggerComponent

instance ToByteString LoggerComponent

instance ToQuery LoggerComponent

instance ToHeader LoggerComponent

instance ToJSON LoggerComponent where
  toJSON = toJSONText

instance FromJSON LoggerComponent where
  parseJSON = parseJSONText "LoggerComponent"
