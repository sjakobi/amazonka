{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.InferenceExecutionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.InferenceExecutionConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.InferenceExecutionMode

-- | Specifies details about how containers in a multi-container endpoint are run.
--
--
--
-- /See:/ 'inferenceExecutionConfig' smart constructor.
newtype InferenceExecutionConfig = InferenceExecutionConfig'
  { _iecMode ::
      InferenceExecutionMode
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InferenceExecutionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iecMode' - How containers in a multi-container are run. The following values are valid.     * @SERIAL@ - Containers run as a serial pipeline.     * @DIRECT@ - Only the individual container that you specify is run.
inferenceExecutionConfig ::
  -- | 'iecMode'
  InferenceExecutionMode ->
  InferenceExecutionConfig
inferenceExecutionConfig pMode_ =
  InferenceExecutionConfig' {_iecMode = pMode_}

-- | How containers in a multi-container are run. The following values are valid.     * @SERIAL@ - Containers run as a serial pipeline.     * @DIRECT@ - Only the individual container that you specify is run.
iecMode :: Lens' InferenceExecutionConfig InferenceExecutionMode
iecMode = lens _iecMode (\s a -> s {_iecMode = a})

instance FromJSON InferenceExecutionConfig where
  parseJSON =
    withObject
      "InferenceExecutionConfig"
      (\x -> InferenceExecutionConfig' <$> (x .: "Mode"))

instance Hashable InferenceExecutionConfig

instance NFData InferenceExecutionConfig

instance ToJSON InferenceExecutionConfig where
  toJSON InferenceExecutionConfig' {..} =
    object (catMaybes [Just ("Mode" .= _iecMode)])
