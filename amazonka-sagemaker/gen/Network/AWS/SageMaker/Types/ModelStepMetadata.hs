{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelStepMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata for Model steps.
--
--
--
-- /See:/ 'modelStepMetadata' smart constructor.
newtype ModelStepMetadata = ModelStepMetadata'
  { _msmARN ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelStepMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msmARN' - The Amazon Resource Name (ARN) of the created model.
modelStepMetadata ::
  ModelStepMetadata
modelStepMetadata =
  ModelStepMetadata' {_msmARN = Nothing}

-- | The Amazon Resource Name (ARN) of the created model.
msmARN :: Lens' ModelStepMetadata (Maybe Text)
msmARN = lens _msmARN (\s a -> s {_msmARN = a})

instance FromJSON ModelStepMetadata where
  parseJSON =
    withObject
      "ModelStepMetadata"
      (\x -> ModelStepMetadata' <$> (x .:? "Arn"))

instance Hashable ModelStepMetadata

instance NFData ModelStepMetadata
