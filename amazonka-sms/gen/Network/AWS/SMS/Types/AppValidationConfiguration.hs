{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppValidationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppValidationConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.AppValidationStrategy
import Network.AWS.SMS.Types.SSMValidationParameters

-- | Configuration for validating an application.
--
--
--
-- /See:/ 'appValidationConfiguration' smart constructor.
data AppValidationConfiguration = AppValidationConfiguration'
  { _avcSsmValidationParameters ::
      !( Maybe
           SSMValidationParameters
       ),
    _avcAppValidationStrategy ::
      !( Maybe
           AppValidationStrategy
       ),
    _avcValidationId ::
      !(Maybe Text),
    _avcName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AppValidationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avcSsmValidationParameters' - The validation parameters.
--
-- * 'avcAppValidationStrategy' - The validation strategy.
--
-- * 'avcValidationId' - The ID of the validation.
--
-- * 'avcName' - The name of the configuration.
appValidationConfiguration ::
  AppValidationConfiguration
appValidationConfiguration =
  AppValidationConfiguration'
    { _avcSsmValidationParameters =
        Nothing,
      _avcAppValidationStrategy = Nothing,
      _avcValidationId = Nothing,
      _avcName = Nothing
    }

-- | The validation parameters.
avcSsmValidationParameters :: Lens' AppValidationConfiguration (Maybe SSMValidationParameters)
avcSsmValidationParameters = lens _avcSsmValidationParameters (\s a -> s {_avcSsmValidationParameters = a})

-- | The validation strategy.
avcAppValidationStrategy :: Lens' AppValidationConfiguration (Maybe AppValidationStrategy)
avcAppValidationStrategy = lens _avcAppValidationStrategy (\s a -> s {_avcAppValidationStrategy = a})

-- | The ID of the validation.
avcValidationId :: Lens' AppValidationConfiguration (Maybe Text)
avcValidationId = lens _avcValidationId (\s a -> s {_avcValidationId = a})

-- | The name of the configuration.
avcName :: Lens' AppValidationConfiguration (Maybe Text)
avcName = lens _avcName (\s a -> s {_avcName = a})

instance FromJSON AppValidationConfiguration where
  parseJSON =
    withObject
      "AppValidationConfiguration"
      ( \x ->
          AppValidationConfiguration'
            <$> (x .:? "ssmValidationParameters")
            <*> (x .:? "appValidationStrategy")
            <*> (x .:? "validationId")
            <*> (x .:? "name")
      )

instance Hashable AppValidationConfiguration

instance NFData AppValidationConfiguration

instance ToJSON AppValidationConfiguration where
  toJSON AppValidationConfiguration' {..} =
    object
      ( catMaybes
          [ ("ssmValidationParameters" .=)
              <$> _avcSsmValidationParameters,
            ("appValidationStrategy" .=)
              <$> _avcAppValidationStrategy,
            ("validationId" .=) <$> _avcValidationId,
            ("name" .=) <$> _avcName
          ]
      )
