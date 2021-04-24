{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.AppAttributesKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.AppAttributesKeys
  ( AppAttributesKeys
      ( ..,
        AWSFlowRubySettings,
        AutoBundleOnDeploy,
        DocumentRoot,
        RailsEnv
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppAttributesKeys = AppAttributesKeys' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSFlowRubySettings :: AppAttributesKeys
pattern AWSFlowRubySettings = AppAttributesKeys' "AwsFlowRubySettings"

pattern AutoBundleOnDeploy :: AppAttributesKeys
pattern AutoBundleOnDeploy = AppAttributesKeys' "AutoBundleOnDeploy"

pattern DocumentRoot :: AppAttributesKeys
pattern DocumentRoot = AppAttributesKeys' "DocumentRoot"

pattern RailsEnv :: AppAttributesKeys
pattern RailsEnv = AppAttributesKeys' "RailsEnv"

{-# COMPLETE
  AWSFlowRubySettings,
  AutoBundleOnDeploy,
  DocumentRoot,
  RailsEnv,
  AppAttributesKeys'
  #-}

instance FromText AppAttributesKeys where
  parser = (AppAttributesKeys' . mk) <$> takeText

instance ToText AppAttributesKeys where
  toText (AppAttributesKeys' ci) = original ci

instance Hashable AppAttributesKeys

instance NFData AppAttributesKeys

instance ToByteString AppAttributesKeys

instance ToQuery AppAttributesKeys

instance ToHeader AppAttributesKeys

instance ToJSON AppAttributesKeys where
  toJSON = toJSONText

instance FromJSON AppAttributesKeys where
  parseJSON = parseJSONText "AppAttributesKeys"
