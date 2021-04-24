{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingFeatureStoreOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingFeatureStoreOutput where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration for processing job outputs in Amazon SageMaker Feature Store.
--
--
--
-- /See:/ 'processingFeatureStoreOutput' smart constructor.
newtype ProcessingFeatureStoreOutput = ProcessingFeatureStoreOutput'
  { _pfsoFeatureGroupName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProcessingFeatureStoreOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfsoFeatureGroupName' - The name of the Amazon SageMaker FeatureGroup to use as the destination for processing job output. Note that your processing script is responsible for putting records into your Feature Store.
processingFeatureStoreOutput ::
  -- | 'pfsoFeatureGroupName'
  Text ->
  ProcessingFeatureStoreOutput
processingFeatureStoreOutput pFeatureGroupName_ =
  ProcessingFeatureStoreOutput'
    { _pfsoFeatureGroupName =
        pFeatureGroupName_
    }

-- | The name of the Amazon SageMaker FeatureGroup to use as the destination for processing job output. Note that your processing script is responsible for putting records into your Feature Store.
pfsoFeatureGroupName :: Lens' ProcessingFeatureStoreOutput Text
pfsoFeatureGroupName = lens _pfsoFeatureGroupName (\s a -> s {_pfsoFeatureGroupName = a})

instance FromJSON ProcessingFeatureStoreOutput where
  parseJSON =
    withObject
      "ProcessingFeatureStoreOutput"
      ( \x ->
          ProcessingFeatureStoreOutput'
            <$> (x .: "FeatureGroupName")
      )

instance Hashable ProcessingFeatureStoreOutput

instance NFData ProcessingFeatureStoreOutput

instance ToJSON ProcessingFeatureStoreOutput where
  toJSON ProcessingFeatureStoreOutput' {..} =
    object
      ( catMaybes
          [Just ("FeatureGroupName" .= _pfsoFeatureGroupName)]
      )
