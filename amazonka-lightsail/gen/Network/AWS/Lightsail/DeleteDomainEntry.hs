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
-- Module      : Network.AWS.Lightsail.DeleteDomainEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific domain entry.
--
--
-- The @delete domain entry@ operation supports tag-based access control via resource tags applied to the resource identified by @domain name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.DeleteDomainEntry
  ( -- * Creating a Request
    deleteDomainEntry,
    DeleteDomainEntry,

    -- * Request Lenses
    ddeDomainName,
    ddeDomainEntry,

    -- * Destructuring the Response
    deleteDomainEntryResponse,
    DeleteDomainEntryResponse,

    -- * Response Lenses
    dderrsOperation,
    dderrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDomainEntry' smart constructor.
data DeleteDomainEntry = DeleteDomainEntry'
  { _ddeDomainName ::
      !Text,
    _ddeDomainEntry :: !DomainEntry
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDomainEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddeDomainName' - The name of the domain entry to delete.
--
-- * 'ddeDomainEntry' - An array of key-value pairs containing information about your domain entries.
deleteDomainEntry ::
  -- | 'ddeDomainName'
  Text ->
  -- | 'ddeDomainEntry'
  DomainEntry ->
  DeleteDomainEntry
deleteDomainEntry pDomainName_ pDomainEntry_ =
  DeleteDomainEntry'
    { _ddeDomainName = pDomainName_,
      _ddeDomainEntry = pDomainEntry_
    }

-- | The name of the domain entry to delete.
ddeDomainName :: Lens' DeleteDomainEntry Text
ddeDomainName = lens _ddeDomainName (\s a -> s {_ddeDomainName = a})

-- | An array of key-value pairs containing information about your domain entries.
ddeDomainEntry :: Lens' DeleteDomainEntry DomainEntry
ddeDomainEntry = lens _ddeDomainEntry (\s a -> s {_ddeDomainEntry = a})

instance AWSRequest DeleteDomainEntry where
  type Rs DeleteDomainEntry = DeleteDomainEntryResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteDomainEntryResponse'
            <$> (x .?> "operation") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDomainEntry

instance NFData DeleteDomainEntry

instance ToHeaders DeleteDomainEntry where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.DeleteDomainEntry" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteDomainEntry where
  toJSON DeleteDomainEntry' {..} =
    object
      ( catMaybes
          [ Just ("domainName" .= _ddeDomainName),
            Just ("domainEntry" .= _ddeDomainEntry)
          ]
      )

instance ToPath DeleteDomainEntry where
  toPath = const "/"

instance ToQuery DeleteDomainEntry where
  toQuery = const mempty

-- | /See:/ 'deleteDomainEntryResponse' smart constructor.
data DeleteDomainEntryResponse = DeleteDomainEntryResponse'
  { _dderrsOperation ::
      !(Maybe Operation),
    _dderrsResponseStatus ::
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

-- | Creates a value of 'DeleteDomainEntryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dderrsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'dderrsResponseStatus' - -- | The response status code.
deleteDomainEntryResponse ::
  -- | 'dderrsResponseStatus'
  Int ->
  DeleteDomainEntryResponse
deleteDomainEntryResponse pResponseStatus_ =
  DeleteDomainEntryResponse'
    { _dderrsOperation =
        Nothing,
      _dderrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
dderrsOperation :: Lens' DeleteDomainEntryResponse (Maybe Operation)
dderrsOperation = lens _dderrsOperation (\s a -> s {_dderrsOperation = a})

-- | -- | The response status code.
dderrsResponseStatus :: Lens' DeleteDomainEntryResponse Int
dderrsResponseStatus = lens _dderrsResponseStatus (\s a -> s {_dderrsResponseStatus = a})

instance NFData DeleteDomainEntryResponse
