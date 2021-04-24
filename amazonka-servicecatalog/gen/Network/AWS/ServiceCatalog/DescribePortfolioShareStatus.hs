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
-- Module      : Network.AWS.ServiceCatalog.DescribePortfolioShareStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of the specified portfolio share operation. This API can only be called by the management account in the organization or by a delegated admin.
module Network.AWS.ServiceCatalog.DescribePortfolioShareStatus
  ( -- * Creating a Request
    describePortfolioShareStatus,
    DescribePortfolioShareStatus,

    -- * Request Lenses
    dpssPortfolioShareToken,

    -- * Destructuring the Response
    describePortfolioShareStatusResponse,
    DescribePortfolioShareStatusResponse,

    -- * Response Lenses
    dpssrrsShareDetails,
    dpssrrsStatus,
    dpssrrsPortfolioId,
    dpssrrsPortfolioShareToken,
    dpssrrsOrganizationNodeValue,
    dpssrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describePortfolioShareStatus' smart constructor.
newtype DescribePortfolioShareStatus = DescribePortfolioShareStatus'
  { _dpssPortfolioShareToken ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePortfolioShareStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpssPortfolioShareToken' - The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.
describePortfolioShareStatus ::
  -- | 'dpssPortfolioShareToken'
  Text ->
  DescribePortfolioShareStatus
describePortfolioShareStatus pPortfolioShareToken_ =
  DescribePortfolioShareStatus'
    { _dpssPortfolioShareToken =
        pPortfolioShareToken_
    }

-- | The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.
dpssPortfolioShareToken :: Lens' DescribePortfolioShareStatus Text
dpssPortfolioShareToken = lens _dpssPortfolioShareToken (\s a -> s {_dpssPortfolioShareToken = a})

instance AWSRequest DescribePortfolioShareStatus where
  type
    Rs DescribePortfolioShareStatus =
      DescribePortfolioShareStatusResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribePortfolioShareStatusResponse'
            <$> (x .?> "ShareDetails")
            <*> (x .?> "Status")
            <*> (x .?> "PortfolioId")
            <*> (x .?> "PortfolioShareToken")
            <*> (x .?> "OrganizationNodeValue")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePortfolioShareStatus

instance NFData DescribePortfolioShareStatus

instance ToHeaders DescribePortfolioShareStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribePortfolioShareStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePortfolioShareStatus where
  toJSON DescribePortfolioShareStatus' {..} =
    object
      ( catMaybes
          [ Just
              ("PortfolioShareToken" .= _dpssPortfolioShareToken)
          ]
      )

instance ToPath DescribePortfolioShareStatus where
  toPath = const "/"

instance ToQuery DescribePortfolioShareStatus where
  toQuery = const mempty

-- | /See:/ 'describePortfolioShareStatusResponse' smart constructor.
data DescribePortfolioShareStatusResponse = DescribePortfolioShareStatusResponse'
  { _dpssrrsShareDetails ::
      !( Maybe
           ShareDetails
       ),
    _dpssrrsStatus ::
      !( Maybe
           ShareStatus
       ),
    _dpssrrsPortfolioId ::
      !( Maybe
           Text
       ),
    _dpssrrsPortfolioShareToken ::
      !( Maybe
           Text
       ),
    _dpssrrsOrganizationNodeValue ::
      !( Maybe
           Text
       ),
    _dpssrrsResponseStatus ::
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

-- | Creates a value of 'DescribePortfolioShareStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpssrrsShareDetails' - Information about the portfolio share operation.
--
-- * 'dpssrrsStatus' - Status of the portfolio share operation.
--
-- * 'dpssrrsPortfolioId' - The portfolio identifier.
--
-- * 'dpssrrsPortfolioShareToken' - The token for the portfolio share operation. For example, @share-6v24abcdefghi@ .
--
-- * 'dpssrrsOrganizationNodeValue' - Organization node identifier. It can be either account id, organizational unit id or organization id.
--
-- * 'dpssrrsResponseStatus' - -- | The response status code.
describePortfolioShareStatusResponse ::
  -- | 'dpssrrsResponseStatus'
  Int ->
  DescribePortfolioShareStatusResponse
describePortfolioShareStatusResponse pResponseStatus_ =
  DescribePortfolioShareStatusResponse'
    { _dpssrrsShareDetails =
        Nothing,
      _dpssrrsStatus = Nothing,
      _dpssrrsPortfolioId = Nothing,
      _dpssrrsPortfolioShareToken = Nothing,
      _dpssrrsOrganizationNodeValue =
        Nothing,
      _dpssrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the portfolio share operation.
dpssrrsShareDetails :: Lens' DescribePortfolioShareStatusResponse (Maybe ShareDetails)
dpssrrsShareDetails = lens _dpssrrsShareDetails (\s a -> s {_dpssrrsShareDetails = a})

-- | Status of the portfolio share operation.
dpssrrsStatus :: Lens' DescribePortfolioShareStatusResponse (Maybe ShareStatus)
dpssrrsStatus = lens _dpssrrsStatus (\s a -> s {_dpssrrsStatus = a})

-- | The portfolio identifier.
dpssrrsPortfolioId :: Lens' DescribePortfolioShareStatusResponse (Maybe Text)
dpssrrsPortfolioId = lens _dpssrrsPortfolioId (\s a -> s {_dpssrrsPortfolioId = a})

-- | The token for the portfolio share operation. For example, @share-6v24abcdefghi@ .
dpssrrsPortfolioShareToken :: Lens' DescribePortfolioShareStatusResponse (Maybe Text)
dpssrrsPortfolioShareToken = lens _dpssrrsPortfolioShareToken (\s a -> s {_dpssrrsPortfolioShareToken = a})

-- | Organization node identifier. It can be either account id, organizational unit id or organization id.
dpssrrsOrganizationNodeValue :: Lens' DescribePortfolioShareStatusResponse (Maybe Text)
dpssrrsOrganizationNodeValue = lens _dpssrrsOrganizationNodeValue (\s a -> s {_dpssrrsOrganizationNodeValue = a})

-- | -- | The response status code.
dpssrrsResponseStatus :: Lens' DescribePortfolioShareStatusResponse Int
dpssrrsResponseStatus = lens _dpssrrsResponseStatus (\s a -> s {_dpssrrsResponseStatus = a})

instance NFData DescribePortfolioShareStatusResponse
