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
-- Module      : Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociationProposals
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more association proposals for connection between a virtual private gateway or transit gateway and a Direct Connect gateway.
module Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociationProposals
  ( -- * Creating a Request
    describeDirectConnectGatewayAssociationProposals,
    DescribeDirectConnectGatewayAssociationProposals,

    -- * Request Lenses
    ddcgapsNextToken,
    ddcgapsProposalId,
    ddcgapsMaxResults,
    ddcgapsAssociatedGatewayId,
    ddcgapsDirectConnectGatewayId,

    -- * Destructuring the Response
    describeDirectConnectGatewayAssociationProposalsResponse,
    DescribeDirectConnectGatewayAssociationProposalsResponse,

    -- * Response Lenses
    ddcgaprdrsNextToken,
    ddcgaprdrsDirectConnectGatewayAssociationProposals,
    ddcgaprdrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDirectConnectGatewayAssociationProposals' smart constructor.
data DescribeDirectConnectGatewayAssociationProposals = DescribeDirectConnectGatewayAssociationProposals'
  { _ddcgapsNextToken ::
      !( Maybe
           Text
       ),
    _ddcgapsProposalId ::
      !( Maybe
           Text
       ),
    _ddcgapsMaxResults ::
      !( Maybe
           Int
       ),
    _ddcgapsAssociatedGatewayId ::
      !( Maybe
           Text
       ),
    _ddcgapsDirectConnectGatewayId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDirectConnectGatewayAssociationProposals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgapsNextToken' - The token for the next page of results.
--
-- * 'ddcgapsProposalId' - The ID of the proposal.
--
-- * 'ddcgapsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
--
-- * 'ddcgapsAssociatedGatewayId' - The ID of the associated gateway.
--
-- * 'ddcgapsDirectConnectGatewayId' - The ID of the Direct Connect gateway.
describeDirectConnectGatewayAssociationProposals ::
  DescribeDirectConnectGatewayAssociationProposals
describeDirectConnectGatewayAssociationProposals =
  DescribeDirectConnectGatewayAssociationProposals'
    { _ddcgapsNextToken =
        Nothing,
      _ddcgapsProposalId =
        Nothing,
      _ddcgapsMaxResults =
        Nothing,
      _ddcgapsAssociatedGatewayId =
        Nothing,
      _ddcgapsDirectConnectGatewayId =
        Nothing
    }

-- | The token for the next page of results.
ddcgapsNextToken :: Lens' DescribeDirectConnectGatewayAssociationProposals (Maybe Text)
ddcgapsNextToken = lens _ddcgapsNextToken (\s a -> s {_ddcgapsNextToken = a})

-- | The ID of the proposal.
ddcgapsProposalId :: Lens' DescribeDirectConnectGatewayAssociationProposals (Maybe Text)
ddcgapsProposalId = lens _ddcgapsProposalId (\s a -> s {_ddcgapsProposalId = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
ddcgapsMaxResults :: Lens' DescribeDirectConnectGatewayAssociationProposals (Maybe Int)
ddcgapsMaxResults = lens _ddcgapsMaxResults (\s a -> s {_ddcgapsMaxResults = a})

-- | The ID of the associated gateway.
ddcgapsAssociatedGatewayId :: Lens' DescribeDirectConnectGatewayAssociationProposals (Maybe Text)
ddcgapsAssociatedGatewayId = lens _ddcgapsAssociatedGatewayId (\s a -> s {_ddcgapsAssociatedGatewayId = a})

-- | The ID of the Direct Connect gateway.
ddcgapsDirectConnectGatewayId :: Lens' DescribeDirectConnectGatewayAssociationProposals (Maybe Text)
ddcgapsDirectConnectGatewayId = lens _ddcgapsDirectConnectGatewayId (\s a -> s {_ddcgapsDirectConnectGatewayId = a})

instance
  AWSRequest
    DescribeDirectConnectGatewayAssociationProposals
  where
  type
    Rs
      DescribeDirectConnectGatewayAssociationProposals =
      DescribeDirectConnectGatewayAssociationProposalsResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeDirectConnectGatewayAssociationProposalsResponse'
            <$> (x .?> "nextToken")
              <*> ( x .?> "directConnectGatewayAssociationProposals"
                      .!@ mempty
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeDirectConnectGatewayAssociationProposals

instance
  NFData
    DescribeDirectConnectGatewayAssociationProposals

instance
  ToHeaders
    DescribeDirectConnectGatewayAssociationProposals
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DescribeDirectConnectGatewayAssociationProposals" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeDirectConnectGatewayAssociationProposals
  where
  toJSON
    DescribeDirectConnectGatewayAssociationProposals' {..} =
      object
        ( catMaybes
            [ ("nextToken" .=) <$> _ddcgapsNextToken,
              ("proposalId" .=) <$> _ddcgapsProposalId,
              ("maxResults" .=) <$> _ddcgapsMaxResults,
              ("associatedGatewayId" .=)
                <$> _ddcgapsAssociatedGatewayId,
              ("directConnectGatewayId" .=)
                <$> _ddcgapsDirectConnectGatewayId
            ]
        )

instance
  ToPath
    DescribeDirectConnectGatewayAssociationProposals
  where
  toPath = const "/"

instance
  ToQuery
    DescribeDirectConnectGatewayAssociationProposals
  where
  toQuery = const mempty

-- | /See:/ 'describeDirectConnectGatewayAssociationProposalsResponse' smart constructor.
data DescribeDirectConnectGatewayAssociationProposalsResponse = DescribeDirectConnectGatewayAssociationProposalsResponse'
  { _ddcgaprdrsNextToken ::
      !( Maybe
           Text
       ),
    _ddcgaprdrsDirectConnectGatewayAssociationProposals ::
      !( Maybe
           [DirectConnectGatewayAssociationProposal]
       ),
    _ddcgaprdrsResponseStatus ::
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

-- | Creates a value of 'DescribeDirectConnectGatewayAssociationProposalsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgaprdrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'ddcgaprdrsDirectConnectGatewayAssociationProposals' - Describes the Direct Connect gateway association proposals.
--
-- * 'ddcgaprdrsResponseStatus' - -- | The response status code.
describeDirectConnectGatewayAssociationProposalsResponse ::
  -- | 'ddcgaprdrsResponseStatus'
  Int ->
  DescribeDirectConnectGatewayAssociationProposalsResponse
describeDirectConnectGatewayAssociationProposalsResponse
  pResponseStatus_ =
    DescribeDirectConnectGatewayAssociationProposalsResponse'
      { _ddcgaprdrsNextToken =
          Nothing,
        _ddcgaprdrsDirectConnectGatewayAssociationProposals =
          Nothing,
        _ddcgaprdrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
ddcgaprdrsNextToken :: Lens' DescribeDirectConnectGatewayAssociationProposalsResponse (Maybe Text)
ddcgaprdrsNextToken = lens _ddcgaprdrsNextToken (\s a -> s {_ddcgaprdrsNextToken = a})

-- | Describes the Direct Connect gateway association proposals.
ddcgaprdrsDirectConnectGatewayAssociationProposals :: Lens' DescribeDirectConnectGatewayAssociationProposalsResponse [DirectConnectGatewayAssociationProposal]
ddcgaprdrsDirectConnectGatewayAssociationProposals = lens _ddcgaprdrsDirectConnectGatewayAssociationProposals (\s a -> s {_ddcgaprdrsDirectConnectGatewayAssociationProposals = a}) . _Default . _Coerce

-- | -- | The response status code.
ddcgaprdrsResponseStatus :: Lens' DescribeDirectConnectGatewayAssociationProposalsResponse Int
ddcgaprdrsResponseStatus = lens _ddcgaprdrsResponseStatus (\s a -> s {_ddcgaprdrsResponseStatus = a})

instance
  NFData
    DescribeDirectConnectGatewayAssociationProposalsResponse
