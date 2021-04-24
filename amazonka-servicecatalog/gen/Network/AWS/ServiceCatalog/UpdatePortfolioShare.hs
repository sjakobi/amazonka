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
-- Module      : Network.AWS.ServiceCatalog.UpdatePortfolioShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified portfolio share. You can use this API to enable or disable TagOptions sharing for an existing portfolio share.
--
--
-- The portfolio share cannot be updated if the @CreatePortfolioShare@ operation is @IN_PROGRESS@ , as the share is not available to recipient entities. In this case, you must wait for the portfolio share to be COMPLETED.
--
-- You must provide the @accountId@ or organization node in the input, but not both.
--
-- If the portfolio is shared to both an external account and an organization node, and both shares need to be updated, you must invoke @UpdatePortfolioShare@ separately for each share type.
--
-- This API cannot be used for removing the portfolio share. You must use @DeletePortfolioShare@ API for that action.
module Network.AWS.ServiceCatalog.UpdatePortfolioShare
  ( -- * Creating a Request
    updatePortfolioShare,
    UpdatePortfolioShare,

    -- * Request Lenses
    upsShareTagOptions,
    upsAccountId,
    upsOrganizationNode,
    upsAcceptLanguage,
    upsPortfolioId,

    -- * Destructuring the Response
    updatePortfolioShareResponse,
    UpdatePortfolioShareResponse,

    -- * Response Lenses
    upsrrsStatus,
    upsrrsPortfolioShareToken,
    upsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updatePortfolioShare' smart constructor.
data UpdatePortfolioShare = UpdatePortfolioShare'
  { _upsShareTagOptions ::
      !(Maybe Bool),
    _upsAccountId ::
      !(Maybe Text),
    _upsOrganizationNode ::
      !(Maybe OrganizationNode),
    _upsAcceptLanguage ::
      !(Maybe Text),
    _upsPortfolioId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePortfolioShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upsShareTagOptions' - A flag to enable or disable TagOptions sharing for the portfolio share. If this field is not provided, the current state of TagOptions sharing on the portfolio share will not be modified.
--
-- * 'upsAccountId' - The AWS Account Id of the recipient account. This field is required when updating an external account to account type share.
--
-- * 'upsOrganizationNode' - Undocumented member.
--
-- * 'upsAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'upsPortfolioId' - The unique identifier of the portfolio for which the share will be updated.
updatePortfolioShare ::
  -- | 'upsPortfolioId'
  Text ->
  UpdatePortfolioShare
updatePortfolioShare pPortfolioId_ =
  UpdatePortfolioShare'
    { _upsShareTagOptions =
        Nothing,
      _upsAccountId = Nothing,
      _upsOrganizationNode = Nothing,
      _upsAcceptLanguage = Nothing,
      _upsPortfolioId = pPortfolioId_
    }

-- | A flag to enable or disable TagOptions sharing for the portfolio share. If this field is not provided, the current state of TagOptions sharing on the portfolio share will not be modified.
upsShareTagOptions :: Lens' UpdatePortfolioShare (Maybe Bool)
upsShareTagOptions = lens _upsShareTagOptions (\s a -> s {_upsShareTagOptions = a})

-- | The AWS Account Id of the recipient account. This field is required when updating an external account to account type share.
upsAccountId :: Lens' UpdatePortfolioShare (Maybe Text)
upsAccountId = lens _upsAccountId (\s a -> s {_upsAccountId = a})

-- | Undocumented member.
upsOrganizationNode :: Lens' UpdatePortfolioShare (Maybe OrganizationNode)
upsOrganizationNode = lens _upsOrganizationNode (\s a -> s {_upsOrganizationNode = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
upsAcceptLanguage :: Lens' UpdatePortfolioShare (Maybe Text)
upsAcceptLanguage = lens _upsAcceptLanguage (\s a -> s {_upsAcceptLanguage = a})

-- | The unique identifier of the portfolio for which the share will be updated.
upsPortfolioId :: Lens' UpdatePortfolioShare Text
upsPortfolioId = lens _upsPortfolioId (\s a -> s {_upsPortfolioId = a})

instance AWSRequest UpdatePortfolioShare where
  type
    Rs UpdatePortfolioShare =
      UpdatePortfolioShareResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdatePortfolioShareResponse'
            <$> (x .?> "Status")
            <*> (x .?> "PortfolioShareToken")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdatePortfolioShare

instance NFData UpdatePortfolioShare

instance ToHeaders UpdatePortfolioShare where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdatePortfolioShare" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePortfolioShare where
  toJSON UpdatePortfolioShare' {..} =
    object
      ( catMaybes
          [ ("ShareTagOptions" .=) <$> _upsShareTagOptions,
            ("AccountId" .=) <$> _upsAccountId,
            ("OrganizationNode" .=) <$> _upsOrganizationNode,
            ("AcceptLanguage" .=) <$> _upsAcceptLanguage,
            Just ("PortfolioId" .= _upsPortfolioId)
          ]
      )

instance ToPath UpdatePortfolioShare where
  toPath = const "/"

instance ToQuery UpdatePortfolioShare where
  toQuery = const mempty

-- | /See:/ 'updatePortfolioShareResponse' smart constructor.
data UpdatePortfolioShareResponse = UpdatePortfolioShareResponse'
  { _upsrrsStatus ::
      !( Maybe
           ShareStatus
       ),
    _upsrrsPortfolioShareToken ::
      !(Maybe Text),
    _upsrrsResponseStatus ::
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

-- | Creates a value of 'UpdatePortfolioShareResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upsrrsStatus' - The status of @UpdatePortfolioShare@ operation. You can also obtain the operation status using @DescribePortfolioShareStatus@ API.
--
-- * 'upsrrsPortfolioShareToken' - The token that tracks the status of the @UpdatePortfolioShare@ operation for external account to account or organizational type sharing.
--
-- * 'upsrrsResponseStatus' - -- | The response status code.
updatePortfolioShareResponse ::
  -- | 'upsrrsResponseStatus'
  Int ->
  UpdatePortfolioShareResponse
updatePortfolioShareResponse pResponseStatus_ =
  UpdatePortfolioShareResponse'
    { _upsrrsStatus =
        Nothing,
      _upsrrsPortfolioShareToken = Nothing,
      _upsrrsResponseStatus = pResponseStatus_
    }

-- | The status of @UpdatePortfolioShare@ operation. You can also obtain the operation status using @DescribePortfolioShareStatus@ API.
upsrrsStatus :: Lens' UpdatePortfolioShareResponse (Maybe ShareStatus)
upsrrsStatus = lens _upsrrsStatus (\s a -> s {_upsrrsStatus = a})

-- | The token that tracks the status of the @UpdatePortfolioShare@ operation for external account to account or organizational type sharing.
upsrrsPortfolioShareToken :: Lens' UpdatePortfolioShareResponse (Maybe Text)
upsrrsPortfolioShareToken = lens _upsrrsPortfolioShareToken (\s a -> s {_upsrrsPortfolioShareToken = a})

-- | -- | The response status code.
upsrrsResponseStatus :: Lens' UpdatePortfolioShareResponse Int
upsrrsResponseStatus = lens _upsrrsResponseStatus (\s a -> s {_upsrrsResponseStatus = a})

instance NFData UpdatePortfolioShareResponse
