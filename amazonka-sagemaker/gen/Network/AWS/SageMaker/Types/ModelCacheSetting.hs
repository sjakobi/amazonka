{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelCacheSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelCacheSetting
  ( ModelCacheSetting
      ( ..,
        MCSDisabled,
        MCSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelCacheSetting = ModelCacheSetting' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MCSDisabled :: ModelCacheSetting
pattern MCSDisabled = ModelCacheSetting' "Disabled"

pattern MCSEnabled :: ModelCacheSetting
pattern MCSEnabled = ModelCacheSetting' "Enabled"

{-# COMPLETE
  MCSDisabled,
  MCSEnabled,
  ModelCacheSetting'
  #-}

instance FromText ModelCacheSetting where
  parser = (ModelCacheSetting' . mk) <$> takeText

instance ToText ModelCacheSetting where
  toText (ModelCacheSetting' ci) = original ci

instance Hashable ModelCacheSetting

instance NFData ModelCacheSetting

instance ToByteString ModelCacheSetting

instance ToQuery ModelCacheSetting

instance ToHeader ModelCacheSetting

instance ToJSON ModelCacheSetting where
  toJSON = toJSONText

instance FromJSON ModelCacheSetting where
  parseJSON = parseJSONText "ModelCacheSetting"
