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
-- Module      : Network.AWS.Lightsail.DeleteDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified domain recordset and all of its domain records.
--
--
-- The @delete domain@ operation supports tag-based access control via resource tags applied to the resource identified by @domain name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.DeleteDomain
  ( -- * Creating a Request
    deleteDomain,
    DeleteDomain,

    -- * Request Lenses
    ddDomainName,

    -- * Destructuring the Response
    deleteDomainResponse,
    DeleteDomainResponse,

    -- * Response Lenses
    ddrdrsOperation,
    ddrdrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDomain' smart constructor.
newtype DeleteDomain = DeleteDomain'
  { _ddDomainName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDomainName' - The specific domain name to delete.
deleteDomain ::
  -- | 'ddDomainName'
  Text ->
  DeleteDomain
deleteDomain pDomainName_ =
  DeleteDomain' {_ddDomainName = pDomainName_}

-- | The specific domain name to delete.
ddDomainName :: Lens' DeleteDomain Text
ddDomainName = lens _ddDomainName (\s a -> s {_ddDomainName = a})

instance AWSRequest DeleteDomain where
  type Rs DeleteDomain = DeleteDomainResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteDomainResponse'
            <$> (x .?> "operation") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDomain

instance NFData DeleteDomain

instance ToHeaders DeleteDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.DeleteDomain" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteDomain where
  toJSON DeleteDomain' {..} =
    object
      (catMaybes [Just ("domainName" .= _ddDomainName)])

instance ToPath DeleteDomain where
  toPath = const "/"

instance ToQuery DeleteDomain where
  toQuery = const mempty

-- | /See:/ 'deleteDomainResponse' smart constructor.
data DeleteDomainResponse = DeleteDomainResponse'
  { _ddrdrsOperation ::
      !(Maybe Operation),
    _ddrdrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrdrsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'ddrdrsResponseStatus' - -- | The response status code.
deleteDomainResponse ::
  -- | 'ddrdrsResponseStatus'
  Int ->
  DeleteDomainResponse
deleteDomainResponse pResponseStatus_ =
  DeleteDomainResponse'
    { _ddrdrsOperation = Nothing,
      _ddrdrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
ddrdrsOperation :: Lens' DeleteDomainResponse (Maybe Operation)
ddrdrsOperation = lens _ddrdrsOperation (\s a -> s {_ddrdrsOperation = a})

-- | -- | The response status code.
ddrdrsResponseStatus :: Lens' DeleteDomainResponse Int
ddrdrsResponseStatus = lens _ddrdrsResponseStatus (\s a -> s {_ddrdrsResponseStatus = a})

instance NFData DeleteDomainResponse
