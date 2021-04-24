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
-- Module      : Network.AWS.EC2.GetManagedPrefixListEntries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the entries for a specified managed prefix list.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.GetManagedPrefixListEntries
  ( -- * Creating a Request
    getManagedPrefixListEntries,
    GetManagedPrefixListEntries,

    -- * Request Lenses
    gmpleNextToken,
    gmpleDryRun,
    gmpleMaxResults,
    gmpleTargetVersion,
    gmplePrefixListId,

    -- * Destructuring the Response
    getManagedPrefixListEntriesResponse,
    GetManagedPrefixListEntriesResponse,

    -- * Response Lenses
    gmplerrsNextToken,
    gmplerrsEntries,
    gmplerrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getManagedPrefixListEntries' smart constructor.
data GetManagedPrefixListEntries = GetManagedPrefixListEntries'
  { _gmpleNextToken ::
      !(Maybe Text),
    _gmpleDryRun ::
      !(Maybe Bool),
    _gmpleMaxResults ::
      !(Maybe Nat),
    _gmpleTargetVersion ::
      !( Maybe
           Integer
       ),
    _gmplePrefixListId ::
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

-- | Creates a value of 'GetManagedPrefixListEntries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmpleNextToken' - The token for the next page of results.
--
-- * 'gmpleDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gmpleMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'gmpleTargetVersion' - The version of the prefix list for which to return the entries. The default is the current version.
--
-- * 'gmplePrefixListId' - The ID of the prefix list.
getManagedPrefixListEntries ::
  -- | 'gmplePrefixListId'
  Text ->
  GetManagedPrefixListEntries
getManagedPrefixListEntries pPrefixListId_ =
  GetManagedPrefixListEntries'
    { _gmpleNextToken =
        Nothing,
      _gmpleDryRun = Nothing,
      _gmpleMaxResults = Nothing,
      _gmpleTargetVersion = Nothing,
      _gmplePrefixListId = pPrefixListId_
    }

-- | The token for the next page of results.
gmpleNextToken :: Lens' GetManagedPrefixListEntries (Maybe Text)
gmpleNextToken = lens _gmpleNextToken (\s a -> s {_gmpleNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gmpleDryRun :: Lens' GetManagedPrefixListEntries (Maybe Bool)
gmpleDryRun = lens _gmpleDryRun (\s a -> s {_gmpleDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
gmpleMaxResults :: Lens' GetManagedPrefixListEntries (Maybe Natural)
gmpleMaxResults = lens _gmpleMaxResults (\s a -> s {_gmpleMaxResults = a}) . mapping _Nat

-- | The version of the prefix list for which to return the entries. The default is the current version.
gmpleTargetVersion :: Lens' GetManagedPrefixListEntries (Maybe Integer)
gmpleTargetVersion = lens _gmpleTargetVersion (\s a -> s {_gmpleTargetVersion = a})

-- | The ID of the prefix list.
gmplePrefixListId :: Lens' GetManagedPrefixListEntries Text
gmplePrefixListId = lens _gmplePrefixListId (\s a -> s {_gmplePrefixListId = a})

instance AWSPager GetManagedPrefixListEntries where
  page rq rs
    | stop (rs ^. gmplerrsNextToken) = Nothing
    | stop (rs ^. gmplerrsEntries) = Nothing
    | otherwise =
      Just $ rq & gmpleNextToken .~ rs ^. gmplerrsNextToken

instance AWSRequest GetManagedPrefixListEntries where
  type
    Rs GetManagedPrefixListEntries =
      GetManagedPrefixListEntriesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetManagedPrefixListEntriesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "entrySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable GetManagedPrefixListEntries

instance NFData GetManagedPrefixListEntries

instance ToHeaders GetManagedPrefixListEntries where
  toHeaders = const mempty

instance ToPath GetManagedPrefixListEntries where
  toPath = const "/"

instance ToQuery GetManagedPrefixListEntries where
  toQuery GetManagedPrefixListEntries' {..} =
    mconcat
      [ "Action"
          =: ("GetManagedPrefixListEntries" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _gmpleNextToken,
        "DryRun" =: _gmpleDryRun,
        "MaxResults" =: _gmpleMaxResults,
        "TargetVersion" =: _gmpleTargetVersion,
        "PrefixListId" =: _gmplePrefixListId
      ]

-- | /See:/ 'getManagedPrefixListEntriesResponse' smart constructor.
data GetManagedPrefixListEntriesResponse = GetManagedPrefixListEntriesResponse'
  { _gmplerrsNextToken ::
      !( Maybe
           Text
       ),
    _gmplerrsEntries ::
      !( Maybe
           [PrefixListEntry]
       ),
    _gmplerrsResponseStatus ::
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

-- | Creates a value of 'GetManagedPrefixListEntriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmplerrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'gmplerrsEntries' - Information about the prefix list entries.
--
-- * 'gmplerrsResponseStatus' - -- | The response status code.
getManagedPrefixListEntriesResponse ::
  -- | 'gmplerrsResponseStatus'
  Int ->
  GetManagedPrefixListEntriesResponse
getManagedPrefixListEntriesResponse pResponseStatus_ =
  GetManagedPrefixListEntriesResponse'
    { _gmplerrsNextToken =
        Nothing,
      _gmplerrsEntries = Nothing,
      _gmplerrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
gmplerrsNextToken :: Lens' GetManagedPrefixListEntriesResponse (Maybe Text)
gmplerrsNextToken = lens _gmplerrsNextToken (\s a -> s {_gmplerrsNextToken = a})

-- | Information about the prefix list entries.
gmplerrsEntries :: Lens' GetManagedPrefixListEntriesResponse [PrefixListEntry]
gmplerrsEntries = lens _gmplerrsEntries (\s a -> s {_gmplerrsEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
gmplerrsResponseStatus :: Lens' GetManagedPrefixListEntriesResponse Int
gmplerrsResponseStatus = lens _gmplerrsResponseStatus (\s a -> s {_gmplerrsResponseStatus = a})

instance NFData GetManagedPrefixListEntriesResponse
