{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerValidationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerValidationConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.Server
import Network.AWS.SMS.Types.ServerValidationStrategy
import Network.AWS.SMS.Types.UserDataValidationParameters

-- | Configuration for validating an instance.
--
--
--
-- /See:/ 'serverValidationConfiguration' smart constructor.
data ServerValidationConfiguration = ServerValidationConfiguration'
  { _svcValidationId ::
      !( Maybe
           Text
       ),
    _svcUserDataValidationParameters ::
      !( Maybe
           UserDataValidationParameters
       ),
    _svcServer ::
      !( Maybe
           Server
       ),
    _svcName ::
      !( Maybe
           Text
       ),
    _svcServerValidationStrategy ::
      !( Maybe
           ServerValidationStrategy
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

-- | Creates a value of 'ServerValidationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svcValidationId' - The ID of the validation.
--
-- * 'svcUserDataValidationParameters' - The validation parameters.
--
-- * 'svcServer' - Undocumented member.
--
-- * 'svcName' - The name of the configuration.
--
-- * 'svcServerValidationStrategy' - The validation strategy.
serverValidationConfiguration ::
  ServerValidationConfiguration
serverValidationConfiguration =
  ServerValidationConfiguration'
    { _svcValidationId =
        Nothing,
      _svcUserDataValidationParameters = Nothing,
      _svcServer = Nothing,
      _svcName = Nothing,
      _svcServerValidationStrategy = Nothing
    }

-- | The ID of the validation.
svcValidationId :: Lens' ServerValidationConfiguration (Maybe Text)
svcValidationId = lens _svcValidationId (\s a -> s {_svcValidationId = a})

-- | The validation parameters.
svcUserDataValidationParameters :: Lens' ServerValidationConfiguration (Maybe UserDataValidationParameters)
svcUserDataValidationParameters = lens _svcUserDataValidationParameters (\s a -> s {_svcUserDataValidationParameters = a})

-- | Undocumented member.
svcServer :: Lens' ServerValidationConfiguration (Maybe Server)
svcServer = lens _svcServer (\s a -> s {_svcServer = a})

-- | The name of the configuration.
svcName :: Lens' ServerValidationConfiguration (Maybe Text)
svcName = lens _svcName (\s a -> s {_svcName = a})

-- | The validation strategy.
svcServerValidationStrategy :: Lens' ServerValidationConfiguration (Maybe ServerValidationStrategy)
svcServerValidationStrategy = lens _svcServerValidationStrategy (\s a -> s {_svcServerValidationStrategy = a})

instance FromJSON ServerValidationConfiguration where
  parseJSON =
    withObject
      "ServerValidationConfiguration"
      ( \x ->
          ServerValidationConfiguration'
            <$> (x .:? "validationId")
            <*> (x .:? "userDataValidationParameters")
            <*> (x .:? "server")
            <*> (x .:? "name")
            <*> (x .:? "serverValidationStrategy")
      )

instance Hashable ServerValidationConfiguration

instance NFData ServerValidationConfiguration

instance ToJSON ServerValidationConfiguration where
  toJSON ServerValidationConfiguration' {..} =
    object
      ( catMaybes
          [ ("validationId" .=) <$> _svcValidationId,
            ("userDataValidationParameters" .=)
              <$> _svcUserDataValidationParameters,
            ("server" .=) <$> _svcServer,
            ("name" .=) <$> _svcName,
            ("serverValidationStrategy" .=)
              <$> _svcServerValidationStrategy
          ]
      )
