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
-- Module      : Network.AWS.ServiceCatalog.ListPortfolioAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the account IDs that have access to the specified portfolio.
--
--
-- A delegated admin can list the accounts that have access to the shared portfolio. Note that if a delegated admin is de-registered, they can no longer perform this operation.
module Network.AWS.ServiceCatalog.ListPortfolioAccess
  ( -- * Creating a Request
    listPortfolioAccess,
    ListPortfolioAccess,

    -- * Request Lenses
    lpaPageSize,
    lpaPageToken,
    lpaOrganizationParentId,
    lpaAcceptLanguage,
    lpaPortfolioId,

    -- * Destructuring the Response
    listPortfolioAccessResponse,
    ListPortfolioAccessResponse,

    -- * Response Lenses
    lparrsAccountIds,
    lparrsNextPageToken,
    lparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listPortfolioAccess' smart constructor.
data ListPortfolioAccess = ListPortfolioAccess'
  { _lpaPageSize ::
      !(Maybe Nat),
    _lpaPageToken :: !(Maybe Text),
    _lpaOrganizationParentId ::
      !(Maybe Text),
    _lpaAcceptLanguage ::
      !(Maybe Text),
    _lpaPortfolioId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPortfolioAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpaPageSize' - The maximum number of items to return with this call.
--
-- * 'lpaPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lpaOrganizationParentId' - The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.
--
-- * 'lpaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lpaPortfolioId' - The portfolio identifier.
listPortfolioAccess ::
  -- | 'lpaPortfolioId'
  Text ->
  ListPortfolioAccess
listPortfolioAccess pPortfolioId_ =
  ListPortfolioAccess'
    { _lpaPageSize = Nothing,
      _lpaPageToken = Nothing,
      _lpaOrganizationParentId = Nothing,
      _lpaAcceptLanguage = Nothing,
      _lpaPortfolioId = pPortfolioId_
    }

-- | The maximum number of items to return with this call.
lpaPageSize :: Lens' ListPortfolioAccess (Maybe Natural)
lpaPageSize = lens _lpaPageSize (\s a -> s {_lpaPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lpaPageToken :: Lens' ListPortfolioAccess (Maybe Text)
lpaPageToken = lens _lpaPageToken (\s a -> s {_lpaPageToken = a})

-- | The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.
lpaOrganizationParentId :: Lens' ListPortfolioAccess (Maybe Text)
lpaOrganizationParentId = lens _lpaOrganizationParentId (\s a -> s {_lpaOrganizationParentId = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lpaAcceptLanguage :: Lens' ListPortfolioAccess (Maybe Text)
lpaAcceptLanguage = lens _lpaAcceptLanguage (\s a -> s {_lpaAcceptLanguage = a})

-- | The portfolio identifier.
lpaPortfolioId :: Lens' ListPortfolioAccess Text
lpaPortfolioId = lens _lpaPortfolioId (\s a -> s {_lpaPortfolioId = a})

instance AWSRequest ListPortfolioAccess where
  type
    Rs ListPortfolioAccess =
      ListPortfolioAccessResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListPortfolioAccessResponse'
            <$> (x .?> "AccountIds" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPortfolioAccess

instance NFData ListPortfolioAccess

instance ToHeaders ListPortfolioAccess where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListPortfolioAccess" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPortfolioAccess where
  toJSON ListPortfolioAccess' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lpaPageSize,
            ("PageToken" .=) <$> _lpaPageToken,
            ("OrganizationParentId" .=)
              <$> _lpaOrganizationParentId,
            ("AcceptLanguage" .=) <$> _lpaAcceptLanguage,
            Just ("PortfolioId" .= _lpaPortfolioId)
          ]
      )

instance ToPath ListPortfolioAccess where
  toPath = const "/"

instance ToQuery ListPortfolioAccess where
  toQuery = const mempty

-- | /See:/ 'listPortfolioAccessResponse' smart constructor.
data ListPortfolioAccessResponse = ListPortfolioAccessResponse'
  { _lparrsAccountIds ::
      !(Maybe [Text]),
    _lparrsNextPageToken ::
      !(Maybe Text),
    _lparrsResponseStatus ::
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

-- | Creates a value of 'ListPortfolioAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lparrsAccountIds' - Information about the AWS accounts with access to the portfolio.
--
-- * 'lparrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lparrsResponseStatus' - -- | The response status code.
listPortfolioAccessResponse ::
  -- | 'lparrsResponseStatus'
  Int ->
  ListPortfolioAccessResponse
listPortfolioAccessResponse pResponseStatus_ =
  ListPortfolioAccessResponse'
    { _lparrsAccountIds =
        Nothing,
      _lparrsNextPageToken = Nothing,
      _lparrsResponseStatus = pResponseStatus_
    }

-- | Information about the AWS accounts with access to the portfolio.
lparrsAccountIds :: Lens' ListPortfolioAccessResponse [Text]
lparrsAccountIds = lens _lparrsAccountIds (\s a -> s {_lparrsAccountIds = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lparrsNextPageToken :: Lens' ListPortfolioAccessResponse (Maybe Text)
lparrsNextPageToken = lens _lparrsNextPageToken (\s a -> s {_lparrsNextPageToken = a})

-- | -- | The response status code.
lparrsResponseStatus :: Lens' ListPortfolioAccessResponse Int
lparrsResponseStatus = lens _lparrsResponseStatus (\s a -> s {_lparrsResponseStatus = a})

instance NFData ListPortfolioAccessResponse
