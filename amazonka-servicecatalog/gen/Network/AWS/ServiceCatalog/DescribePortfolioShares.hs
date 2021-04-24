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
-- Module      : Network.AWS.ServiceCatalog.DescribePortfolioShares
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a summary of each of the portfolio shares that were created for the specified portfolio.
--
--
-- You can use this API to determine which accounts or organizational nodes this portfolio have been shared, whether the recipient entity has imported the share, and whether TagOptions are included with the share.
--
-- The @PortfolioId@ and @Type@ parameters are both required.
module Network.AWS.ServiceCatalog.DescribePortfolioShares
  ( -- * Creating a Request
    describePortfolioShares,
    DescribePortfolioShares,

    -- * Request Lenses
    dpsPageSize,
    dpsPageToken,
    dpsPortfolioId,
    dpsType,

    -- * Destructuring the Response
    describePortfolioSharesResponse,
    DescribePortfolioSharesResponse,

    -- * Response Lenses
    dpsrrsNextPageToken,
    dpsrrsPortfolioShareDetails,
    dpsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describePortfolioShares' smart constructor.
data DescribePortfolioShares = DescribePortfolioShares'
  { _dpsPageSize ::
      !(Maybe Nat),
    _dpsPageToken ::
      !(Maybe Text),
    _dpsPortfolioId ::
      !Text,
    _dpsType ::
      !DescribePortfolioShareType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePortfolioShares' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpsPageSize' - The maximum number of items to return with this call.
--
-- * 'dpsPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'dpsPortfolioId' - The unique identifier of the portfolio for which shares will be retrieved.
--
-- * 'dpsType' - The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following: 1. @ACCOUNT@ - Represents an external account to account share. 2. @ORGANIZATION@ - Represents a share to an organization. This share is available to every account in the organization. 3. @ORGANIZATIONAL_UNIT@ - Represents a share to an organizational unit. 4. @ORGANIZATION_MEMBER_ACCOUNT@ - Represents a share to an account in the organization.
describePortfolioShares ::
  -- | 'dpsPortfolioId'
  Text ->
  -- | 'dpsType'
  DescribePortfolioShareType ->
  DescribePortfolioShares
describePortfolioShares pPortfolioId_ pType_ =
  DescribePortfolioShares'
    { _dpsPageSize = Nothing,
      _dpsPageToken = Nothing,
      _dpsPortfolioId = pPortfolioId_,
      _dpsType = pType_
    }

-- | The maximum number of items to return with this call.
dpsPageSize :: Lens' DescribePortfolioShares (Maybe Natural)
dpsPageSize = lens _dpsPageSize (\s a -> s {_dpsPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
dpsPageToken :: Lens' DescribePortfolioShares (Maybe Text)
dpsPageToken = lens _dpsPageToken (\s a -> s {_dpsPageToken = a})

-- | The unique identifier of the portfolio for which shares will be retrieved.
dpsPortfolioId :: Lens' DescribePortfolioShares Text
dpsPortfolioId = lens _dpsPortfolioId (\s a -> s {_dpsPortfolioId = a})

-- | The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following: 1. @ACCOUNT@ - Represents an external account to account share. 2. @ORGANIZATION@ - Represents a share to an organization. This share is available to every account in the organization. 3. @ORGANIZATIONAL_UNIT@ - Represents a share to an organizational unit. 4. @ORGANIZATION_MEMBER_ACCOUNT@ - Represents a share to an account in the organization.
dpsType :: Lens' DescribePortfolioShares DescribePortfolioShareType
dpsType = lens _dpsType (\s a -> s {_dpsType = a})

instance AWSRequest DescribePortfolioShares where
  type
    Rs DescribePortfolioShares =
      DescribePortfolioSharesResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribePortfolioSharesResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "PortfolioShareDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePortfolioShares

instance NFData DescribePortfolioShares

instance ToHeaders DescribePortfolioShares where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribePortfolioShares" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePortfolioShares where
  toJSON DescribePortfolioShares' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _dpsPageSize,
            ("PageToken" .=) <$> _dpsPageToken,
            Just ("PortfolioId" .= _dpsPortfolioId),
            Just ("Type" .= _dpsType)
          ]
      )

instance ToPath DescribePortfolioShares where
  toPath = const "/"

instance ToQuery DescribePortfolioShares where
  toQuery = const mempty

-- | /See:/ 'describePortfolioSharesResponse' smart constructor.
data DescribePortfolioSharesResponse = DescribePortfolioSharesResponse'
  { _dpsrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _dpsrrsPortfolioShareDetails ::
      !( Maybe
           [PortfolioShareDetail]
       ),
    _dpsrrsResponseStatus ::
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

-- | Creates a value of 'DescribePortfolioSharesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpsrrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'dpsrrsPortfolioShareDetails' - Summaries about each of the portfolio shares.
--
-- * 'dpsrrsResponseStatus' - -- | The response status code.
describePortfolioSharesResponse ::
  -- | 'dpsrrsResponseStatus'
  Int ->
  DescribePortfolioSharesResponse
describePortfolioSharesResponse pResponseStatus_ =
  DescribePortfolioSharesResponse'
    { _dpsrrsNextPageToken =
        Nothing,
      _dpsrrsPortfolioShareDetails = Nothing,
      _dpsrrsResponseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
dpsrrsNextPageToken :: Lens' DescribePortfolioSharesResponse (Maybe Text)
dpsrrsNextPageToken = lens _dpsrrsNextPageToken (\s a -> s {_dpsrrsNextPageToken = a})

-- | Summaries about each of the portfolio shares.
dpsrrsPortfolioShareDetails :: Lens' DescribePortfolioSharesResponse [PortfolioShareDetail]
dpsrrsPortfolioShareDetails = lens _dpsrrsPortfolioShareDetails (\s a -> s {_dpsrrsPortfolioShareDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
dpsrrsResponseStatus :: Lens' DescribePortfolioSharesResponse Int
dpsrrsResponseStatus = lens _dpsrrsResponseStatus (\s a -> s {_dpsrrsResponseStatus = a})

instance NFData DescribePortfolioSharesResponse
