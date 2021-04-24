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
-- Module      : Network.AWS.ServiceCatalog.CreatePortfolioShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shares the specified portfolio with the specified account or organization node. Shares to an organization node can only be created by the management account of an organization or by a delegated administrator. You can share portfolios to an organization, an organizational unit, or a specific account.
--
--
-- Note that if a delegated admin is de-registered, they can no longer create portfolio shares.
--
-- @AWSOrganizationsAccess@ must be enabled in order to create a portfolio share to an organization node.
--
-- You can't share a shared resource, including portfolios that contain a shared product.
--
-- If the portfolio share with the specified account or organization node already exists, this action will have no effect and will not return an error. To update an existing share, you must use the @UpdatePortfolioShare@ API instead.
module Network.AWS.ServiceCatalog.CreatePortfolioShare
  ( -- * Creating a Request
    createPortfolioShare,
    CreatePortfolioShare,

    -- * Request Lenses
    cpsShareTagOptions,
    cpsAccountId,
    cpsOrganizationNode,
    cpsAcceptLanguage,
    cpsPortfolioId,

    -- * Destructuring the Response
    createPortfolioShareResponse,
    CreatePortfolioShareResponse,

    -- * Response Lenses
    cpsrrsPortfolioShareToken,
    cpsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'createPortfolioShare' smart constructor.
data CreatePortfolioShare = CreatePortfolioShare'
  { _cpsShareTagOptions ::
      !(Maybe Bool),
    _cpsAccountId ::
      !(Maybe Text),
    _cpsOrganizationNode ::
      !(Maybe OrganizationNode),
    _cpsAcceptLanguage ::
      !(Maybe Text),
    _cpsPortfolioId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePortfolioShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpsShareTagOptions' - Enables or disables @TagOptions @ sharing when creating the portfolio share. If this flag is not provided, TagOptions sharing is disabled.
--
-- * 'cpsAccountId' - The AWS account ID. For example, @123456789012@ .
--
-- * 'cpsOrganizationNode' - The organization node to whom you are going to share. If @OrganizationNode@ is passed in, @PortfolioShare@ will be created for the node an ListOrganizationPortfolioAccessd its children (when applies), and a @PortfolioShareToken@ will be returned in the output in order for the administrator to monitor the status of the @PortfolioShare@ creation process.
--
-- * 'cpsAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'cpsPortfolioId' - The portfolio identifier.
createPortfolioShare ::
  -- | 'cpsPortfolioId'
  Text ->
  CreatePortfolioShare
createPortfolioShare pPortfolioId_ =
  CreatePortfolioShare'
    { _cpsShareTagOptions =
        Nothing,
      _cpsAccountId = Nothing,
      _cpsOrganizationNode = Nothing,
      _cpsAcceptLanguage = Nothing,
      _cpsPortfolioId = pPortfolioId_
    }

-- | Enables or disables @TagOptions @ sharing when creating the portfolio share. If this flag is not provided, TagOptions sharing is disabled.
cpsShareTagOptions :: Lens' CreatePortfolioShare (Maybe Bool)
cpsShareTagOptions = lens _cpsShareTagOptions (\s a -> s {_cpsShareTagOptions = a})

-- | The AWS account ID. For example, @123456789012@ .
cpsAccountId :: Lens' CreatePortfolioShare (Maybe Text)
cpsAccountId = lens _cpsAccountId (\s a -> s {_cpsAccountId = a})

-- | The organization node to whom you are going to share. If @OrganizationNode@ is passed in, @PortfolioShare@ will be created for the node an ListOrganizationPortfolioAccessd its children (when applies), and a @PortfolioShareToken@ will be returned in the output in order for the administrator to monitor the status of the @PortfolioShare@ creation process.
cpsOrganizationNode :: Lens' CreatePortfolioShare (Maybe OrganizationNode)
cpsOrganizationNode = lens _cpsOrganizationNode (\s a -> s {_cpsOrganizationNode = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
cpsAcceptLanguage :: Lens' CreatePortfolioShare (Maybe Text)
cpsAcceptLanguage = lens _cpsAcceptLanguage (\s a -> s {_cpsAcceptLanguage = a})

-- | The portfolio identifier.
cpsPortfolioId :: Lens' CreatePortfolioShare Text
cpsPortfolioId = lens _cpsPortfolioId (\s a -> s {_cpsPortfolioId = a})

instance AWSRequest CreatePortfolioShare where
  type
    Rs CreatePortfolioShare =
      CreatePortfolioShareResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          CreatePortfolioShareResponse'
            <$> (x .?> "PortfolioShareToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreatePortfolioShare

instance NFData CreatePortfolioShare

instance ToHeaders CreatePortfolioShare where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.CreatePortfolioShare" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePortfolioShare where
  toJSON CreatePortfolioShare' {..} =
    object
      ( catMaybes
          [ ("ShareTagOptions" .=) <$> _cpsShareTagOptions,
            ("AccountId" .=) <$> _cpsAccountId,
            ("OrganizationNode" .=) <$> _cpsOrganizationNode,
            ("AcceptLanguage" .=) <$> _cpsAcceptLanguage,
            Just ("PortfolioId" .= _cpsPortfolioId)
          ]
      )

instance ToPath CreatePortfolioShare where
  toPath = const "/"

instance ToQuery CreatePortfolioShare where
  toQuery = const mempty

-- | /See:/ 'createPortfolioShareResponse' smart constructor.
data CreatePortfolioShareResponse = CreatePortfolioShareResponse'
  { _cpsrrsPortfolioShareToken ::
      !(Maybe Text),
    _cpsrrsResponseStatus ::
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

-- | Creates a value of 'CreatePortfolioShareResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpsrrsPortfolioShareToken' - The portfolio shares a unique identifier that only returns if the portfolio is shared to an organization node.
--
-- * 'cpsrrsResponseStatus' - -- | The response status code.
createPortfolioShareResponse ::
  -- | 'cpsrrsResponseStatus'
  Int ->
  CreatePortfolioShareResponse
createPortfolioShareResponse pResponseStatus_ =
  CreatePortfolioShareResponse'
    { _cpsrrsPortfolioShareToken =
        Nothing,
      _cpsrrsResponseStatus = pResponseStatus_
    }

-- | The portfolio shares a unique identifier that only returns if the portfolio is shared to an organization node.
cpsrrsPortfolioShareToken :: Lens' CreatePortfolioShareResponse (Maybe Text)
cpsrrsPortfolioShareToken = lens _cpsrrsPortfolioShareToken (\s a -> s {_cpsrrsPortfolioShareToken = a})

-- | -- | The response status code.
cpsrrsResponseStatus :: Lens' CreatePortfolioShareResponse Int
cpsrrsResponseStatus = lens _cpsrrsResponseStatus (\s a -> s {_cpsrrsResponseStatus = a})

instance NFData CreatePortfolioShareResponse
