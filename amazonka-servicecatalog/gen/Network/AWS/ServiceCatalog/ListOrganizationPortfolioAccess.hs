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
-- Module      : Network.AWS.ServiceCatalog.ListOrganizationPortfolioAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the organization nodes that have access to the specified portfolio. This API can only be called by the management account in the organization or by a delegated admin.
--
--
-- If a delegated admin is de-registered, they can no longer perform this operation.
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListOrganizationPortfolioAccess
  ( -- * Creating a Request
    listOrganizationPortfolioAccess,
    ListOrganizationPortfolioAccess,

    -- * Request Lenses
    lopaPageSize,
    lopaPageToken,
    lopaAcceptLanguage,
    lopaPortfolioId,
    lopaOrganizationNodeType,

    -- * Destructuring the Response
    listOrganizationPortfolioAccessResponse,
    ListOrganizationPortfolioAccessResponse,

    -- * Response Lenses
    loparrsOrganizationNodes,
    loparrsNextPageToken,
    loparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listOrganizationPortfolioAccess' smart constructor.
data ListOrganizationPortfolioAccess = ListOrganizationPortfolioAccess'
  { _lopaPageSize ::
      !( Maybe
           Nat
       ),
    _lopaPageToken ::
      !( Maybe
           Text
       ),
    _lopaAcceptLanguage ::
      !( Maybe
           Text
       ),
    _lopaPortfolioId ::
      !Text,
    _lopaOrganizationNodeType ::
      !OrganizationNodeType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListOrganizationPortfolioAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lopaPageSize' - The maximum number of items to return with this call.
--
-- * 'lopaPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lopaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lopaPortfolioId' - The portfolio identifier. For example, @port-2abcdext3y5fk@ .
--
-- * 'lopaOrganizationNodeType' - The organization node type that will be returned in the output.     * @ORGANIZATION@ - Organization that has access to the portfolio.      * @ORGANIZATIONAL_UNIT@ - Organizational unit that has access to the portfolio within your organization.     * @ACCOUNT@ - Account that has access to the portfolio within your organization.
listOrganizationPortfolioAccess ::
  -- | 'lopaPortfolioId'
  Text ->
  -- | 'lopaOrganizationNodeType'
  OrganizationNodeType ->
  ListOrganizationPortfolioAccess
listOrganizationPortfolioAccess
  pPortfolioId_
  pOrganizationNodeType_ =
    ListOrganizationPortfolioAccess'
      { _lopaPageSize =
          Nothing,
        _lopaPageToken = Nothing,
        _lopaAcceptLanguage = Nothing,
        _lopaPortfolioId = pPortfolioId_,
        _lopaOrganizationNodeType =
          pOrganizationNodeType_
      }

-- | The maximum number of items to return with this call.
lopaPageSize :: Lens' ListOrganizationPortfolioAccess (Maybe Natural)
lopaPageSize = lens _lopaPageSize (\s a -> s {_lopaPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lopaPageToken :: Lens' ListOrganizationPortfolioAccess (Maybe Text)
lopaPageToken = lens _lopaPageToken (\s a -> s {_lopaPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lopaAcceptLanguage :: Lens' ListOrganizationPortfolioAccess (Maybe Text)
lopaAcceptLanguage = lens _lopaAcceptLanguage (\s a -> s {_lopaAcceptLanguage = a})

-- | The portfolio identifier. For example, @port-2abcdext3y5fk@ .
lopaPortfolioId :: Lens' ListOrganizationPortfolioAccess Text
lopaPortfolioId = lens _lopaPortfolioId (\s a -> s {_lopaPortfolioId = a})

-- | The organization node type that will be returned in the output.     * @ORGANIZATION@ - Organization that has access to the portfolio.      * @ORGANIZATIONAL_UNIT@ - Organizational unit that has access to the portfolio within your organization.     * @ACCOUNT@ - Account that has access to the portfolio within your organization.
lopaOrganizationNodeType :: Lens' ListOrganizationPortfolioAccess OrganizationNodeType
lopaOrganizationNodeType = lens _lopaOrganizationNodeType (\s a -> s {_lopaOrganizationNodeType = a})

instance AWSPager ListOrganizationPortfolioAccess where
  page rq rs
    | stop (rs ^. loparrsNextPageToken) = Nothing
    | stop (rs ^. loparrsOrganizationNodes) = Nothing
    | otherwise =
      Just $
        rq
          & lopaPageToken .~ rs ^. loparrsNextPageToken

instance AWSRequest ListOrganizationPortfolioAccess where
  type
    Rs ListOrganizationPortfolioAccess =
      ListOrganizationPortfolioAccessResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListOrganizationPortfolioAccessResponse'
            <$> (x .?> "OrganizationNodes" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListOrganizationPortfolioAccess

instance NFData ListOrganizationPortfolioAccess

instance ToHeaders ListOrganizationPortfolioAccess where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListOrganizationPortfolioAccess" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOrganizationPortfolioAccess where
  toJSON ListOrganizationPortfolioAccess' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lopaPageSize,
            ("PageToken" .=) <$> _lopaPageToken,
            ("AcceptLanguage" .=) <$> _lopaAcceptLanguage,
            Just ("PortfolioId" .= _lopaPortfolioId),
            Just
              ( "OrganizationNodeType"
                  .= _lopaOrganizationNodeType
              )
          ]
      )

instance ToPath ListOrganizationPortfolioAccess where
  toPath = const "/"

instance ToQuery ListOrganizationPortfolioAccess where
  toQuery = const mempty

-- | /See:/ 'listOrganizationPortfolioAccessResponse' smart constructor.
data ListOrganizationPortfolioAccessResponse = ListOrganizationPortfolioAccessResponse'
  { _loparrsOrganizationNodes ::
      !( Maybe
           [OrganizationNode]
       ),
    _loparrsNextPageToken ::
      !( Maybe
           Text
       ),
    _loparrsResponseStatus ::
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

-- | Creates a value of 'ListOrganizationPortfolioAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loparrsOrganizationNodes' - Displays information about the organization nodes.
--
-- * 'loparrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'loparrsResponseStatus' - -- | The response status code.
listOrganizationPortfolioAccessResponse ::
  -- | 'loparrsResponseStatus'
  Int ->
  ListOrganizationPortfolioAccessResponse
listOrganizationPortfolioAccessResponse
  pResponseStatus_ =
    ListOrganizationPortfolioAccessResponse'
      { _loparrsOrganizationNodes =
          Nothing,
        _loparrsNextPageToken = Nothing,
        _loparrsResponseStatus =
          pResponseStatus_
      }

-- | Displays information about the organization nodes.
loparrsOrganizationNodes :: Lens' ListOrganizationPortfolioAccessResponse [OrganizationNode]
loparrsOrganizationNodes = lens _loparrsOrganizationNodes (\s a -> s {_loparrsOrganizationNodes = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
loparrsNextPageToken :: Lens' ListOrganizationPortfolioAccessResponse (Maybe Text)
loparrsNextPageToken = lens _loparrsNextPageToken (\s a -> s {_loparrsNextPageToken = a})

-- | -- | The response status code.
loparrsResponseStatus :: Lens' ListOrganizationPortfolioAccessResponse Int
loparrsResponseStatus = lens _loparrsResponseStatus (\s a -> s {_loparrsResponseStatus = a})

instance
  NFData
    ListOrganizationPortfolioAccessResponse
