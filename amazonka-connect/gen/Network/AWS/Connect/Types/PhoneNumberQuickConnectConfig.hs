{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.PhoneNumberQuickConnectConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.PhoneNumberQuickConnectConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a phone number for a quick connect.
--
--
--
-- /See:/ 'phoneNumberQuickConnectConfig' smart constructor.
newtype PhoneNumberQuickConnectConfig = PhoneNumberQuickConnectConfig'
  { _pnqccPhoneNumber ::
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

-- | Creates a value of 'PhoneNumberQuickConnectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnqccPhoneNumber' - The phone number in E.164 format.
phoneNumberQuickConnectConfig ::
  -- | 'pnqccPhoneNumber'
  Text ->
  PhoneNumberQuickConnectConfig
phoneNumberQuickConnectConfig pPhoneNumber_ =
  PhoneNumberQuickConnectConfig'
    { _pnqccPhoneNumber =
        pPhoneNumber_
    }

-- | The phone number in E.164 format.
pnqccPhoneNumber :: Lens' PhoneNumberQuickConnectConfig Text
pnqccPhoneNumber = lens _pnqccPhoneNumber (\s a -> s {_pnqccPhoneNumber = a})

instance FromJSON PhoneNumberQuickConnectConfig where
  parseJSON =
    withObject
      "PhoneNumberQuickConnectConfig"
      ( \x ->
          PhoneNumberQuickConnectConfig'
            <$> (x .: "PhoneNumber")
      )

instance Hashable PhoneNumberQuickConnectConfig

instance NFData PhoneNumberQuickConnectConfig

instance ToJSON PhoneNumberQuickConnectConfig where
  toJSON PhoneNumberQuickConnectConfig' {..} =
    object
      ( catMaybes
          [Just ("PhoneNumber" .= _pnqccPhoneNumber)]
      )
