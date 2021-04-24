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
-- Module      : Network.AWS.SecretsManager.DeleteResourcePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the resource-based permission policy attached to the secret.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:DeleteResourcePolicy
--
--
--
-- __Related operations__
--
--     * To attach a resource policy to a secret, use 'PutResourcePolicy' .
--
--     * To retrieve the current resource-based policy attached to a secret, use 'GetResourcePolicy' .
--
--     * To list all of the currently available secrets, use 'ListSecrets' .
module Network.AWS.SecretsManager.DeleteResourcePolicy
  ( -- * Creating a Request
    deleteResourcePolicy,
    DeleteResourcePolicy,

    -- * Request Lenses
    drpSecretId,

    -- * Destructuring the Response
    deleteResourcePolicyResponse,
    DeleteResourcePolicyResponse,

    -- * Response Lenses
    drprrsARN,
    drprrsName,
    drprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'deleteResourcePolicy' smart constructor.
newtype DeleteResourcePolicy = DeleteResourcePolicy'
  { _drpSecretId ::
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

-- | Creates a value of 'DeleteResourcePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drpSecretId' - Specifies the secret that you want to delete the attached resource-based policy for. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
deleteResourcePolicy ::
  -- | 'drpSecretId'
  Text ->
  DeleteResourcePolicy
deleteResourcePolicy pSecretId_ =
  DeleteResourcePolicy' {_drpSecretId = pSecretId_}

-- | Specifies the secret that you want to delete the attached resource-based policy for. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
drpSecretId :: Lens' DeleteResourcePolicy Text
drpSecretId = lens _drpSecretId (\s a -> s {_drpSecretId = a})

instance AWSRequest DeleteResourcePolicy where
  type
    Rs DeleteResourcePolicy =
      DeleteResourcePolicyResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          DeleteResourcePolicyResponse'
            <$> (x .?> "ARN")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteResourcePolicy

instance NFData DeleteResourcePolicy

instance ToHeaders DeleteResourcePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "secretsmanager.DeleteResourcePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteResourcePolicy where
  toJSON DeleteResourcePolicy' {..} =
    object
      (catMaybes [Just ("SecretId" .= _drpSecretId)])

instance ToPath DeleteResourcePolicy where
  toPath = const "/"

instance ToQuery DeleteResourcePolicy where
  toQuery = const mempty

-- | /See:/ 'deleteResourcePolicyResponse' smart constructor.
data DeleteResourcePolicyResponse = DeleteResourcePolicyResponse'
  { _drprrsARN ::
      !(Maybe Text),
    _drprrsName ::
      !(Maybe Text),
    _drprrsResponseStatus ::
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

-- | Creates a value of 'DeleteResourcePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drprrsARN' - The ARN of the secret that the resource-based policy was deleted for.
--
-- * 'drprrsName' - The friendly name of the secret that the resource-based policy was deleted for.
--
-- * 'drprrsResponseStatus' - -- | The response status code.
deleteResourcePolicyResponse ::
  -- | 'drprrsResponseStatus'
  Int ->
  DeleteResourcePolicyResponse
deleteResourcePolicyResponse pResponseStatus_ =
  DeleteResourcePolicyResponse'
    { _drprrsARN = Nothing,
      _drprrsName = Nothing,
      _drprrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the secret that the resource-based policy was deleted for.
drprrsARN :: Lens' DeleteResourcePolicyResponse (Maybe Text)
drprrsARN = lens _drprrsARN (\s a -> s {_drprrsARN = a})

-- | The friendly name of the secret that the resource-based policy was deleted for.
drprrsName :: Lens' DeleteResourcePolicyResponse (Maybe Text)
drprrsName = lens _drprrsName (\s a -> s {_drprrsName = a})

-- | -- | The response status code.
drprrsResponseStatus :: Lens' DeleteResourcePolicyResponse Int
drprrsResponseStatus = lens _drprrsResponseStatus (\s a -> s {_drprrsResponseStatus = a})

instance NFData DeleteResourcePolicyResponse
