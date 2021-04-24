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
-- Module      : Network.AWS.AlexaBusiness.GetContact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the contact details by the contact ARN.
module Network.AWS.AlexaBusiness.GetContact
  ( -- * Creating a Request
    getContact,
    GetContact,

    -- * Request Lenses
    gcContactARN,

    -- * Destructuring the Response
    getContactResponse,
    GetContactResponse,

    -- * Response Lenses
    gcrrsContact,
    gcrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getContact' smart constructor.
newtype GetContact = GetContact'
  { _gcContactARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcContactARN' - The ARN of the contact for which to request details.
getContact ::
  -- | 'gcContactARN'
  Text ->
  GetContact
getContact pContactARN_ =
  GetContact' {_gcContactARN = pContactARN_}

-- | The ARN of the contact for which to request details.
gcContactARN :: Lens' GetContact Text
gcContactARN = lens _gcContactARN (\s a -> s {_gcContactARN = a})

instance AWSRequest GetContact where
  type Rs GetContact = GetContactResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          GetContactResponse'
            <$> (x .?> "Contact") <*> (pure (fromEnum s))
      )

instance Hashable GetContact

instance NFData GetContact

instance ToHeaders GetContact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.GetContact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetContact where
  toJSON GetContact' {..} =
    object
      (catMaybes [Just ("ContactArn" .= _gcContactARN)])

instance ToPath GetContact where
  toPath = const "/"

instance ToQuery GetContact where
  toQuery = const mempty

-- | /See:/ 'getContactResponse' smart constructor.
data GetContactResponse = GetContactResponse'
  { _gcrrsContact ::
      !(Maybe Contact),
    _gcrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetContactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrsContact' - The details of the requested contact.
--
-- * 'gcrrsResponseStatus' - -- | The response status code.
getContactResponse ::
  -- | 'gcrrsResponseStatus'
  Int ->
  GetContactResponse
getContactResponse pResponseStatus_ =
  GetContactResponse'
    { _gcrrsContact = Nothing,
      _gcrrsResponseStatus = pResponseStatus_
    }

-- | The details of the requested contact.
gcrrsContact :: Lens' GetContactResponse (Maybe Contact)
gcrrsContact = lens _gcrrsContact (\s a -> s {_gcrrsContact = a})

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetContactResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

instance NFData GetContactResponse
