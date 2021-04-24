{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.AppType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.AppType
  ( AppType
      ( ..,
        AWSFlowRuby,
        Java,
        Nodejs,
        Other,
        PHP,
        Rails,
        Static
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppType = AppType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSFlowRuby :: AppType
pattern AWSFlowRuby = AppType' "aws-flow-ruby"

pattern Java :: AppType
pattern Java = AppType' "java"

pattern Nodejs :: AppType
pattern Nodejs = AppType' "nodejs"

pattern Other :: AppType
pattern Other = AppType' "other"

pattern PHP :: AppType
pattern PHP = AppType' "php"

pattern Rails :: AppType
pattern Rails = AppType' "rails"

pattern Static :: AppType
pattern Static = AppType' "static"

{-# COMPLETE
  AWSFlowRuby,
  Java,
  Nodejs,
  Other,
  PHP,
  Rails,
  Static,
  AppType'
  #-}

instance FromText AppType where
  parser = (AppType' . mk) <$> takeText

instance ToText AppType where
  toText (AppType' ci) = original ci

instance Hashable AppType

instance NFData AppType

instance ToByteString AppType

instance ToQuery AppType

instance ToHeader AppType

instance ToJSON AppType where
  toJSON = toJSONText

instance FromJSON AppType where
  parseJSON = parseJSONText "AppType"
