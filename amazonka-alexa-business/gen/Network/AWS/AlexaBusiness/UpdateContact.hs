{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.UpdateContact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the contact details by the contact ARN.
module Network.AWS.AlexaBusiness.UpdateContact
  ( -- * Creating a Request
    updateContact,
    UpdateContact,

    -- * Request Lenses
    ucPhoneNumber,
    ucPhoneNumbers,
    ucDisplayName,
    ucFirstName,
    ucLastName,
    ucSipAddresses,
    ucContactARN,

    -- * Destructuring the Response
    updateContactResponse,
    UpdateContactResponse,

    -- * Response Lenses
    ucrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateContact' smart constructor.
data UpdateContact = UpdateContact'
  { _ucPhoneNumber ::
      !(Maybe (Sensitive Text)),
    _ucPhoneNumbers :: !(Maybe [PhoneNumber]),
    _ucDisplayName :: !(Maybe Text),
    _ucFirstName :: !(Maybe Text),
    _ucLastName :: !(Maybe Text),
    _ucSipAddresses :: !(Maybe [SipAddress]),
    _ucContactARN :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucPhoneNumber' - The updated phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
--
-- * 'ucPhoneNumbers' - The list of phone numbers for the contact.
--
-- * 'ucDisplayName' - The updated display name of the contact.
--
-- * 'ucFirstName' - The updated first name of the contact.
--
-- * 'ucLastName' - The updated last name of the contact.
--
-- * 'ucSipAddresses' - The list of SIP addresses for the contact.
--
-- * 'ucContactARN' - The ARN of the contact to update.
updateContact ::
  -- | 'ucContactARN'
  Text ->
  UpdateContact
updateContact pContactARN_ =
  UpdateContact'
    { _ucPhoneNumber = Nothing,
      _ucPhoneNumbers = Nothing,
      _ucDisplayName = Nothing,
      _ucFirstName = Nothing,
      _ucLastName = Nothing,
      _ucSipAddresses = Nothing,
      _ucContactARN = pContactARN_
    }

-- | The updated phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
ucPhoneNumber :: Lens' UpdateContact (Maybe Text)
ucPhoneNumber = lens _ucPhoneNumber (\s a -> s {_ucPhoneNumber = a}) . mapping _Sensitive

-- | The list of phone numbers for the contact.
ucPhoneNumbers :: Lens' UpdateContact [PhoneNumber]
ucPhoneNumbers = lens _ucPhoneNumbers (\s a -> s {_ucPhoneNumbers = a}) . _Default . _Coerce

-- | The updated display name of the contact.
ucDisplayName :: Lens' UpdateContact (Maybe Text)
ucDisplayName = lens _ucDisplayName (\s a -> s {_ucDisplayName = a})

-- | The updated first name of the contact.
ucFirstName :: Lens' UpdateContact (Maybe Text)
ucFirstName = lens _ucFirstName (\s a -> s {_ucFirstName = a})

-- | The updated last name of the contact.
ucLastName :: Lens' UpdateContact (Maybe Text)
ucLastName = lens _ucLastName (\s a -> s {_ucLastName = a})

-- | The list of SIP addresses for the contact.
ucSipAddresses :: Lens' UpdateContact [SipAddress]
ucSipAddresses = lens _ucSipAddresses (\s a -> s {_ucSipAddresses = a}) . _Default . _Coerce

-- | The ARN of the contact to update.
ucContactARN :: Lens' UpdateContact Text
ucContactARN = lens _ucContactARN (\s a -> s {_ucContactARN = a})

instance AWSRequest UpdateContact where
  type Rs UpdateContact = UpdateContactResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          UpdateContactResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateContact

instance NFData UpdateContact

instance ToHeaders UpdateContact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.UpdateContact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateContact where
  toJSON UpdateContact' {..} =
    object
      ( catMaybes
          [ ("PhoneNumber" .=) <$> _ucPhoneNumber,
            ("PhoneNumbers" .=) <$> _ucPhoneNumbers,
            ("DisplayName" .=) <$> _ucDisplayName,
            ("FirstName" .=) <$> _ucFirstName,
            ("LastName" .=) <$> _ucLastName,
            ("SipAddresses" .=) <$> _ucSipAddresses,
            Just ("ContactArn" .= _ucContactARN)
          ]
      )

instance ToPath UpdateContact where
  toPath = const "/"

instance ToQuery UpdateContact where
  toQuery = const mempty

-- | /See:/ 'updateContactResponse' smart constructor.
newtype UpdateContactResponse = UpdateContactResponse'
  { _ucrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateContactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateContactResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateContactResponse
updateContactResponse pResponseStatus_ =
  UpdateContactResponse'
    { _ucrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateContactResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateContactResponse
