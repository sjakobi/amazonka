{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.LoggingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.LoggingConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StepFunctions.Types.LogDestination
import Network.AWS.StepFunctions.Types.LogLevel

-- | The @LoggingConfiguration@ data type is used to set CloudWatch Logs options.
--
--
--
-- /See:/ 'loggingConfiguration' smart constructor.
data LoggingConfiguration = LoggingConfiguration'
  { _lcDestinations ::
      !(Maybe [LogDestination]),
    _lcLevel :: !(Maybe LogLevel),
    _lcIncludeExecutionData ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoggingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcDestinations' - An array of objects that describes where your execution history events will be logged. Limited to size 1. Required, if your log level is not set to @OFF@ .
--
-- * 'lcLevel' - Defines which category of execution history events are logged.
--
-- * 'lcIncludeExecutionData' - Determines whether execution data is included in your log. When set to @false@ , data is excluded.
loggingConfiguration ::
  LoggingConfiguration
loggingConfiguration =
  LoggingConfiguration'
    { _lcDestinations = Nothing,
      _lcLevel = Nothing,
      _lcIncludeExecutionData = Nothing
    }

-- | An array of objects that describes where your execution history events will be logged. Limited to size 1. Required, if your log level is not set to @OFF@ .
lcDestinations :: Lens' LoggingConfiguration [LogDestination]
lcDestinations = lens _lcDestinations (\s a -> s {_lcDestinations = a}) . _Default . _Coerce

-- | Defines which category of execution history events are logged.
lcLevel :: Lens' LoggingConfiguration (Maybe LogLevel)
lcLevel = lens _lcLevel (\s a -> s {_lcLevel = a})

-- | Determines whether execution data is included in your log. When set to @false@ , data is excluded.
lcIncludeExecutionData :: Lens' LoggingConfiguration (Maybe Bool)
lcIncludeExecutionData = lens _lcIncludeExecutionData (\s a -> s {_lcIncludeExecutionData = a})

instance FromJSON LoggingConfiguration where
  parseJSON =
    withObject
      "LoggingConfiguration"
      ( \x ->
          LoggingConfiguration'
            <$> (x .:? "destinations" .!= mempty)
            <*> (x .:? "level")
            <*> (x .:? "includeExecutionData")
      )

instance Hashable LoggingConfiguration

instance NFData LoggingConfiguration

instance ToJSON LoggingConfiguration where
  toJSON LoggingConfiguration' {..} =
    object
      ( catMaybes
          [ ("destinations" .=) <$> _lcDestinations,
            ("level" .=) <$> _lcLevel,
            ("includeExecutionData" .=)
              <$> _lcIncludeExecutionData
          ]
      )
