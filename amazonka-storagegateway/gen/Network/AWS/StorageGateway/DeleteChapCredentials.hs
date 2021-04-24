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
-- Module      : Network.AWS.StorageGateway.DeleteChapCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair. This operation is supported in volume and tape gateway types.
module Network.AWS.StorageGateway.DeleteChapCredentials
  ( -- * Creating a Request
    deleteChapCredentials,
    DeleteChapCredentials,

    -- * Request Lenses
    dTargetARN,
    dInitiatorName,

    -- * Destructuring the Response
    deleteChapCredentialsResponse,
    DeleteChapCredentialsResponse,

    -- * Response Lenses
    dccrcrsInitiatorName,
    dccrcrsTargetARN,
    dccrcrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing one or more of the following fields:
--
--
--     * 'DeleteChapCredentialsInput$InitiatorName'
--
--     * 'DeleteChapCredentialsInput$TargetARN'
--
--
--
--
-- /See:/ 'deleteChapCredentials' smart constructor.
data DeleteChapCredentials = DeleteChapCredentials'
  { _dTargetARN ::
      !Text,
    _dInitiatorName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteChapCredentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dTargetARN' - The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
--
-- * 'dInitiatorName' - The iSCSI initiator that connects to the target.
deleteChapCredentials ::
  -- | 'dTargetARN'
  Text ->
  -- | 'dInitiatorName'
  Text ->
  DeleteChapCredentials
deleteChapCredentials pTargetARN_ pInitiatorName_ =
  DeleteChapCredentials'
    { _dTargetARN = pTargetARN_,
      _dInitiatorName = pInitiatorName_
    }

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
dTargetARN :: Lens' DeleteChapCredentials Text
dTargetARN = lens _dTargetARN (\s a -> s {_dTargetARN = a})

-- | The iSCSI initiator that connects to the target.
dInitiatorName :: Lens' DeleteChapCredentials Text
dInitiatorName = lens _dInitiatorName (\s a -> s {_dInitiatorName = a})

instance AWSRequest DeleteChapCredentials where
  type
    Rs DeleteChapCredentials =
      DeleteChapCredentialsResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DeleteChapCredentialsResponse'
            <$> (x .?> "InitiatorName")
            <*> (x .?> "TargetARN")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteChapCredentials

instance NFData DeleteChapCredentials

instance ToHeaders DeleteChapCredentials where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DeleteChapCredentials" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteChapCredentials where
  toJSON DeleteChapCredentials' {..} =
    object
      ( catMaybes
          [ Just ("TargetARN" .= _dTargetARN),
            Just ("InitiatorName" .= _dInitiatorName)
          ]
      )

instance ToPath DeleteChapCredentials where
  toPath = const "/"

instance ToQuery DeleteChapCredentials where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'deleteChapCredentialsResponse' smart constructor.
data DeleteChapCredentialsResponse = DeleteChapCredentialsResponse'
  { _dccrcrsInitiatorName ::
      !( Maybe
           Text
       ),
    _dccrcrsTargetARN ::
      !( Maybe
           Text
       ),
    _dccrcrsResponseStatus ::
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

-- | Creates a value of 'DeleteChapCredentialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccrcrsInitiatorName' - The iSCSI initiator that connects to the target.
--
-- * 'dccrcrsTargetARN' - The Amazon Resource Name (ARN) of the target.
--
-- * 'dccrcrsResponseStatus' - -- | The response status code.
deleteChapCredentialsResponse ::
  -- | 'dccrcrsResponseStatus'
  Int ->
  DeleteChapCredentialsResponse
deleteChapCredentialsResponse pResponseStatus_ =
  DeleteChapCredentialsResponse'
    { _dccrcrsInitiatorName =
        Nothing,
      _dccrcrsTargetARN = Nothing,
      _dccrcrsResponseStatus = pResponseStatus_
    }

-- | The iSCSI initiator that connects to the target.
dccrcrsInitiatorName :: Lens' DeleteChapCredentialsResponse (Maybe Text)
dccrcrsInitiatorName = lens _dccrcrsInitiatorName (\s a -> s {_dccrcrsInitiatorName = a})

-- | The Amazon Resource Name (ARN) of the target.
dccrcrsTargetARN :: Lens' DeleteChapCredentialsResponse (Maybe Text)
dccrcrsTargetARN = lens _dccrcrsTargetARN (\s a -> s {_dccrcrsTargetARN = a})

-- | -- | The response status code.
dccrcrsResponseStatus :: Lens' DeleteChapCredentialsResponse Int
dccrcrsResponseStatus = lens _dccrcrsResponseStatus (\s a -> s {_dccrcrsResponseStatus = a})

instance NFData DeleteChapCredentialsResponse
