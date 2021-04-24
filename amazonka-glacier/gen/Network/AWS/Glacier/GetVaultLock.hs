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
-- Module      : Network.AWS.Glacier.GetVaultLock
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation retrieves the following attributes from the @lock-policy@ subresource set on the specified vault:
--
--
--     * The vault lock policy set on the vault.
--
--     * The state of the vault lock, which is either @InProgess@ or @Locked@ .
--
--     * When the lock ID expires. The lock ID is used to complete the vault locking process.
--
--     * When the vault lock was initiated and put into the @InProgress@ state.
--
--
--
-- A vault lock is put into the @InProgress@ state by calling 'InitiateVaultLock' . A vault lock is put into the @Locked@ state by calling 'CompleteVaultLock' . You can abort the vault locking process by calling 'AbortVaultLock' . For more information about the vault locking process, <https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html Amazon Glacier Vault Lock> .
--
-- If there is no vault lock policy set on the vault, the operation returns a @404 Not found@ error. For more information about vault lock policies, <https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html Amazon Glacier Access Control with Vault Lock Policies> .
module Network.AWS.Glacier.GetVaultLock
  ( -- * Creating a Request
    getVaultLock,
    GetVaultLock,

    -- * Request Lenses
    gvlAccountId,
    gvlVaultName,

    -- * Destructuring the Response
    getVaultLockResponse,
    GetVaultLockResponse,

    -- * Response Lenses
    gvlrrsCreationDate,
    gvlrrsState,
    gvlrrsExpirationDate,
    gvlrrsPolicy,
    gvlrrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input values for @GetVaultLock@ .
--
--
--
-- /See:/ 'getVaultLock' smart constructor.
data GetVaultLock = GetVaultLock'
  { _gvlAccountId ::
      !Text,
    _gvlVaultName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetVaultLock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvlAccountId' - The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- * 'gvlVaultName' - The name of the vault.
getVaultLock ::
  -- | 'gvlAccountId'
  Text ->
  -- | 'gvlVaultName'
  Text ->
  GetVaultLock
getVaultLock pAccountId_ pVaultName_ =
  GetVaultLock'
    { _gvlAccountId = pAccountId_,
      _gvlVaultName = pVaultName_
    }

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
gvlAccountId :: Lens' GetVaultLock Text
gvlAccountId = lens _gvlAccountId (\s a -> s {_gvlAccountId = a})

-- | The name of the vault.
gvlVaultName :: Lens' GetVaultLock Text
gvlVaultName = lens _gvlVaultName (\s a -> s {_gvlVaultName = a})

instance AWSRequest GetVaultLock where
  type Rs GetVaultLock = GetVaultLockResponse
  request = get glacier
  response =
    receiveJSON
      ( \s h x ->
          GetVaultLockResponse'
            <$> (x .?> "CreationDate")
            <*> (x .?> "State")
            <*> (x .?> "ExpirationDate")
            <*> (x .?> "Policy")
            <*> (pure (fromEnum s))
      )

instance Hashable GetVaultLock

instance NFData GetVaultLock

instance ToHeaders GetVaultLock where
  toHeaders = const mempty

instance ToPath GetVaultLock where
  toPath GetVaultLock' {..} =
    mconcat
      [ "/",
        toBS _gvlAccountId,
        "/vaults/",
        toBS _gvlVaultName,
        "/lock-policy"
      ]

instance ToQuery GetVaultLock where
  toQuery = const mempty

-- | Contains the Amazon S3 Glacier response to your request.
--
--
--
-- /See:/ 'getVaultLockResponse' smart constructor.
data GetVaultLockResponse = GetVaultLockResponse'
  { _gvlrrsCreationDate ::
      !(Maybe Text),
    _gvlrrsState :: !(Maybe Text),
    _gvlrrsExpirationDate ::
      !(Maybe Text),
    _gvlrrsPolicy ::
      !(Maybe Text),
    _gvlrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetVaultLockResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvlrrsCreationDate' - The UTC date and time at which the vault lock was put into the @InProgress@ state.
--
-- * 'gvlrrsState' - The state of the vault lock. @InProgress@ or @Locked@ .
--
-- * 'gvlrrsExpirationDate' - The UTC date and time at which the lock ID expires. This value can be @null@ if the vault lock is in a @Locked@ state.
--
-- * 'gvlrrsPolicy' - The vault lock policy as a JSON string, which uses "\" as an escape character.
--
-- * 'gvlrrsResponseStatus' - -- | The response status code.
getVaultLockResponse ::
  -- | 'gvlrrsResponseStatus'
  Int ->
  GetVaultLockResponse
getVaultLockResponse pResponseStatus_ =
  GetVaultLockResponse'
    { _gvlrrsCreationDate =
        Nothing,
      _gvlrrsState = Nothing,
      _gvlrrsExpirationDate = Nothing,
      _gvlrrsPolicy = Nothing,
      _gvlrrsResponseStatus = pResponseStatus_
    }

-- | The UTC date and time at which the vault lock was put into the @InProgress@ state.
gvlrrsCreationDate :: Lens' GetVaultLockResponse (Maybe Text)
gvlrrsCreationDate = lens _gvlrrsCreationDate (\s a -> s {_gvlrrsCreationDate = a})

-- | The state of the vault lock. @InProgress@ or @Locked@ .
gvlrrsState :: Lens' GetVaultLockResponse (Maybe Text)
gvlrrsState = lens _gvlrrsState (\s a -> s {_gvlrrsState = a})

-- | The UTC date and time at which the lock ID expires. This value can be @null@ if the vault lock is in a @Locked@ state.
gvlrrsExpirationDate :: Lens' GetVaultLockResponse (Maybe Text)
gvlrrsExpirationDate = lens _gvlrrsExpirationDate (\s a -> s {_gvlrrsExpirationDate = a})

-- | The vault lock policy as a JSON string, which uses "\" as an escape character.
gvlrrsPolicy :: Lens' GetVaultLockResponse (Maybe Text)
gvlrrsPolicy = lens _gvlrrsPolicy (\s a -> s {_gvlrrsPolicy = a})

-- | -- | The response status code.
gvlrrsResponseStatus :: Lens' GetVaultLockResponse Int
gvlrrsResponseStatus = lens _gvlrrsResponseStatus (\s a -> s {_gvlrrsResponseStatus = a})

instance NFData GetVaultLockResponse
