{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.FunctionEventInvokeConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.FunctionEventInvokeConfig where

import Network.AWS.Lambda.Types.DestinationConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'functionEventInvokeConfig' smart constructor.
data FunctionEventInvokeConfig = FunctionEventInvokeConfig'
  { _feicMaximumEventAgeInSeconds ::
      !(Maybe Nat),
    _feicFunctionARN ::
      !(Maybe Text),
    _feicDestinationConfig ::
      !( Maybe
           DestinationConfig
       ),
    _feicMaximumRetryAttempts ::
      !(Maybe Nat),
    _feicLastModified ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FunctionEventInvokeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feicMaximumEventAgeInSeconds' - The maximum age of a request that Lambda sends to a function for processing.
--
-- * 'feicFunctionARN' - The Amazon Resource Name (ARN) of the function.
--
-- * 'feicDestinationConfig' - A destination for events after they have been sent to a function for processing. __Destinations__      * __Function__ - The Amazon Resource Name (ARN) of a Lambda function.     * __Queue__ - The ARN of an SQS queue.     * __Topic__ - The ARN of an SNS topic.     * __Event Bus__ - The ARN of an Amazon EventBridge event bus.
--
-- * 'feicMaximumRetryAttempts' - The maximum number of times to retry when the function returns an error.
--
-- * 'feicLastModified' - The date and time that the configuration was last updated.
functionEventInvokeConfig ::
  FunctionEventInvokeConfig
functionEventInvokeConfig =
  FunctionEventInvokeConfig'
    { _feicMaximumEventAgeInSeconds =
        Nothing,
      _feicFunctionARN = Nothing,
      _feicDestinationConfig = Nothing,
      _feicMaximumRetryAttempts = Nothing,
      _feicLastModified = Nothing
    }

-- | The maximum age of a request that Lambda sends to a function for processing.
feicMaximumEventAgeInSeconds :: Lens' FunctionEventInvokeConfig (Maybe Natural)
feicMaximumEventAgeInSeconds = lens _feicMaximumEventAgeInSeconds (\s a -> s {_feicMaximumEventAgeInSeconds = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the function.
feicFunctionARN :: Lens' FunctionEventInvokeConfig (Maybe Text)
feicFunctionARN = lens _feicFunctionARN (\s a -> s {_feicFunctionARN = a})

-- | A destination for events after they have been sent to a function for processing. __Destinations__      * __Function__ - The Amazon Resource Name (ARN) of a Lambda function.     * __Queue__ - The ARN of an SQS queue.     * __Topic__ - The ARN of an SNS topic.     * __Event Bus__ - The ARN of an Amazon EventBridge event bus.
feicDestinationConfig :: Lens' FunctionEventInvokeConfig (Maybe DestinationConfig)
feicDestinationConfig = lens _feicDestinationConfig (\s a -> s {_feicDestinationConfig = a})

-- | The maximum number of times to retry when the function returns an error.
feicMaximumRetryAttempts :: Lens' FunctionEventInvokeConfig (Maybe Natural)
feicMaximumRetryAttempts = lens _feicMaximumRetryAttempts (\s a -> s {_feicMaximumRetryAttempts = a}) . mapping _Nat

-- | The date and time that the configuration was last updated.
feicLastModified :: Lens' FunctionEventInvokeConfig (Maybe UTCTime)
feicLastModified = lens _feicLastModified (\s a -> s {_feicLastModified = a}) . mapping _Time

instance FromJSON FunctionEventInvokeConfig where
  parseJSON =
    withObject
      "FunctionEventInvokeConfig"
      ( \x ->
          FunctionEventInvokeConfig'
            <$> (x .:? "MaximumEventAgeInSeconds")
            <*> (x .:? "FunctionArn")
            <*> (x .:? "DestinationConfig")
            <*> (x .:? "MaximumRetryAttempts")
            <*> (x .:? "LastModified")
      )

instance Hashable FunctionEventInvokeConfig

instance NFData FunctionEventInvokeConfig
