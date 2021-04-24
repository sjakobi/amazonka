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
-- Module      : Network.AWS.SageMaker.ListUserProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists user profiles.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListUserProfiles
  ( -- * Creating a Request
    listUserProfiles,
    ListUserProfiles,

    -- * Request Lenses
    lupSortOrder,
    lupNextToken,
    lupUserProfileNameContains,
    lupMaxResults,
    lupDomainIdEquals,
    lupSortBy,

    -- * Destructuring the Response
    listUserProfilesResponse,
    ListUserProfilesResponse,

    -- * Response Lenses
    luprrsNextToken,
    luprrsUserProfiles,
    luprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listUserProfiles' smart constructor.
data ListUserProfiles = ListUserProfiles'
  { _lupSortOrder ::
      !(Maybe SortOrder),
    _lupNextToken :: !(Maybe Text),
    _lupUserProfileNameContains ::
      !(Maybe Text),
    _lupMaxResults :: !(Maybe Nat),
    _lupDomainIdEquals :: !(Maybe Text),
    _lupSortBy ::
      !(Maybe UserProfileSortKey)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUserProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lupSortOrder' - The sort order for the results. The default is Ascending.
--
-- * 'lupNextToken' - If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
--
-- * 'lupUserProfileNameContains' - A parameter by which to filter the results.
--
-- * 'lupMaxResults' - Returns a list up to a specified limit.
--
-- * 'lupDomainIdEquals' - A parameter by which to filter the results.
--
-- * 'lupSortBy' - The parameter by which to sort the results. The default is CreationTime.
listUserProfiles ::
  ListUserProfiles
listUserProfiles =
  ListUserProfiles'
    { _lupSortOrder = Nothing,
      _lupNextToken = Nothing,
      _lupUserProfileNameContains = Nothing,
      _lupMaxResults = Nothing,
      _lupDomainIdEquals = Nothing,
      _lupSortBy = Nothing
    }

-- | The sort order for the results. The default is Ascending.
lupSortOrder :: Lens' ListUserProfiles (Maybe SortOrder)
lupSortOrder = lens _lupSortOrder (\s a -> s {_lupSortOrder = a})

-- | If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
lupNextToken :: Lens' ListUserProfiles (Maybe Text)
lupNextToken = lens _lupNextToken (\s a -> s {_lupNextToken = a})

-- | A parameter by which to filter the results.
lupUserProfileNameContains :: Lens' ListUserProfiles (Maybe Text)
lupUserProfileNameContains = lens _lupUserProfileNameContains (\s a -> s {_lupUserProfileNameContains = a})

-- | Returns a list up to a specified limit.
lupMaxResults :: Lens' ListUserProfiles (Maybe Natural)
lupMaxResults = lens _lupMaxResults (\s a -> s {_lupMaxResults = a}) . mapping _Nat

-- | A parameter by which to filter the results.
lupDomainIdEquals :: Lens' ListUserProfiles (Maybe Text)
lupDomainIdEquals = lens _lupDomainIdEquals (\s a -> s {_lupDomainIdEquals = a})

-- | The parameter by which to sort the results. The default is CreationTime.
lupSortBy :: Lens' ListUserProfiles (Maybe UserProfileSortKey)
lupSortBy = lens _lupSortBy (\s a -> s {_lupSortBy = a})

instance AWSPager ListUserProfiles where
  page rq rs
    | stop (rs ^. luprrsNextToken) = Nothing
    | stop (rs ^. luprrsUserProfiles) = Nothing
    | otherwise =
      Just $ rq & lupNextToken .~ rs ^. luprrsNextToken

instance AWSRequest ListUserProfiles where
  type Rs ListUserProfiles = ListUserProfilesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListUserProfilesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "UserProfiles" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListUserProfiles

instance NFData ListUserProfiles

instance ToHeaders ListUserProfiles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListUserProfiles" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListUserProfiles where
  toJSON ListUserProfiles' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lupSortOrder,
            ("NextToken" .=) <$> _lupNextToken,
            ("UserProfileNameContains" .=)
              <$> _lupUserProfileNameContains,
            ("MaxResults" .=) <$> _lupMaxResults,
            ("DomainIdEquals" .=) <$> _lupDomainIdEquals,
            ("SortBy" .=) <$> _lupSortBy
          ]
      )

instance ToPath ListUserProfiles where
  toPath = const "/"

instance ToQuery ListUserProfiles where
  toQuery = const mempty

-- | /See:/ 'listUserProfilesResponse' smart constructor.
data ListUserProfilesResponse = ListUserProfilesResponse'
  { _luprrsNextToken ::
      !(Maybe Text),
    _luprrsUserProfiles ::
      !( Maybe
           [UserProfileDetails]
       ),
    _luprrsResponseStatus ::
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

-- | Creates a value of 'ListUserProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luprrsNextToken' - If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
--
-- * 'luprrsUserProfiles' - The list of user profiles.
--
-- * 'luprrsResponseStatus' - -- | The response status code.
listUserProfilesResponse ::
  -- | 'luprrsResponseStatus'
  Int ->
  ListUserProfilesResponse
listUserProfilesResponse pResponseStatus_ =
  ListUserProfilesResponse'
    { _luprrsNextToken =
        Nothing,
      _luprrsUserProfiles = Nothing,
      _luprrsResponseStatus = pResponseStatus_
    }

-- | If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
luprrsNextToken :: Lens' ListUserProfilesResponse (Maybe Text)
luprrsNextToken = lens _luprrsNextToken (\s a -> s {_luprrsNextToken = a})

-- | The list of user profiles.
luprrsUserProfiles :: Lens' ListUserProfilesResponse [UserProfileDetails]
luprrsUserProfiles = lens _luprrsUserProfiles (\s a -> s {_luprrsUserProfiles = a}) . _Default . _Coerce

-- | -- | The response status code.
luprrsResponseStatus :: Lens' ListUserProfilesResponse Int
luprrsResponseStatus = lens _luprrsResponseStatus (\s a -> s {_luprrsResponseStatus = a})

instance NFData ListUserProfilesResponse
