{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MultiModelConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MultiModelConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ModelCacheSetting

-- | Specifies additional configuration for hosting multi-model endpoints.
--
--
--
-- /See:/ 'multiModelConfig' smart constructor.
newtype MultiModelConfig = MultiModelConfig'
  { _mmcModelCacheSetting ::
      Maybe ModelCacheSetting
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MultiModelConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmcModelCacheSetting' - Whether to cache models for a multi-model endpoint. By default, multi-model endpoints cache models so that a model does not have to be loaded into memory each time it is invoked. Some use cases do not benefit from model caching. For example, if an endpoint hosts a large number of models that are each invoked infrequently, the endpoint might perform better if you disable model caching. To disable model caching, set the value of this parameter to @Disabled@ .
multiModelConfig ::
  MultiModelConfig
multiModelConfig =
  MultiModelConfig' {_mmcModelCacheSetting = Nothing}

-- | Whether to cache models for a multi-model endpoint. By default, multi-model endpoints cache models so that a model does not have to be loaded into memory each time it is invoked. Some use cases do not benefit from model caching. For example, if an endpoint hosts a large number of models that are each invoked infrequently, the endpoint might perform better if you disable model caching. To disable model caching, set the value of this parameter to @Disabled@ .
mmcModelCacheSetting :: Lens' MultiModelConfig (Maybe ModelCacheSetting)
mmcModelCacheSetting = lens _mmcModelCacheSetting (\s a -> s {_mmcModelCacheSetting = a})

instance FromJSON MultiModelConfig where
  parseJSON =
    withObject
      "MultiModelConfig"
      ( \x ->
          MultiModelConfig' <$> (x .:? "ModelCacheSetting")
      )

instance Hashable MultiModelConfig

instance NFData MultiModelConfig

instance ToJSON MultiModelConfig where
  toJSON MultiModelConfig' {..} =
    object
      ( catMaybes
          [("ModelCacheSetting" .=) <$> _mmcModelCacheSetting]
      )
