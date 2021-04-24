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
-- Module      : Network.AWS.CloudHSM.DeleteLunaClient
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Deletes a client.
module Network.AWS.CloudHSM.DeleteLunaClient
  ( -- * Creating a Request
    deleteLunaClient,
    DeleteLunaClient,

    -- * Request Lenses
    dlcClientARN,

    -- * Destructuring the Response
    deleteLunaClientResponse,
    DeleteLunaClientResponse,

    -- * Response Lenses
    delrsResponseStatus,
    delrsStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteLunaClient' smart constructor.
newtype DeleteLunaClient = DeleteLunaClient'
  { _dlcClientARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteLunaClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlcClientARN' - The ARN of the client to delete.
deleteLunaClient ::
  -- | 'dlcClientARN'
  Text ->
  DeleteLunaClient
deleteLunaClient pClientARN_ =
  DeleteLunaClient' {_dlcClientARN = pClientARN_}

-- | The ARN of the client to delete.
dlcClientARN :: Lens' DeleteLunaClient Text
dlcClientARN = lens _dlcClientARN (\s a -> s {_dlcClientARN = a})

instance AWSRequest DeleteLunaClient where
  type Rs DeleteLunaClient = DeleteLunaClientResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          DeleteLunaClientResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "Status")
      )

instance Hashable DeleteLunaClient

instance NFData DeleteLunaClient

instance ToHeaders DeleteLunaClient where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CloudHsmFrontendService.DeleteLunaClient" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteLunaClient where
  toJSON DeleteLunaClient' {..} =
    object
      (catMaybes [Just ("ClientArn" .= _dlcClientARN)])

instance ToPath DeleteLunaClient where
  toPath = const "/"

instance ToQuery DeleteLunaClient where
  toQuery = const mempty

-- | /See:/ 'deleteLunaClientResponse' smart constructor.
data DeleteLunaClientResponse = DeleteLunaClientResponse'
  { _delrsResponseStatus ::
      !Int,
    _delrsStatus :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteLunaClientResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsResponseStatus' - -- | The response status code.
--
-- * 'delrsStatus' - The status of the action.
deleteLunaClientResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  -- | 'delrsStatus'
  Text ->
  DeleteLunaClientResponse
deleteLunaClientResponse pResponseStatus_ pStatus_ =
  DeleteLunaClientResponse'
    { _delrsResponseStatus =
        pResponseStatus_,
      _delrsStatus = pStatus_
    }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteLunaClientResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

-- | The status of the action.
delrsStatus :: Lens' DeleteLunaClientResponse Text
delrsStatus = lens _delrsStatus (\s a -> s {_delrsStatus = a})

instance NFData DeleteLunaClientResponse
