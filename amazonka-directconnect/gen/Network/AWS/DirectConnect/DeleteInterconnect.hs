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
-- Module      : Network.AWS.DirectConnect.DeleteInterconnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified interconnect.
module Network.AWS.DirectConnect.DeleteInterconnect
  ( -- * Creating a Request
    deleteInterconnect,
    DeleteInterconnect,

    -- * Request Lenses
    diInterconnectId,

    -- * Destructuring the Response
    deleteInterconnectResponse,
    DeleteInterconnectResponse,

    -- * Response Lenses
    dirrsInterconnectState,
    dirrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteInterconnect' smart constructor.
newtype DeleteInterconnect = DeleteInterconnect'
  { _diInterconnectId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteInterconnect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diInterconnectId' - The ID of the interconnect.
deleteInterconnect ::
  -- | 'diInterconnectId'
  Text ->
  DeleteInterconnect
deleteInterconnect pInterconnectId_ =
  DeleteInterconnect'
    { _diInterconnectId =
        pInterconnectId_
    }

-- | The ID of the interconnect.
diInterconnectId :: Lens' DeleteInterconnect Text
diInterconnectId = lens _diInterconnectId (\s a -> s {_diInterconnectId = a})

instance AWSRequest DeleteInterconnect where
  type
    Rs DeleteInterconnect =
      DeleteInterconnectResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DeleteInterconnectResponse'
            <$> (x .?> "interconnectState") <*> (pure (fromEnum s))
      )

instance Hashable DeleteInterconnect

instance NFData DeleteInterconnect

instance ToHeaders DeleteInterconnect where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OvertureService.DeleteInterconnect" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteInterconnect where
  toJSON DeleteInterconnect' {..} =
    object
      ( catMaybes
          [Just ("interconnectId" .= _diInterconnectId)]
      )

instance ToPath DeleteInterconnect where
  toPath = const "/"

instance ToQuery DeleteInterconnect where
  toQuery = const mempty

-- | /See:/ 'deleteInterconnectResponse' smart constructor.
data DeleteInterconnectResponse = DeleteInterconnectResponse'
  { _dirrsInterconnectState ::
      !( Maybe
           InterconnectState
       ),
    _dirrsResponseStatus ::
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

-- | Creates a value of 'DeleteInterconnectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsInterconnectState' - The state of the interconnect. The following are the possible values:     * @requested@ : The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.     * @pending@ : The interconnect is approved, and is being initialized.     * @available@ : The network link is up, and the interconnect is ready for use.     * @down@ : The network link is down.     * @deleting@ : The interconnect is being deleted.     * @deleted@ : The interconnect is deleted.     * @unknown@ : The state of the interconnect is not available.
--
-- * 'dirrsResponseStatus' - -- | The response status code.
deleteInterconnectResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DeleteInterconnectResponse
deleteInterconnectResponse pResponseStatus_ =
  DeleteInterconnectResponse'
    { _dirrsInterconnectState =
        Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | The state of the interconnect. The following are the possible values:     * @requested@ : The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.     * @pending@ : The interconnect is approved, and is being initialized.     * @available@ : The network link is up, and the interconnect is ready for use.     * @down@ : The network link is down.     * @deleting@ : The interconnect is being deleted.     * @deleted@ : The interconnect is deleted.     * @unknown@ : The state of the interconnect is not available.
dirrsInterconnectState :: Lens' DeleteInterconnectResponse (Maybe InterconnectState)
dirrsInterconnectState = lens _dirrsInterconnectState (\s a -> s {_dirrsInterconnectState = a})

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DeleteInterconnectResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DeleteInterconnectResponse
