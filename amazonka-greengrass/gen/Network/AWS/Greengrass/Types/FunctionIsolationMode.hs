{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.FunctionIsolationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.FunctionIsolationMode
  ( FunctionIsolationMode
      ( ..,
        GreengrassContainer,
        NoContainer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies whether the Lambda function runs in a Greengrass container (default) or without containerization. Unless your scenario requires that you run without containerization, we recommend that you run in a Greengrass container. Omit this value to run the Lambda function with the default containerization for the group.
data FunctionIsolationMode
  = FunctionIsolationMode'
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

pattern GreengrassContainer :: FunctionIsolationMode
pattern GreengrassContainer = FunctionIsolationMode' "GreengrassContainer"

pattern NoContainer :: FunctionIsolationMode
pattern NoContainer = FunctionIsolationMode' "NoContainer"

{-# COMPLETE
  GreengrassContainer,
  NoContainer,
  FunctionIsolationMode'
  #-}

instance FromText FunctionIsolationMode where
  parser = (FunctionIsolationMode' . mk) <$> takeText

instance ToText FunctionIsolationMode where
  toText (FunctionIsolationMode' ci) = original ci

instance Hashable FunctionIsolationMode

instance NFData FunctionIsolationMode

instance ToByteString FunctionIsolationMode

instance ToQuery FunctionIsolationMode

instance ToHeader FunctionIsolationMode

instance ToJSON FunctionIsolationMode where
  toJSON = toJSONText

instance FromJSON FunctionIsolationMode where
  parseJSON = parseJSONText "FunctionIsolationMode"
