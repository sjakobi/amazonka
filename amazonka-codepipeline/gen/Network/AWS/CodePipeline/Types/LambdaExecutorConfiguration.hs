{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.LambdaExecutorConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.LambdaExecutorConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the configuration for the @Lambda@ action engine, or executor.
--
--
--
-- /See:/ 'lambdaExecutorConfiguration' smart constructor.
newtype LambdaExecutorConfiguration = LambdaExecutorConfiguration'
  { _lecLambdaFunctionARN ::
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

-- | Creates a value of 'LambdaExecutorConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lecLambdaFunctionARN' - The ARN of the Lambda function used by the action engine.
lambdaExecutorConfiguration ::
  -- | 'lecLambdaFunctionARN'
  Text ->
  LambdaExecutorConfiguration
lambdaExecutorConfiguration pLambdaFunctionARN_ =
  LambdaExecutorConfiguration'
    { _lecLambdaFunctionARN =
        pLambdaFunctionARN_
    }

-- | The ARN of the Lambda function used by the action engine.
lecLambdaFunctionARN :: Lens' LambdaExecutorConfiguration Text
lecLambdaFunctionARN = lens _lecLambdaFunctionARN (\s a -> s {_lecLambdaFunctionARN = a})

instance FromJSON LambdaExecutorConfiguration where
  parseJSON =
    withObject
      "LambdaExecutorConfiguration"
      ( \x ->
          LambdaExecutorConfiguration'
            <$> (x .: "lambdaFunctionArn")
      )

instance Hashable LambdaExecutorConfiguration

instance NFData LambdaExecutorConfiguration

instance ToJSON LambdaExecutorConfiguration where
  toJSON LambdaExecutorConfiguration' {..} =
    object
      ( catMaybes
          [ Just
              ("lambdaFunctionArn" .= _lecLambdaFunctionARN)
          ]
      )
