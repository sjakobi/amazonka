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
-- Module      : Network.AWS.Connect.GetContactAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the contact attributes for the specified contact.
module Network.AWS.Connect.GetContactAttributes
  ( -- * Creating a Request
    getContactAttributes,
    GetContactAttributes,

    -- * Request Lenses
    gcaInstanceId,
    gcaInitialContactId,

    -- * Destructuring the Response
    getContactAttributesResponse,
    GetContactAttributesResponse,

    -- * Response Lenses
    gcarrsAttributes,
    gcarrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getContactAttributes' smart constructor.
data GetContactAttributes = GetContactAttributes'
  { _gcaInstanceId ::
      !Text,
    _gcaInitialContactId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetContactAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcaInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'gcaInitialContactId' - The identifier of the initial contact.
getContactAttributes ::
  -- | 'gcaInstanceId'
  Text ->
  -- | 'gcaInitialContactId'
  Text ->
  GetContactAttributes
getContactAttributes pInstanceId_ pInitialContactId_ =
  GetContactAttributes'
    { _gcaInstanceId =
        pInstanceId_,
      _gcaInitialContactId = pInitialContactId_
    }

-- | The identifier of the Amazon Connect instance.
gcaInstanceId :: Lens' GetContactAttributes Text
gcaInstanceId = lens _gcaInstanceId (\s a -> s {_gcaInstanceId = a})

-- | The identifier of the initial contact.
gcaInitialContactId :: Lens' GetContactAttributes Text
gcaInitialContactId = lens _gcaInitialContactId (\s a -> s {_gcaInitialContactId = a})

instance AWSRequest GetContactAttributes where
  type
    Rs GetContactAttributes =
      GetContactAttributesResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          GetContactAttributesResponse'
            <$> (x .?> "Attributes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetContactAttributes

instance NFData GetContactAttributes

instance ToHeaders GetContactAttributes where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetContactAttributes where
  toPath GetContactAttributes' {..} =
    mconcat
      [ "/contact/attributes/",
        toBS _gcaInstanceId,
        "/",
        toBS _gcaInitialContactId
      ]

instance ToQuery GetContactAttributes where
  toQuery = const mempty

-- | /See:/ 'getContactAttributesResponse' smart constructor.
data GetContactAttributesResponse = GetContactAttributesResponse'
  { _gcarrsAttributes ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gcarrsResponseStatus ::
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

-- | Creates a value of 'GetContactAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcarrsAttributes' - Information about the attributes.
--
-- * 'gcarrsResponseStatus' - -- | The response status code.
getContactAttributesResponse ::
  -- | 'gcarrsResponseStatus'
  Int ->
  GetContactAttributesResponse
getContactAttributesResponse pResponseStatus_ =
  GetContactAttributesResponse'
    { _gcarrsAttributes =
        Nothing,
      _gcarrsResponseStatus = pResponseStatus_
    }

-- | Information about the attributes.
gcarrsAttributes :: Lens' GetContactAttributesResponse (HashMap Text Text)
gcarrsAttributes = lens _gcarrsAttributes (\s a -> s {_gcarrsAttributes = a}) . _Default . _Map

-- | -- | The response status code.
gcarrsResponseStatus :: Lens' GetContactAttributesResponse Int
gcarrsResponseStatus = lens _gcarrsResponseStatus (\s a -> s {_gcarrsResponseStatus = a})

instance NFData GetContactAttributesResponse
