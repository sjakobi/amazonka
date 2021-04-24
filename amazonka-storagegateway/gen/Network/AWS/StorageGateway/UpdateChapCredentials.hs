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
-- Module      : Network.AWS.StorageGateway.UpdateChapCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it. This operation is supported in the volume and tape gateway types.
--
--
-- /Important:/ When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials.
module Network.AWS.StorageGateway.UpdateChapCredentials
  ( -- * Creating a Request
    updateChapCredentials,
    UpdateChapCredentials,

    -- * Request Lenses
    uccSecretToAuthenticateTarget,
    uccTargetARN,
    uccSecretToAuthenticateInitiator,
    uccInitiatorName,

    -- * Destructuring the Response
    updateChapCredentialsResponse,
    UpdateChapCredentialsResponse,

    -- * Response Lenses
    uccrrsInitiatorName,
    uccrrsTargetARN,
    uccrrsResponseStatus,
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
--     * 'UpdateChapCredentialsInput$InitiatorName'
--
--     * 'UpdateChapCredentialsInput$SecretToAuthenticateInitiator'
--
--     * 'UpdateChapCredentialsInput$SecretToAuthenticateTarget'
--
--     * 'UpdateChapCredentialsInput$TargetARN'
--
--
--
--
-- /See:/ 'updateChapCredentials' smart constructor.
data UpdateChapCredentials = UpdateChapCredentials'
  { _uccSecretToAuthenticateTarget ::
      !(Maybe (Sensitive Text)),
    _uccTargetARN :: !Text,
    _uccSecretToAuthenticateInitiator ::
      !(Sensitive Text),
    _uccInitiatorName :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateChapCredentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccSecretToAuthenticateTarget' - The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client). Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
--
-- * 'uccTargetARN' - The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return the TargetARN for specified VolumeARN.
--
-- * 'uccSecretToAuthenticateInitiator' - The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.
--
-- * 'uccInitiatorName' - The iSCSI initiator that connects to the target.
updateChapCredentials ::
  -- | 'uccTargetARN'
  Text ->
  -- | 'uccSecretToAuthenticateInitiator'
  Text ->
  -- | 'uccInitiatorName'
  Text ->
  UpdateChapCredentials
updateChapCredentials
  pTargetARN_
  pSecretToAuthenticateInitiator_
  pInitiatorName_ =
    UpdateChapCredentials'
      { _uccSecretToAuthenticateTarget =
          Nothing,
        _uccTargetARN = pTargetARN_,
        _uccSecretToAuthenticateInitiator =
          _Sensitive # pSecretToAuthenticateInitiator_,
        _uccInitiatorName = pInitiatorName_
      }

-- | The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client). Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
uccSecretToAuthenticateTarget :: Lens' UpdateChapCredentials (Maybe Text)
uccSecretToAuthenticateTarget = lens _uccSecretToAuthenticateTarget (\s a -> s {_uccSecretToAuthenticateTarget = a}) . mapping _Sensitive

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return the TargetARN for specified VolumeARN.
uccTargetARN :: Lens' UpdateChapCredentials Text
uccTargetARN = lens _uccTargetARN (\s a -> s {_uccTargetARN = a})

-- | The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.
uccSecretToAuthenticateInitiator :: Lens' UpdateChapCredentials Text
uccSecretToAuthenticateInitiator = lens _uccSecretToAuthenticateInitiator (\s a -> s {_uccSecretToAuthenticateInitiator = a}) . _Sensitive

-- | The iSCSI initiator that connects to the target.
uccInitiatorName :: Lens' UpdateChapCredentials Text
uccInitiatorName = lens _uccInitiatorName (\s a -> s {_uccInitiatorName = a})

instance AWSRequest UpdateChapCredentials where
  type
    Rs UpdateChapCredentials =
      UpdateChapCredentialsResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          UpdateChapCredentialsResponse'
            <$> (x .?> "InitiatorName")
            <*> (x .?> "TargetARN")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateChapCredentials

instance NFData UpdateChapCredentials

instance ToHeaders UpdateChapCredentials where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.UpdateChapCredentials" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateChapCredentials where
  toJSON UpdateChapCredentials' {..} =
    object
      ( catMaybes
          [ ("SecretToAuthenticateTarget" .=)
              <$> _uccSecretToAuthenticateTarget,
            Just ("TargetARN" .= _uccTargetARN),
            Just
              ( "SecretToAuthenticateInitiator"
                  .= _uccSecretToAuthenticateInitiator
              ),
            Just ("InitiatorName" .= _uccInitiatorName)
          ]
      )

instance ToPath UpdateChapCredentials where
  toPath = const "/"

instance ToQuery UpdateChapCredentials where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'updateChapCredentialsResponse' smart constructor.
data UpdateChapCredentialsResponse = UpdateChapCredentialsResponse'
  { _uccrrsInitiatorName ::
      !( Maybe
           Text
       ),
    _uccrrsTargetARN ::
      !( Maybe
           Text
       ),
    _uccrrsResponseStatus ::
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

-- | Creates a value of 'UpdateChapCredentialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccrrsInitiatorName' - The iSCSI initiator that connects to the target. This is the same initiator name specified in the request.
--
-- * 'uccrrsTargetARN' - The Amazon Resource Name (ARN) of the target. This is the same target specified in the request.
--
-- * 'uccrrsResponseStatus' - -- | The response status code.
updateChapCredentialsResponse ::
  -- | 'uccrrsResponseStatus'
  Int ->
  UpdateChapCredentialsResponse
updateChapCredentialsResponse pResponseStatus_ =
  UpdateChapCredentialsResponse'
    { _uccrrsInitiatorName =
        Nothing,
      _uccrrsTargetARN = Nothing,
      _uccrrsResponseStatus = pResponseStatus_
    }

-- | The iSCSI initiator that connects to the target. This is the same initiator name specified in the request.
uccrrsInitiatorName :: Lens' UpdateChapCredentialsResponse (Maybe Text)
uccrrsInitiatorName = lens _uccrrsInitiatorName (\s a -> s {_uccrrsInitiatorName = a})

-- | The Amazon Resource Name (ARN) of the target. This is the same target specified in the request.
uccrrsTargetARN :: Lens' UpdateChapCredentialsResponse (Maybe Text)
uccrrsTargetARN = lens _uccrrsTargetARN (\s a -> s {_uccrrsTargetARN = a})

-- | -- | The response status code.
uccrrsResponseStatus :: Lens' UpdateChapCredentialsResponse Int
uccrrsResponseStatus = lens _uccrrsResponseStatus (\s a -> s {_uccrrsResponseStatus = a})

instance NFData UpdateChapCredentialsResponse
