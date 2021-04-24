{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.NumberValidateRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.NumberValidateRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies a phone number to validate and retrieve information about.
--
--
--
-- /See:/ 'numberValidateRequest' smart constructor.
data NumberValidateRequest = NumberValidateRequest'
  { _nvrPhoneNumber ::
      !(Maybe Text),
    _nvrIsoCountryCode ::
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

-- | Creates a value of 'NumberValidateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nvrPhoneNumber' - The phone number to retrieve information about. The phone number that you provide should include a valid numeric country code. Otherwise, the operation might result in an error.
--
-- * 'nvrIsoCountryCode' - The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.
numberValidateRequest ::
  NumberValidateRequest
numberValidateRequest =
  NumberValidateRequest'
    { _nvrPhoneNumber = Nothing,
      _nvrIsoCountryCode = Nothing
    }

-- | The phone number to retrieve information about. The phone number that you provide should include a valid numeric country code. Otherwise, the operation might result in an error.
nvrPhoneNumber :: Lens' NumberValidateRequest (Maybe Text)
nvrPhoneNumber = lens _nvrPhoneNumber (\s a -> s {_nvrPhoneNumber = a})

-- | The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.
nvrIsoCountryCode :: Lens' NumberValidateRequest (Maybe Text)
nvrIsoCountryCode = lens _nvrIsoCountryCode (\s a -> s {_nvrIsoCountryCode = a})

instance Hashable NumberValidateRequest

instance NFData NumberValidateRequest

instance ToJSON NumberValidateRequest where
  toJSON NumberValidateRequest' {..} =
    object
      ( catMaybes
          [ ("PhoneNumber" .=) <$> _nvrPhoneNumber,
            ("IsoCountryCode" .=) <$> _nvrIsoCountryCode
          ]
      )
