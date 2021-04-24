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
-- Module      : Network.AWS.AlexaBusiness.CreateContact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a contact with the specified details.
module Network.AWS.AlexaBusiness.CreateContact
  ( -- * Creating a Request
    createContact,
    CreateContact,

    -- * Request Lenses
    ccPhoneNumber,
    ccPhoneNumbers,
    ccTags,
    ccClientRequestToken,
    ccDisplayName,
    ccLastName,
    ccSipAddresses,
    ccFirstName,

    -- * Destructuring the Response
    createContactResponse,
    CreateContactResponse,

    -- * Response Lenses
    ccrrsContactARN,
    ccrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createContact' smart constructor.
data CreateContact = CreateContact'
  { _ccPhoneNumber ::
      !(Maybe (Sensitive Text)),
    _ccPhoneNumbers :: !(Maybe [PhoneNumber]),
    _ccTags :: !(Maybe [Tag]),
    _ccClientRequestToken :: !(Maybe Text),
    _ccDisplayName :: !(Maybe Text),
    _ccLastName :: !(Maybe Text),
    _ccSipAddresses :: !(Maybe [SipAddress]),
    _ccFirstName :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccPhoneNumber' - The phone number of the contact in E.164 format. The phone number type defaults to WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
--
-- * 'ccPhoneNumbers' - The list of phone numbers for the contact.
--
-- * 'ccTags' - The tags to be added to the specified resource. Do not provide system tags.
--
-- * 'ccClientRequestToken' - A unique, user-specified identifier for this request that ensures idempotency.
--
-- * 'ccDisplayName' - The name of the contact to display on the console.
--
-- * 'ccLastName' - The last name of the contact that is used to call the contact on the device.
--
-- * 'ccSipAddresses' - The list of SIP addresses for the contact.
--
-- * 'ccFirstName' - The first name of the contact that is used to call the contact on the device.
createContact ::
  -- | 'ccFirstName'
  Text ->
  CreateContact
createContact pFirstName_ =
  CreateContact'
    { _ccPhoneNumber = Nothing,
      _ccPhoneNumbers = Nothing,
      _ccTags = Nothing,
      _ccClientRequestToken = Nothing,
      _ccDisplayName = Nothing,
      _ccLastName = Nothing,
      _ccSipAddresses = Nothing,
      _ccFirstName = pFirstName_
    }

-- | The phone number of the contact in E.164 format. The phone number type defaults to WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
ccPhoneNumber :: Lens' CreateContact (Maybe Text)
ccPhoneNumber = lens _ccPhoneNumber (\s a -> s {_ccPhoneNumber = a}) . mapping _Sensitive

-- | The list of phone numbers for the contact.
ccPhoneNumbers :: Lens' CreateContact [PhoneNumber]
ccPhoneNumbers = lens _ccPhoneNumbers (\s a -> s {_ccPhoneNumbers = a}) . _Default . _Coerce

-- | The tags to be added to the specified resource. Do not provide system tags.
ccTags :: Lens' CreateContact [Tag]
ccTags = lens _ccTags (\s a -> s {_ccTags = a}) . _Default . _Coerce

-- | A unique, user-specified identifier for this request that ensures idempotency.
ccClientRequestToken :: Lens' CreateContact (Maybe Text)
ccClientRequestToken = lens _ccClientRequestToken (\s a -> s {_ccClientRequestToken = a})

-- | The name of the contact to display on the console.
ccDisplayName :: Lens' CreateContact (Maybe Text)
ccDisplayName = lens _ccDisplayName (\s a -> s {_ccDisplayName = a})

-- | The last name of the contact that is used to call the contact on the device.
ccLastName :: Lens' CreateContact (Maybe Text)
ccLastName = lens _ccLastName (\s a -> s {_ccLastName = a})

-- | The list of SIP addresses for the contact.
ccSipAddresses :: Lens' CreateContact [SipAddress]
ccSipAddresses = lens _ccSipAddresses (\s a -> s {_ccSipAddresses = a}) . _Default . _Coerce

-- | The first name of the contact that is used to call the contact on the device.
ccFirstName :: Lens' CreateContact Text
ccFirstName = lens _ccFirstName (\s a -> s {_ccFirstName = a})

instance AWSRequest CreateContact where
  type Rs CreateContact = CreateContactResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          CreateContactResponse'
            <$> (x .?> "ContactArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateContact

instance NFData CreateContact

instance ToHeaders CreateContact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.CreateContact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateContact where
  toJSON CreateContact' {..} =
    object
      ( catMaybes
          [ ("PhoneNumber" .=) <$> _ccPhoneNumber,
            ("PhoneNumbers" .=) <$> _ccPhoneNumbers,
            ("Tags" .=) <$> _ccTags,
            ("ClientRequestToken" .=) <$> _ccClientRequestToken,
            ("DisplayName" .=) <$> _ccDisplayName,
            ("LastName" .=) <$> _ccLastName,
            ("SipAddresses" .=) <$> _ccSipAddresses,
            Just ("FirstName" .= _ccFirstName)
          ]
      )

instance ToPath CreateContact where
  toPath = const "/"

instance ToQuery CreateContact where
  toQuery = const mempty

-- | /See:/ 'createContactResponse' smart constructor.
data CreateContactResponse = CreateContactResponse'
  { _ccrrsContactARN ::
      !(Maybe Text),
    _ccrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateContactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsContactARN' - The ARN of the newly created address book.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createContactResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateContactResponse
createContactResponse pResponseStatus_ =
  CreateContactResponse'
    { _ccrrsContactARN = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the newly created address book.
ccrrsContactARN :: Lens' CreateContactResponse (Maybe Text)
ccrrsContactARN = lens _ccrrsContactARN (\s a -> s {_ccrrsContactARN = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateContactResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateContactResponse
