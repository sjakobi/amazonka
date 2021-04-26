{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        AppAttributesKeysAutoBundleOnDeploy,
        AppAttributesKeysAwsFlowRubySettings,
        AppAttributesKeysDocumentRoot,
        AppAttributesKeysRailsEnv
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppAttributesKeys = AppAttributesKeys'
  { fromAppAttributesKeys ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AppAttributesKeysAutoBundleOnDeploy :: AppAttributesKeys
pattern AppAttributesKeysAutoBundleOnDeploy = AppAttributesKeys' "AutoBundleOnDeploy"

pattern AppAttributesKeysAwsFlowRubySettings :: AppAttributesKeys
pattern AppAttributesKeysAwsFlowRubySettings = AppAttributesKeys' "AwsFlowRubySettings"

pattern AppAttributesKeysDocumentRoot :: AppAttributesKeys
pattern AppAttributesKeysDocumentRoot = AppAttributesKeys' "DocumentRoot"

pattern AppAttributesKeysRailsEnv :: AppAttributesKeys
pattern AppAttributesKeysRailsEnv = AppAttributesKeys' "RailsEnv"

{-# COMPLETE
  AppAttributesKeysAutoBundleOnDeploy,
  AppAttributesKeysAwsFlowRubySettings,
  AppAttributesKeysDocumentRoot,
  AppAttributesKeysRailsEnv,
  AppAttributesKeys'
  #-}

instance Prelude.FromText AppAttributesKeys where
  parser = AppAttributesKeys' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppAttributesKeys where
  toText (AppAttributesKeys' x) = x

instance Prelude.Hashable AppAttributesKeys

instance Prelude.NFData AppAttributesKeys

instance Prelude.ToByteString AppAttributesKeys

instance Prelude.ToQuery AppAttributesKeys

instance Prelude.ToHeader AppAttributesKeys

instance Prelude.ToJSON AppAttributesKeys where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AppAttributesKeys where
  parseJSON = Prelude.parseJSONText "AppAttributesKeys"
