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
-- Module      : Network.AWS.CloudSearch.DeleteDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html Deleting a Search Domain> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DeleteDomain
  ( -- * Creating a Request
    deleteDomain,
    DeleteDomain,

    -- * Request Lenses
    ddDomainName,

    -- * Destructuring the Response
    deleteDomainResponse,
    DeleteDomainResponse,

    -- * Response Lenses
    ddrdrsDomainStatus,
    ddrdrsResponseStatus,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DeleteDomain' @ operation. Specifies the name of the domain you want to delete.
--
--
--
-- /See:/ 'deleteDomain' smart constructor.
newtype DeleteDomain = DeleteDomain'
  { _ddDomainName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDomainName' - The name of the domain you want to permanently delete.
deleteDomain ::
  -- | 'ddDomainName'
  Text ->
  DeleteDomain
deleteDomain pDomainName_ =
  DeleteDomain' {_ddDomainName = pDomainName_}

-- | The name of the domain you want to permanently delete.
ddDomainName :: Lens' DeleteDomain Text
ddDomainName = lens _ddDomainName (\s a -> s {_ddDomainName = a})

instance AWSRequest DeleteDomain where
  type Rs DeleteDomain = DeleteDomainResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DeleteDomainResult"
      ( \s h x ->
          DeleteDomainResponse'
            <$> (x .@? "DomainStatus") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDomain

instance NFData DeleteDomain

instance ToHeaders DeleteDomain where
  toHeaders = const mempty

instance ToPath DeleteDomain where
  toPath = const "/"

instance ToQuery DeleteDomain where
  toQuery DeleteDomain' {..} =
    mconcat
      [ "Action" =: ("DeleteDomain" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _ddDomainName
      ]

-- | The result of a @DeleteDomain@ request. Contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.
--
--
--
-- /See:/ 'deleteDomainResponse' smart constructor.
data DeleteDomainResponse = DeleteDomainResponse'
  { _ddrdrsDomainStatus ::
      !(Maybe DomainStatus),
    _ddrdrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrdrsDomainStatus' - Undocumented member.
--
-- * 'ddrdrsResponseStatus' - -- | The response status code.
deleteDomainResponse ::
  -- | 'ddrdrsResponseStatus'
  Int ->
  DeleteDomainResponse
deleteDomainResponse pResponseStatus_ =
  DeleteDomainResponse'
    { _ddrdrsDomainStatus =
        Nothing,
      _ddrdrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ddrdrsDomainStatus :: Lens' DeleteDomainResponse (Maybe DomainStatus)
ddrdrsDomainStatus = lens _ddrdrsDomainStatus (\s a -> s {_ddrdrsDomainStatus = a})

-- | -- | The response status code.
ddrdrsResponseStatus :: Lens' DeleteDomainResponse Int
ddrdrsResponseStatus = lens _ddrdrsResponseStatus (\s a -> s {_ddrdrsResponseStatus = a})

instance NFData DeleteDomainResponse
