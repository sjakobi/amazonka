{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Contact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Contact where

import Network.AWS.AlexaBusiness.Types.PhoneNumber
import Network.AWS.AlexaBusiness.Types.SipAddress
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A contact with attributes.
--
--
--
-- /See:/ 'contact' smart constructor.
data Contact = Contact'
  { _cPhoneNumber ::
      !(Maybe (Sensitive Text)),
    _cPhoneNumbers :: !(Maybe [PhoneNumber]),
    _cDisplayName :: !(Maybe Text),
    _cContactARN :: !(Maybe Text),
    _cFirstName :: !(Maybe Text),
    _cLastName :: !(Maybe Text),
    _cSipAddresses :: !(Maybe [SipAddress])
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Contact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPhoneNumber' - The phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
--
-- * 'cPhoneNumbers' - The list of phone numbers for the contact.
--
-- * 'cDisplayName' - The name of the contact to display on the console.
--
-- * 'cContactARN' - The ARN of the contact.
--
-- * 'cFirstName' - The first name of the contact, used to call the contact on the device.
--
-- * 'cLastName' - The last name of the contact, used to call the contact on the device.
--
-- * 'cSipAddresses' - The list of SIP addresses for the contact.
contact ::
  Contact
contact =
  Contact'
    { _cPhoneNumber = Nothing,
      _cPhoneNumbers = Nothing,
      _cDisplayName = Nothing,
      _cContactARN = Nothing,
      _cFirstName = Nothing,
      _cLastName = Nothing,
      _cSipAddresses = Nothing
    }

-- | The phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
cPhoneNumber :: Lens' Contact (Maybe Text)
cPhoneNumber = lens _cPhoneNumber (\s a -> s {_cPhoneNumber = a}) . mapping _Sensitive

-- | The list of phone numbers for the contact.
cPhoneNumbers :: Lens' Contact [PhoneNumber]
cPhoneNumbers = lens _cPhoneNumbers (\s a -> s {_cPhoneNumbers = a}) . _Default . _Coerce

-- | The name of the contact to display on the console.
cDisplayName :: Lens' Contact (Maybe Text)
cDisplayName = lens _cDisplayName (\s a -> s {_cDisplayName = a})

-- | The ARN of the contact.
cContactARN :: Lens' Contact (Maybe Text)
cContactARN = lens _cContactARN (\s a -> s {_cContactARN = a})

-- | The first name of the contact, used to call the contact on the device.
cFirstName :: Lens' Contact (Maybe Text)
cFirstName = lens _cFirstName (\s a -> s {_cFirstName = a})

-- | The last name of the contact, used to call the contact on the device.
cLastName :: Lens' Contact (Maybe Text)
cLastName = lens _cLastName (\s a -> s {_cLastName = a})

-- | The list of SIP addresses for the contact.
cSipAddresses :: Lens' Contact [SipAddress]
cSipAddresses = lens _cSipAddresses (\s a -> s {_cSipAddresses = a}) . _Default . _Coerce

instance FromJSON Contact where
  parseJSON =
    withObject
      "Contact"
      ( \x ->
          Contact'
            <$> (x .:? "PhoneNumber")
            <*> (x .:? "PhoneNumbers" .!= mempty)
            <*> (x .:? "DisplayName")
            <*> (x .:? "ContactArn")
            <*> (x .:? "FirstName")
            <*> (x .:? "LastName")
            <*> (x .:? "SipAddresses" .!= mempty)
      )

instance Hashable Contact

instance NFData Contact
