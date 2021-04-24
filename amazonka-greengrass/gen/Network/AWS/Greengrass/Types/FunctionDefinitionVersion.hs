{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.FunctionDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.FunctionDefinitionVersion where

import Network.AWS.Greengrass.Types.Function
import Network.AWS.Greengrass.Types.FunctionDefaultConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a function definition version.
--
-- /See:/ 'functionDefinitionVersion' smart constructor.
data FunctionDefinitionVersion = FunctionDefinitionVersion'
  { _fdvFunctions ::
      !(Maybe [Function]),
    _fdvDefaultConfig ::
      !( Maybe
           FunctionDefaultConfig
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

-- | Creates a value of 'FunctionDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdvFunctions' - A list of Lambda functions in this function definition version.
--
-- * 'fdvDefaultConfig' - The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
functionDefinitionVersion ::
  FunctionDefinitionVersion
functionDefinitionVersion =
  FunctionDefinitionVersion'
    { _fdvFunctions = Nothing,
      _fdvDefaultConfig = Nothing
    }

-- | A list of Lambda functions in this function definition version.
fdvFunctions :: Lens' FunctionDefinitionVersion [Function]
fdvFunctions = lens _fdvFunctions (\s a -> s {_fdvFunctions = a}) . _Default . _Coerce

-- | The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
fdvDefaultConfig :: Lens' FunctionDefinitionVersion (Maybe FunctionDefaultConfig)
fdvDefaultConfig = lens _fdvDefaultConfig (\s a -> s {_fdvDefaultConfig = a})

instance FromJSON FunctionDefinitionVersion where
  parseJSON =
    withObject
      "FunctionDefinitionVersion"
      ( \x ->
          FunctionDefinitionVersion'
            <$> (x .:? "Functions" .!= mempty)
            <*> (x .:? "DefaultConfig")
      )

instance Hashable FunctionDefinitionVersion

instance NFData FunctionDefinitionVersion

instance ToJSON FunctionDefinitionVersion where
  toJSON FunctionDefinitionVersion' {..} =
    object
      ( catMaybes
          [ ("Functions" .=) <$> _fdvFunctions,
            ("DefaultConfig" .=) <$> _fdvDefaultConfig
          ]
      )
