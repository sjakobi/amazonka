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
-- Module      : Network.AWS.SageMaker.Types.ModelCacheSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelCacheSetting
  ( ModelCacheSetting
      ( ..,
        ModelCacheSettingDisabled,
        ModelCacheSettingEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelCacheSetting = ModelCacheSetting'
  { fromModelCacheSetting ::
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

pattern ModelCacheSettingDisabled :: ModelCacheSetting
pattern ModelCacheSettingDisabled = ModelCacheSetting' "Disabled"

pattern ModelCacheSettingEnabled :: ModelCacheSetting
pattern ModelCacheSettingEnabled = ModelCacheSetting' "Enabled"

{-# COMPLETE
  ModelCacheSettingDisabled,
  ModelCacheSettingEnabled,
  ModelCacheSetting'
  #-}

instance Prelude.FromText ModelCacheSetting where
  parser = ModelCacheSetting' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelCacheSetting where
  toText (ModelCacheSetting' x) = x

instance Prelude.Hashable ModelCacheSetting

instance Prelude.NFData ModelCacheSetting

instance Prelude.ToByteString ModelCacheSetting

instance Prelude.ToQuery ModelCacheSetting

instance Prelude.ToHeader ModelCacheSetting

instance Prelude.ToJSON ModelCacheSetting where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ModelCacheSetting where
  parseJSON = Prelude.parseJSONText "ModelCacheSetting"
