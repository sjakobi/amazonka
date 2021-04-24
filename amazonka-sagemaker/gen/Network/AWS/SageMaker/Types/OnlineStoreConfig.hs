{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OnlineStoreConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OnlineStoreConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.OnlineStoreSecurityConfig

-- | Use this to specify the AWS Key Management Service (KMS) Key ID, or @KMSKeyId@ , for at rest data encryption. You can turn @OnlineStore@ on or off by specifying the @EnableOnlineStore@ flag at General Assembly; the default value is @False@ .
--
--
--
-- /See:/ 'onlineStoreConfig' smart constructor.
data OnlineStoreConfig = OnlineStoreConfig'
  { _oscSecurityConfig ::
      !(Maybe OnlineStoreSecurityConfig),
    _oscEnableOnlineStore ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OnlineStoreConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oscSecurityConfig' - Use to specify KMS Key ID (@KMSKeyId@ ) for at-rest encryption of your @OnlineStore@ .
--
-- * 'oscEnableOnlineStore' - Turn @OnlineStore@ off by specifying @False@ for the @EnableOnlineStore@ flag. Turn @OnlineStore@ on by specifying @True@ for the @EnableOnlineStore@ flag.  The default value is @False@ .
onlineStoreConfig ::
  OnlineStoreConfig
onlineStoreConfig =
  OnlineStoreConfig'
    { _oscSecurityConfig = Nothing,
      _oscEnableOnlineStore = Nothing
    }

-- | Use to specify KMS Key ID (@KMSKeyId@ ) for at-rest encryption of your @OnlineStore@ .
oscSecurityConfig :: Lens' OnlineStoreConfig (Maybe OnlineStoreSecurityConfig)
oscSecurityConfig = lens _oscSecurityConfig (\s a -> s {_oscSecurityConfig = a})

-- | Turn @OnlineStore@ off by specifying @False@ for the @EnableOnlineStore@ flag. Turn @OnlineStore@ on by specifying @True@ for the @EnableOnlineStore@ flag.  The default value is @False@ .
oscEnableOnlineStore :: Lens' OnlineStoreConfig (Maybe Bool)
oscEnableOnlineStore = lens _oscEnableOnlineStore (\s a -> s {_oscEnableOnlineStore = a})

instance FromJSON OnlineStoreConfig where
  parseJSON =
    withObject
      "OnlineStoreConfig"
      ( \x ->
          OnlineStoreConfig'
            <$> (x .:? "SecurityConfig")
            <*> (x .:? "EnableOnlineStore")
      )

instance Hashable OnlineStoreConfig

instance NFData OnlineStoreConfig

instance ToJSON OnlineStoreConfig where
  toJSON OnlineStoreConfig' {..} =
    object
      ( catMaybes
          [ ("SecurityConfig" .=) <$> _oscSecurityConfig,
            ("EnableOnlineStore" .=) <$> _oscEnableOnlineStore
          ]
      )
