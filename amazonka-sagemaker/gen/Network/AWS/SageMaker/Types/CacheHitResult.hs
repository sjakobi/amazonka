{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CacheHitResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CacheHitResult where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on the cache hit of a pipeline execution step.
--
--
--
-- /See:/ 'cacheHitResult' smart constructor.
newtype CacheHitResult = CacheHitResult'
  { _chrSourcePipelineExecutionARN ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CacheHitResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chrSourcePipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
cacheHitResult ::
  CacheHitResult
cacheHitResult =
  CacheHitResult'
    { _chrSourcePipelineExecutionARN =
        Nothing
    }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
chrSourcePipelineExecutionARN :: Lens' CacheHitResult (Maybe Text)
chrSourcePipelineExecutionARN = lens _chrSourcePipelineExecutionARN (\s a -> s {_chrSourcePipelineExecutionARN = a})

instance FromJSON CacheHitResult where
  parseJSON =
    withObject
      "CacheHitResult"
      ( \x ->
          CacheHitResult'
            <$> (x .:? "SourcePipelineExecutionArn")
      )

instance Hashable CacheHitResult

instance NFData CacheHitResult
