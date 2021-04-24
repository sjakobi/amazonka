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
-- Module      : Network.AWS.AlexaBusiness.DeleteContact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a contact by the contact ARN.
module Network.AWS.AlexaBusiness.DeleteContact
  ( -- * Creating a Request
    deleteContact,
    DeleteContact,

    -- * Request Lenses
    dcContactARN,

    -- * Destructuring the Response
    deleteContactResponse,
    DeleteContactResponse,

    -- * Response Lenses
    dcrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteContact' smart constructor.
newtype DeleteContact = DeleteContact'
  { _dcContactARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcContactARN' - The ARN of the contact to delete.
deleteContact ::
  -- | 'dcContactARN'
  Text ->
  DeleteContact
deleteContact pContactARN_ =
  DeleteContact' {_dcContactARN = pContactARN_}

-- | The ARN of the contact to delete.
dcContactARN :: Lens' DeleteContact Text
dcContactARN = lens _dcContactARN (\s a -> s {_dcContactARN = a})

instance AWSRequest DeleteContact where
  type Rs DeleteContact = DeleteContactResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          DeleteContactResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteContact

instance NFData DeleteContact

instance ToHeaders DeleteContact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.DeleteContact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteContact where
  toJSON DeleteContact' {..} =
    object
      (catMaybes [Just ("ContactArn" .= _dcContactARN)])

instance ToPath DeleteContact where
  toPath = const "/"

instance ToQuery DeleteContact where
  toQuery = const mempty

-- | /See:/ 'deleteContactResponse' smart constructor.
newtype DeleteContactResponse = DeleteContactResponse'
  { _dcrrsResponseStatus ::
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

-- | Creates a value of 'DeleteContactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
deleteContactResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DeleteContactResponse
deleteContactResponse pResponseStatus_ =
  DeleteContactResponse'
    { _dcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DeleteContactResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DeleteContactResponse
