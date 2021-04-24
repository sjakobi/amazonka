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
-- Module      : Network.AWS.OpsWorksCM.CreateBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application-level backup of a server. While the server is in the @BACKING_UP@ state, the server cannot be changed, and no additional backup can be created.
--
--
-- Backups can be created for servers in @RUNNING@ , @HEALTHY@ , and @UNHEALTHY@ states. By default, you can create a maximum of 50 manual backups.
--
-- This operation is asynchronous.
--
-- A @LimitExceededException@ is thrown when the maximum number of manual backups is reached. An @InvalidStateException@ is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A @ResourceNotFoundException@ is thrown when the server is not found. A @ValidationException@ is thrown when parameters of the request are not valid.
module Network.AWS.OpsWorksCM.CreateBackup
  ( -- * Creating a Request
    createBackup,
    CreateBackup,

    -- * Request Lenses
    cbTags,
    cbDescription,
    cbServerName,

    -- * Destructuring the Response
    createBackupResponse,
    CreateBackupResponse,

    -- * Response Lenses
    cbrrsBackup,
    cbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createBackup' smart constructor.
data CreateBackup = CreateBackup'
  { _cbTags ::
      !(Maybe [Tag]),
    _cbDescription :: !(Maybe Text),
    _cbServerName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbTags' - A map that contains tag keys and tag values to attach to an AWS OpsWorks-CM server backup.     * The key cannot be empty.     * The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : /@      * The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : /@      * Leading and trailing white spaces are trimmed from both the key and value.     * A maximum of 50 user-applied tags is allowed for tag-supported AWS OpsWorks-CM resources.
--
-- * 'cbDescription' - A user-defined description of the backup.
--
-- * 'cbServerName' - The name of the server that you want to back up.
createBackup ::
  -- | 'cbServerName'
  Text ->
  CreateBackup
createBackup pServerName_ =
  CreateBackup'
    { _cbTags = Nothing,
      _cbDescription = Nothing,
      _cbServerName = pServerName_
    }

-- | A map that contains tag keys and tag values to attach to an AWS OpsWorks-CM server backup.     * The key cannot be empty.     * The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : /@      * The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : /@      * Leading and trailing white spaces are trimmed from both the key and value.     * A maximum of 50 user-applied tags is allowed for tag-supported AWS OpsWorks-CM resources.
cbTags :: Lens' CreateBackup [Tag]
cbTags = lens _cbTags (\s a -> s {_cbTags = a}) . _Default . _Coerce

-- | A user-defined description of the backup.
cbDescription :: Lens' CreateBackup (Maybe Text)
cbDescription = lens _cbDescription (\s a -> s {_cbDescription = a})

-- | The name of the server that you want to back up.
cbServerName :: Lens' CreateBackup Text
cbServerName = lens _cbServerName (\s a -> s {_cbServerName = a})

instance AWSRequest CreateBackup where
  type Rs CreateBackup = CreateBackupResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          CreateBackupResponse'
            <$> (x .?> "Backup") <*> (pure (fromEnum s))
      )

instance Hashable CreateBackup

instance NFData CreateBackup

instance ToHeaders CreateBackup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.CreateBackup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateBackup where
  toJSON CreateBackup' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _cbTags,
            ("Description" .=) <$> _cbDescription,
            Just ("ServerName" .= _cbServerName)
          ]
      )

instance ToPath CreateBackup where
  toPath = const "/"

instance ToQuery CreateBackup where
  toQuery = const mempty

-- | /See:/ 'createBackupResponse' smart constructor.
data CreateBackupResponse = CreateBackupResponse'
  { _cbrrsBackup ::
      !(Maybe Backup),
    _cbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateBackupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrrsBackup' - Backup created by request.
--
-- * 'cbrrsResponseStatus' - -- | The response status code.
createBackupResponse ::
  -- | 'cbrrsResponseStatus'
  Int ->
  CreateBackupResponse
createBackupResponse pResponseStatus_ =
  CreateBackupResponse'
    { _cbrrsBackup = Nothing,
      _cbrrsResponseStatus = pResponseStatus_
    }

-- | Backup created by request.
cbrrsBackup :: Lens' CreateBackupResponse (Maybe Backup)
cbrrsBackup = lens _cbrrsBackup (\s a -> s {_cbrrsBackup = a})

-- | -- | The response status code.
cbrrsResponseStatus :: Lens' CreateBackupResponse Int
cbrrsResponseStatus = lens _cbrrsResponseStatus (\s a -> s {_cbrrsResponseStatus = a})

instance NFData CreateBackupResponse
