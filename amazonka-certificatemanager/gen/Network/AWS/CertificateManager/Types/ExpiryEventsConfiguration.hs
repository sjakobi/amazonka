{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.ExpiryEventsConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.ExpiryEventsConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Object containing expiration events options associated with an AWS account.
--
--
--
-- /See:/ 'expiryEventsConfiguration' smart constructor.
newtype ExpiryEventsConfiguration = ExpiryEventsConfiguration'
  { _eecDaysBeforeExpiry ::
      Maybe Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExpiryEventsConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eecDaysBeforeExpiry' - Specifies the number of days prior to certificate expiration when ACM starts generating @EventBridge@ events. ACM sends one event per day per certificate until the certificate expires. By default, accounts receive events starting 45 days before certificate expiration.
expiryEventsConfiguration ::
  ExpiryEventsConfiguration
expiryEventsConfiguration =
  ExpiryEventsConfiguration'
    { _eecDaysBeforeExpiry =
        Nothing
    }

-- | Specifies the number of days prior to certificate expiration when ACM starts generating @EventBridge@ events. ACM sends one event per day per certificate until the certificate expires. By default, accounts receive events starting 45 days before certificate expiration.
eecDaysBeforeExpiry :: Lens' ExpiryEventsConfiguration (Maybe Natural)
eecDaysBeforeExpiry = lens _eecDaysBeforeExpiry (\s a -> s {_eecDaysBeforeExpiry = a}) . mapping _Nat

instance FromJSON ExpiryEventsConfiguration where
  parseJSON =
    withObject
      "ExpiryEventsConfiguration"
      ( \x ->
          ExpiryEventsConfiguration'
            <$> (x .:? "DaysBeforeExpiry")
      )

instance Hashable ExpiryEventsConfiguration

instance NFData ExpiryEventsConfiguration

instance ToJSON ExpiryEventsConfiguration where
  toJSON ExpiryEventsConfiguration' {..} =
    object
      ( catMaybes
          [("DaysBeforeExpiry" .=) <$> _eecDaysBeforeExpiry]
      )
