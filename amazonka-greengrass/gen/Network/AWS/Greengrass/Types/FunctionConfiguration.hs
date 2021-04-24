{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.FunctionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.FunctionConfiguration where

import Network.AWS.Greengrass.Types.EncodingType
import Network.AWS.Greengrass.Types.FunctionConfigurationEnvironment
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The configuration of the Lambda function.
--
-- /See:/ 'functionConfiguration' smart constructor.
data FunctionConfiguration = FunctionConfiguration'
  { _fcExecArgs ::
      !(Maybe Text),
    _fcMemorySize ::
      !(Maybe Int),
    _fcTimeout :: !(Maybe Int),
    _fcEncodingType ::
      !(Maybe EncodingType),
    _fcPinned :: !(Maybe Bool),
    _fcExecutable ::
      !(Maybe Text),
    _fcEnvironment ::
      !( Maybe
           FunctionConfigurationEnvironment
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FunctionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcExecArgs' - The execution arguments.
--
-- * 'fcMemorySize' - The memory size, in KB, which the function requires. This setting is not applicable and should be cleared when you run the Lambda function without containerization.
--
-- * 'fcTimeout' - The allowed function execution time, after which Lambda should terminate the function. This timeout still applies to pinned Lambda functions for each request.
--
-- * 'fcEncodingType' - The expected encoding type of the input payload for the function. The default is ''json''.
--
-- * 'fcPinned' - True if the function is pinned. Pinned means the function is long-lived and starts when the core starts.
--
-- * 'fcExecutable' - The name of the function executable.
--
-- * 'fcEnvironment' - The environment configuration of the function.
functionConfiguration ::
  FunctionConfiguration
functionConfiguration =
  FunctionConfiguration'
    { _fcExecArgs = Nothing,
      _fcMemorySize = Nothing,
      _fcTimeout = Nothing,
      _fcEncodingType = Nothing,
      _fcPinned = Nothing,
      _fcExecutable = Nothing,
      _fcEnvironment = Nothing
    }

-- | The execution arguments.
fcExecArgs :: Lens' FunctionConfiguration (Maybe Text)
fcExecArgs = lens _fcExecArgs (\s a -> s {_fcExecArgs = a})

-- | The memory size, in KB, which the function requires. This setting is not applicable and should be cleared when you run the Lambda function without containerization.
fcMemorySize :: Lens' FunctionConfiguration (Maybe Int)
fcMemorySize = lens _fcMemorySize (\s a -> s {_fcMemorySize = a})

-- | The allowed function execution time, after which Lambda should terminate the function. This timeout still applies to pinned Lambda functions for each request.
fcTimeout :: Lens' FunctionConfiguration (Maybe Int)
fcTimeout = lens _fcTimeout (\s a -> s {_fcTimeout = a})

-- | The expected encoding type of the input payload for the function. The default is ''json''.
fcEncodingType :: Lens' FunctionConfiguration (Maybe EncodingType)
fcEncodingType = lens _fcEncodingType (\s a -> s {_fcEncodingType = a})

-- | True if the function is pinned. Pinned means the function is long-lived and starts when the core starts.
fcPinned :: Lens' FunctionConfiguration (Maybe Bool)
fcPinned = lens _fcPinned (\s a -> s {_fcPinned = a})

-- | The name of the function executable.
fcExecutable :: Lens' FunctionConfiguration (Maybe Text)
fcExecutable = lens _fcExecutable (\s a -> s {_fcExecutable = a})

-- | The environment configuration of the function.
fcEnvironment :: Lens' FunctionConfiguration (Maybe FunctionConfigurationEnvironment)
fcEnvironment = lens _fcEnvironment (\s a -> s {_fcEnvironment = a})

instance FromJSON FunctionConfiguration where
  parseJSON =
    withObject
      "FunctionConfiguration"
      ( \x ->
          FunctionConfiguration'
            <$> (x .:? "ExecArgs")
            <*> (x .:? "MemorySize")
            <*> (x .:? "Timeout")
            <*> (x .:? "EncodingType")
            <*> (x .:? "Pinned")
            <*> (x .:? "Executable")
            <*> (x .:? "Environment")
      )

instance Hashable FunctionConfiguration

instance NFData FunctionConfiguration

instance ToJSON FunctionConfiguration where
  toJSON FunctionConfiguration' {..} =
    object
      ( catMaybes
          [ ("ExecArgs" .=) <$> _fcExecArgs,
            ("MemorySize" .=) <$> _fcMemorySize,
            ("Timeout" .=) <$> _fcTimeout,
            ("EncodingType" .=) <$> _fcEncodingType,
            ("Pinned" .=) <$> _fcPinned,
            ("Executable" .=) <$> _fcExecutable,
            ("Environment" .=) <$> _fcEnvironment
          ]
      )
