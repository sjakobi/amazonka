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
-- Module      : Network.AWS.ServiceCatalog.DeletePortfolioShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops sharing the specified portfolio with the specified account or organization node. Shares to an organization node can only be deleted by the management account of an organization or by a delegated administrator.
--
--
-- Note that if a delegated admin is de-registered, portfolio shares created from that account are removed.
module Network.AWS.ServiceCatalog.DeletePortfolioShare
  ( -- * Creating a Request
    deletePortfolioShare,
    DeletePortfolioShare,

    -- * Request Lenses
    dAccountId,
    dOrganizationNode,
    dAcceptLanguage,
    dPortfolioId,

    -- * Destructuring the Response
    deletePortfolioShareResponse,
    DeletePortfolioShareResponse,

    -- * Response Lenses
    dpsrprsPortfolioShareToken,
    dpsrprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'deletePortfolioShare' smart constructor.
data DeletePortfolioShare = DeletePortfolioShare'
  { _dAccountId ::
      !(Maybe Text),
    _dOrganizationNode ::
      !(Maybe OrganizationNode),
    _dAcceptLanguage ::
      !(Maybe Text),
    _dPortfolioId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletePortfolioShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAccountId' - The AWS account ID.
--
-- * 'dOrganizationNode' - The organization node to whom you are going to stop sharing.
--
-- * 'dAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dPortfolioId' - The portfolio identifier.
deletePortfolioShare ::
  -- | 'dPortfolioId'
  Text ->
  DeletePortfolioShare
deletePortfolioShare pPortfolioId_ =
  DeletePortfolioShare'
    { _dAccountId = Nothing,
      _dOrganizationNode = Nothing,
      _dAcceptLanguage = Nothing,
      _dPortfolioId = pPortfolioId_
    }

-- | The AWS account ID.
dAccountId :: Lens' DeletePortfolioShare (Maybe Text)
dAccountId = lens _dAccountId (\s a -> s {_dAccountId = a})

-- | The organization node to whom you are going to stop sharing.
dOrganizationNode :: Lens' DeletePortfolioShare (Maybe OrganizationNode)
dOrganizationNode = lens _dOrganizationNode (\s a -> s {_dOrganizationNode = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dAcceptLanguage :: Lens' DeletePortfolioShare (Maybe Text)
dAcceptLanguage = lens _dAcceptLanguage (\s a -> s {_dAcceptLanguage = a})

-- | The portfolio identifier.
dPortfolioId :: Lens' DeletePortfolioShare Text
dPortfolioId = lens _dPortfolioId (\s a -> s {_dPortfolioId = a})

instance AWSRequest DeletePortfolioShare where
  type
    Rs DeletePortfolioShare =
      DeletePortfolioShareResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DeletePortfolioShareResponse'
            <$> (x .?> "PortfolioShareToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DeletePortfolioShare

instance NFData DeletePortfolioShare

instance ToHeaders DeletePortfolioShare where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DeletePortfolioShare" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeletePortfolioShare where
  toJSON DeletePortfolioShare' {..} =
    object
      ( catMaybes
          [ ("AccountId" .=) <$> _dAccountId,
            ("OrganizationNode" .=) <$> _dOrganizationNode,
            ("AcceptLanguage" .=) <$> _dAcceptLanguage,
            Just ("PortfolioId" .= _dPortfolioId)
          ]
      )

instance ToPath DeletePortfolioShare where
  toPath = const "/"

instance ToQuery DeletePortfolioShare where
  toQuery = const mempty

-- | /See:/ 'deletePortfolioShareResponse' smart constructor.
data DeletePortfolioShareResponse = DeletePortfolioShareResponse'
  { _dpsrprsPortfolioShareToken ::
      !(Maybe Text),
    _dpsrprsResponseStatus ::
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

-- | Creates a value of 'DeletePortfolioShareResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpsrprsPortfolioShareToken' - The portfolio share unique identifier. This will only be returned if delete is made to an organization node.
--
-- * 'dpsrprsResponseStatus' - -- | The response status code.
deletePortfolioShareResponse ::
  -- | 'dpsrprsResponseStatus'
  Int ->
  DeletePortfolioShareResponse
deletePortfolioShareResponse pResponseStatus_ =
  DeletePortfolioShareResponse'
    { _dpsrprsPortfolioShareToken =
        Nothing,
      _dpsrprsResponseStatus = pResponseStatus_
    }

-- | The portfolio share unique identifier. This will only be returned if delete is made to an organization node.
dpsrprsPortfolioShareToken :: Lens' DeletePortfolioShareResponse (Maybe Text)
dpsrprsPortfolioShareToken = lens _dpsrprsPortfolioShareToken (\s a -> s {_dpsrprsPortfolioShareToken = a})

-- | -- | The response status code.
dpsrprsResponseStatus :: Lens' DeletePortfolioShareResponse Int
dpsrprsResponseStatus = lens _dpsrprsResponseStatus (\s a -> s {_dpsrprsResponseStatus = a})

instance NFData DeletePortfolioShareResponse
