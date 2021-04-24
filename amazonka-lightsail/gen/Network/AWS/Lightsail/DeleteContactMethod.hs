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
-- Module      : Network.AWS.Lightsail.DeleteContactMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a contact method.
--
--
-- A contact method is used to send you notifications about your Amazon Lightsail resources. You can add one email address and one mobile phone number contact method in each AWS Region. However, SMS text messaging is not supported in some AWS Regions, and SMS text messages cannot be sent to some countries/regions. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications Notifications in Amazon Lightsail> .
module Network.AWS.Lightsail.DeleteContactMethod
  ( -- * Creating a Request
    deleteContactMethod,
    DeleteContactMethod,

    -- * Request Lenses
    dcmProtocol,

    -- * Destructuring the Response
    deleteContactMethodResponse,
    DeleteContactMethodResponse,

    -- * Response Lenses
    dcmrrsOperations,
    dcmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteContactMethod' smart constructor.
newtype DeleteContactMethod = DeleteContactMethod'
  { _dcmProtocol ::
      ContactProtocol
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteContactMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcmProtocol' - The protocol that will be deleted, such as @Email@ or @SMS@ (text messaging).
deleteContactMethod ::
  -- | 'dcmProtocol'
  ContactProtocol ->
  DeleteContactMethod
deleteContactMethod pProtocol_ =
  DeleteContactMethod' {_dcmProtocol = pProtocol_}

-- | The protocol that will be deleted, such as @Email@ or @SMS@ (text messaging).
dcmProtocol :: Lens' DeleteContactMethod ContactProtocol
dcmProtocol = lens _dcmProtocol (\s a -> s {_dcmProtocol = a})

instance AWSRequest DeleteContactMethod where
  type
    Rs DeleteContactMethod =
      DeleteContactMethodResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteContactMethodResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteContactMethod

instance NFData DeleteContactMethod

instance ToHeaders DeleteContactMethod where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.DeleteContactMethod" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteContactMethod where
  toJSON DeleteContactMethod' {..} =
    object
      (catMaybes [Just ("protocol" .= _dcmProtocol)])

instance ToPath DeleteContactMethod where
  toPath = const "/"

instance ToQuery DeleteContactMethod where
  toQuery = const mempty

-- | /See:/ 'deleteContactMethodResponse' smart constructor.
data DeleteContactMethodResponse = DeleteContactMethodResponse'
  { _dcmrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _dcmrrsResponseStatus ::
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

-- | Creates a value of 'DeleteContactMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcmrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'dcmrrsResponseStatus' - -- | The response status code.
deleteContactMethodResponse ::
  -- | 'dcmrrsResponseStatus'
  Int ->
  DeleteContactMethodResponse
deleteContactMethodResponse pResponseStatus_ =
  DeleteContactMethodResponse'
    { _dcmrrsOperations =
        Nothing,
      _dcmrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
dcmrrsOperations :: Lens' DeleteContactMethodResponse [Operation]
dcmrrsOperations = lens _dcmrrsOperations (\s a -> s {_dcmrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
dcmrrsResponseStatus :: Lens' DeleteContactMethodResponse Int
dcmrrsResponseStatus = lens _dcmrrsResponseStatus (\s a -> s {_dcmrrsResponseStatus = a})

instance NFData DeleteContactMethodResponse
