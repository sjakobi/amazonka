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
-- Module      : Network.AWS.WorkSpaces.ListAvailableManagementCidrRanges
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use for the network management interface when you enable Bring Your Own License (BYOL).
--
--
-- This operation can be run only by AWS accounts that are enabled for BYOL. If your account isn't enabled for BYOL, you'll receive an @AccessDeniedException@ error.
--
-- The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
--
--
-- This operation returns paginated results.
module Network.AWS.WorkSpaces.ListAvailableManagementCidrRanges
  ( -- * Creating a Request
    listAvailableManagementCidrRanges,
    ListAvailableManagementCidrRanges,

    -- * Request Lenses
    lamcrNextToken,
    lamcrMaxResults,
    lamcrManagementCidrRangeConstraint,

    -- * Destructuring the Response
    listAvailableManagementCidrRangesResponse,
    ListAvailableManagementCidrRangesResponse,

    -- * Response Lenses
    lamcrrrsNextToken,
    lamcrrrsManagementCidrRanges,
    lamcrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'listAvailableManagementCidrRanges' smart constructor.
data ListAvailableManagementCidrRanges = ListAvailableManagementCidrRanges'
  { _lamcrNextToken ::
      !( Maybe
           Text
       ),
    _lamcrMaxResults ::
      !( Maybe
           Nat
       ),
    _lamcrManagementCidrRangeConstraint ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAvailableManagementCidrRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamcrNextToken' - If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
--
-- * 'lamcrMaxResults' - The maximum number of items to return.
--
-- * 'lamcrManagementCidrRangeConstraint' - The IP address range to search. Specify an IP address range that is compatible with your network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).
listAvailableManagementCidrRanges ::
  -- | 'lamcrManagementCidrRangeConstraint'
  Text ->
  ListAvailableManagementCidrRanges
listAvailableManagementCidrRanges
  pManagementCidrRangeConstraint_ =
    ListAvailableManagementCidrRanges'
      { _lamcrNextToken =
          Nothing,
        _lamcrMaxResults = Nothing,
        _lamcrManagementCidrRangeConstraint =
          pManagementCidrRangeConstraint_
      }

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
lamcrNextToken :: Lens' ListAvailableManagementCidrRanges (Maybe Text)
lamcrNextToken = lens _lamcrNextToken (\s a -> s {_lamcrNextToken = a})

-- | The maximum number of items to return.
lamcrMaxResults :: Lens' ListAvailableManagementCidrRanges (Maybe Natural)
lamcrMaxResults = lens _lamcrMaxResults (\s a -> s {_lamcrMaxResults = a}) . mapping _Nat

-- | The IP address range to search. Specify an IP address range that is compatible with your network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).
lamcrManagementCidrRangeConstraint :: Lens' ListAvailableManagementCidrRanges Text
lamcrManagementCidrRangeConstraint = lens _lamcrManagementCidrRangeConstraint (\s a -> s {_lamcrManagementCidrRangeConstraint = a})

instance AWSPager ListAvailableManagementCidrRanges where
  page rq rs
    | stop (rs ^. lamcrrrsNextToken) = Nothing
    | stop (rs ^. lamcrrrsManagementCidrRanges) = Nothing
    | otherwise =
      Just $ rq & lamcrNextToken .~ rs ^. lamcrrrsNextToken

instance AWSRequest ListAvailableManagementCidrRanges where
  type
    Rs ListAvailableManagementCidrRanges =
      ListAvailableManagementCidrRangesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          ListAvailableManagementCidrRangesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ManagementCidrRanges" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAvailableManagementCidrRanges

instance NFData ListAvailableManagementCidrRanges

instance ToHeaders ListAvailableManagementCidrRanges where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.ListAvailableManagementCidrRanges" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAvailableManagementCidrRanges where
  toJSON ListAvailableManagementCidrRanges' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lamcrNextToken,
            ("MaxResults" .=) <$> _lamcrMaxResults,
            Just
              ( "ManagementCidrRangeConstraint"
                  .= _lamcrManagementCidrRangeConstraint
              )
          ]
      )

instance ToPath ListAvailableManagementCidrRanges where
  toPath = const "/"

instance ToQuery ListAvailableManagementCidrRanges where
  toQuery = const mempty

-- | /See:/ 'listAvailableManagementCidrRangesResponse' smart constructor.
data ListAvailableManagementCidrRangesResponse = ListAvailableManagementCidrRangesResponse'
  { _lamcrrrsNextToken ::
      !( Maybe
           Text
       ),
    _lamcrrrsManagementCidrRanges ::
      !( Maybe
           [Text]
       ),
    _lamcrrrsResponseStatus ::
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

-- | Creates a value of 'ListAvailableManagementCidrRangesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamcrrrsNextToken' - The token to use to retrieve the next set of results, or null if no more results are available.
--
-- * 'lamcrrrsManagementCidrRanges' - The list of available IP address ranges, specified as IPv4 CIDR blocks.
--
-- * 'lamcrrrsResponseStatus' - -- | The response status code.
listAvailableManagementCidrRangesResponse ::
  -- | 'lamcrrrsResponseStatus'
  Int ->
  ListAvailableManagementCidrRangesResponse
listAvailableManagementCidrRangesResponse
  pResponseStatus_ =
    ListAvailableManagementCidrRangesResponse'
      { _lamcrrrsNextToken =
          Nothing,
        _lamcrrrsManagementCidrRanges =
          Nothing,
        _lamcrrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next set of results, or null if no more results are available.
lamcrrrsNextToken :: Lens' ListAvailableManagementCidrRangesResponse (Maybe Text)
lamcrrrsNextToken = lens _lamcrrrsNextToken (\s a -> s {_lamcrrrsNextToken = a})

-- | The list of available IP address ranges, specified as IPv4 CIDR blocks.
lamcrrrsManagementCidrRanges :: Lens' ListAvailableManagementCidrRangesResponse [Text]
lamcrrrsManagementCidrRanges = lens _lamcrrrsManagementCidrRanges (\s a -> s {_lamcrrrsManagementCidrRanges = a}) . _Default . _Coerce

-- | -- | The response status code.
lamcrrrsResponseStatus :: Lens' ListAvailableManagementCidrRangesResponse Int
lamcrrrsResponseStatus = lens _lamcrrrsResponseStatus (\s a -> s {_lamcrrrsResponseStatus = a})

instance
  NFData
    ListAvailableManagementCidrRangesResponse
