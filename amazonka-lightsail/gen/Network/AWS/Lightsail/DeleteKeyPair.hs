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
-- Module      : Network.AWS.Lightsail.DeleteKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific SSH key pair.
--
--
-- The @delete key pair@ operation supports tag-based access control via resource tags applied to the resource identified by @key pair name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.DeleteKeyPair
  ( -- * Creating a Request
    deleteKeyPair,
    DeleteKeyPair,

    -- * Request Lenses
    dkpKeyPairName,

    -- * Destructuring the Response
    deleteKeyPairResponse,
    DeleteKeyPairResponse,

    -- * Response Lenses
    dkprrsOperation,
    dkprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteKeyPair' smart constructor.
newtype DeleteKeyPair = DeleteKeyPair'
  { _dkpKeyPairName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteKeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkpKeyPairName' - The name of the key pair to delete.
deleteKeyPair ::
  -- | 'dkpKeyPairName'
  Text ->
  DeleteKeyPair
deleteKeyPair pKeyPairName_ =
  DeleteKeyPair' {_dkpKeyPairName = pKeyPairName_}

-- | The name of the key pair to delete.
dkpKeyPairName :: Lens' DeleteKeyPair Text
dkpKeyPairName = lens _dkpKeyPairName (\s a -> s {_dkpKeyPairName = a})

instance AWSRequest DeleteKeyPair where
  type Rs DeleteKeyPair = DeleteKeyPairResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteKeyPairResponse'
            <$> (x .?> "operation") <*> (pure (fromEnum s))
      )

instance Hashable DeleteKeyPair

instance NFData DeleteKeyPair

instance ToHeaders DeleteKeyPair where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.DeleteKeyPair" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteKeyPair where
  toJSON DeleteKeyPair' {..} =
    object
      (catMaybes [Just ("keyPairName" .= _dkpKeyPairName)])

instance ToPath DeleteKeyPair where
  toPath = const "/"

instance ToQuery DeleteKeyPair where
  toQuery = const mempty

-- | /See:/ 'deleteKeyPairResponse' smart constructor.
data DeleteKeyPairResponse = DeleteKeyPairResponse'
  { _dkprrsOperation ::
      !(Maybe Operation),
    _dkprrsResponseStatus ::
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

-- | Creates a value of 'DeleteKeyPairResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkprrsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'dkprrsResponseStatus' - -- | The response status code.
deleteKeyPairResponse ::
  -- | 'dkprrsResponseStatus'
  Int ->
  DeleteKeyPairResponse
deleteKeyPairResponse pResponseStatus_ =
  DeleteKeyPairResponse'
    { _dkprrsOperation = Nothing,
      _dkprrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
dkprrsOperation :: Lens' DeleteKeyPairResponse (Maybe Operation)
dkprrsOperation = lens _dkprrsOperation (\s a -> s {_dkprrsOperation = a})

-- | -- | The response status code.
dkprrsResponseStatus :: Lens' DeleteKeyPairResponse Int
dkprrsResponseStatus = lens _dkprrsResponseStatus (\s a -> s {_dkprrsResponseStatus = a})

instance NFData DeleteKeyPairResponse
