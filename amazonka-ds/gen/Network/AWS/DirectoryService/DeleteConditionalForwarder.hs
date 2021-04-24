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
-- Module      : Network.AWS.DirectoryService.DeleteConditionalForwarder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a conditional forwarder that has been set up for your AWS directory.
module Network.AWS.DirectoryService.DeleteConditionalForwarder
  ( -- * Creating a Request
    deleteConditionalForwarder,
    DeleteConditionalForwarder,

    -- * Request Lenses
    dcfDirectoryId,
    dcfRemoteDomainName,

    -- * Destructuring the Response
    deleteConditionalForwarderResponse,
    DeleteConditionalForwarderResponse,

    -- * Response Lenses
    dcfrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Deletes a conditional forwarder.
--
--
--
-- /See:/ 'deleteConditionalForwarder' smart constructor.
data DeleteConditionalForwarder = DeleteConditionalForwarder'
  { _dcfDirectoryId ::
      !Text,
    _dcfRemoteDomainName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteConditionalForwarder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfDirectoryId' - The directory ID for which you are deleting the conditional forwarder.
--
-- * 'dcfRemoteDomainName' - The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.
deleteConditionalForwarder ::
  -- | 'dcfDirectoryId'
  Text ->
  -- | 'dcfRemoteDomainName'
  Text ->
  DeleteConditionalForwarder
deleteConditionalForwarder
  pDirectoryId_
  pRemoteDomainName_ =
    DeleteConditionalForwarder'
      { _dcfDirectoryId =
          pDirectoryId_,
        _dcfRemoteDomainName = pRemoteDomainName_
      }

-- | The directory ID for which you are deleting the conditional forwarder.
dcfDirectoryId :: Lens' DeleteConditionalForwarder Text
dcfDirectoryId = lens _dcfDirectoryId (\s a -> s {_dcfDirectoryId = a})

-- | The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.
dcfRemoteDomainName :: Lens' DeleteConditionalForwarder Text
dcfRemoteDomainName = lens _dcfRemoteDomainName (\s a -> s {_dcfRemoteDomainName = a})

instance AWSRequest DeleteConditionalForwarder where
  type
    Rs DeleteConditionalForwarder =
      DeleteConditionalForwarderResponse
  request = postJSON directoryService
  response =
    receiveEmpty
      ( \s h x ->
          DeleteConditionalForwarderResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteConditionalForwarder

instance NFData DeleteConditionalForwarder

instance ToHeaders DeleteConditionalForwarder where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DeleteConditionalForwarder" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteConditionalForwarder where
  toJSON DeleteConditionalForwarder' {..} =
    object
      ( catMaybes
          [ Just ("DirectoryId" .= _dcfDirectoryId),
            Just ("RemoteDomainName" .= _dcfRemoteDomainName)
          ]
      )

instance ToPath DeleteConditionalForwarder where
  toPath = const "/"

instance ToQuery DeleteConditionalForwarder where
  toQuery = const mempty

-- | The result of a DeleteConditionalForwarder request.
--
--
--
-- /See:/ 'deleteConditionalForwarderResponse' smart constructor.
newtype DeleteConditionalForwarderResponse = DeleteConditionalForwarderResponse'
  { _dcfrrsResponseStatus ::
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

-- | Creates a value of 'DeleteConditionalForwarderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfrrsResponseStatus' - -- | The response status code.
deleteConditionalForwarderResponse ::
  -- | 'dcfrrsResponseStatus'
  Int ->
  DeleteConditionalForwarderResponse
deleteConditionalForwarderResponse pResponseStatus_ =
  DeleteConditionalForwarderResponse'
    { _dcfrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcfrrsResponseStatus :: Lens' DeleteConditionalForwarderResponse Int
dcfrrsResponseStatus = lens _dcfrrsResponseStatus (\s a -> s {_dcfrrsResponseStatus = a})

instance NFData DeleteConditionalForwarderResponse
