{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelExplainabilityJobInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelExplainabilityJobInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.EndpointInput

-- | Inputs for the model explainability job.
--
--
--
-- /See:/ 'modelExplainabilityJobInput' smart constructor.
newtype ModelExplainabilityJobInput = ModelExplainabilityJobInput'
  { _mejiEndpointInput ::
      EndpointInput
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModelExplainabilityJobInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mejiEndpointInput' - Undocumented member.
modelExplainabilityJobInput ::
  -- | 'mejiEndpointInput'
  EndpointInput ->
  ModelExplainabilityJobInput
modelExplainabilityJobInput pEndpointInput_ =
  ModelExplainabilityJobInput'
    { _mejiEndpointInput =
        pEndpointInput_
    }

-- | Undocumented member.
mejiEndpointInput :: Lens' ModelExplainabilityJobInput EndpointInput
mejiEndpointInput = lens _mejiEndpointInput (\s a -> s {_mejiEndpointInput = a})

instance FromJSON ModelExplainabilityJobInput where
  parseJSON =
    withObject
      "ModelExplainabilityJobInput"
      ( \x ->
          ModelExplainabilityJobInput'
            <$> (x .: "EndpointInput")
      )

instance Hashable ModelExplainabilityJobInput

instance NFData ModelExplainabilityJobInput

instance ToJSON ModelExplainabilityJobInput where
  toJSON ModelExplainabilityJobInput' {..} =
    object
      ( catMaybes
          [Just ("EndpointInput" .= _mejiEndpointInput)]
      )
