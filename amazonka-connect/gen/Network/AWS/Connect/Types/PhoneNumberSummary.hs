{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.PhoneNumberSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.PhoneNumberSummary where

import Network.AWS.Connect.Types.PhoneNumberCountryCode
import Network.AWS.Connect.Types.PhoneNumberType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains summary information about a phone number for a contact center.
--
--
--
-- /See:/ 'phoneNumberSummary' smart constructor.
data PhoneNumberSummary = PhoneNumberSummary'
  { _pnsPhoneNumber ::
      !(Maybe Text),
    _pnsARN :: !(Maybe Text),
    _pnsId :: !(Maybe Text),
    _pnsPhoneNumberType ::
      !(Maybe PhoneNumberType),
    _pnsPhoneNumberCountryCode ::
      !(Maybe PhoneNumberCountryCode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PhoneNumberSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsPhoneNumber' - The phone number.
--
-- * 'pnsARN' - The Amazon Resource Name (ARN) of the phone number.
--
-- * 'pnsId' - The identifier of the phone number.
--
-- * 'pnsPhoneNumberType' - The type of phone number.
--
-- * 'pnsPhoneNumberCountryCode' - The ISO country code.
phoneNumberSummary ::
  PhoneNumberSummary
phoneNumberSummary =
  PhoneNumberSummary'
    { _pnsPhoneNumber = Nothing,
      _pnsARN = Nothing,
      _pnsId = Nothing,
      _pnsPhoneNumberType = Nothing,
      _pnsPhoneNumberCountryCode = Nothing
    }

-- | The phone number.
pnsPhoneNumber :: Lens' PhoneNumberSummary (Maybe Text)
pnsPhoneNumber = lens _pnsPhoneNumber (\s a -> s {_pnsPhoneNumber = a})

-- | The Amazon Resource Name (ARN) of the phone number.
pnsARN :: Lens' PhoneNumberSummary (Maybe Text)
pnsARN = lens _pnsARN (\s a -> s {_pnsARN = a})

-- | The identifier of the phone number.
pnsId :: Lens' PhoneNumberSummary (Maybe Text)
pnsId = lens _pnsId (\s a -> s {_pnsId = a})

-- | The type of phone number.
pnsPhoneNumberType :: Lens' PhoneNumberSummary (Maybe PhoneNumberType)
pnsPhoneNumberType = lens _pnsPhoneNumberType (\s a -> s {_pnsPhoneNumberType = a})

-- | The ISO country code.
pnsPhoneNumberCountryCode :: Lens' PhoneNumberSummary (Maybe PhoneNumberCountryCode)
pnsPhoneNumberCountryCode = lens _pnsPhoneNumberCountryCode (\s a -> s {_pnsPhoneNumberCountryCode = a})

instance FromJSON PhoneNumberSummary where
  parseJSON =
    withObject
      "PhoneNumberSummary"
      ( \x ->
          PhoneNumberSummary'
            <$> (x .:? "PhoneNumber")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "PhoneNumberType")
            <*> (x .:? "PhoneNumberCountryCode")
      )

instance Hashable PhoneNumberSummary

instance NFData PhoneNumberSummary
