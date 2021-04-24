{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TransformJobStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TransformJobStepMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata for a transform job step.
--
--
--
-- /See:/ 'transformJobStepMetadata' smart constructor.
newtype TransformJobStepMetadata = TransformJobStepMetadata'
  { _tARN ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TransformJobStepMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tARN' - The Amazon Resource Name (ARN) of the transform job that was run by this step execution.
transformJobStepMetadata ::
  TransformJobStepMetadata
transformJobStepMetadata =
  TransformJobStepMetadata' {_tARN = Nothing}

-- | The Amazon Resource Name (ARN) of the transform job that was run by this step execution.
tARN :: Lens' TransformJobStepMetadata (Maybe Text)
tARN = lens _tARN (\s a -> s {_tARN = a})

instance FromJSON TransformJobStepMetadata where
  parseJSON =
    withObject
      "TransformJobStepMetadata"
      (\x -> TransformJobStepMetadata' <$> (x .:? "Arn"))

instance Hashable TransformJobStepMetadata

instance NFData TransformJobStepMetadata
