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
-- Module      : Network.AWS.DeviceFarm.ListInstanceProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all the instance profiles in an AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListInstanceProfiles
  ( -- * Creating a Request
    listInstanceProfiles,
    ListInstanceProfiles,

    -- * Request Lenses
    lipNextToken,
    lipMaxResults,

    -- * Destructuring the Response
    listInstanceProfilesResponse,
    ListInstanceProfilesResponse,

    -- * Response Lenses
    liprrsNextToken,
    liprrsInstanceProfiles,
    liprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInstanceProfiles' smart constructor.
data ListInstanceProfiles = ListInstanceProfiles'
  { _lipNextToken ::
      !(Maybe Text),
    _lipMaxResults ::
      !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInstanceProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lipMaxResults' - An integer that specifies the maximum number of items you want to return in the API response.
listInstanceProfiles ::
  ListInstanceProfiles
listInstanceProfiles =
  ListInstanceProfiles'
    { _lipNextToken = Nothing,
      _lipMaxResults = Nothing
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lipNextToken :: Lens' ListInstanceProfiles (Maybe Text)
lipNextToken = lens _lipNextToken (\s a -> s {_lipNextToken = a})

-- | An integer that specifies the maximum number of items you want to return in the API response.
lipMaxResults :: Lens' ListInstanceProfiles (Maybe Int)
lipMaxResults = lens _lipMaxResults (\s a -> s {_lipMaxResults = a})

instance AWSPager ListInstanceProfiles where
  page rq rs
    | stop (rs ^. liprrsNextToken) = Nothing
    | stop (rs ^. liprrsInstanceProfiles) = Nothing
    | otherwise =
      Just $ rq & lipNextToken .~ rs ^. liprrsNextToken

instance AWSRequest ListInstanceProfiles where
  type
    Rs ListInstanceProfiles =
      ListInstanceProfilesResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListInstanceProfilesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "instanceProfiles" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInstanceProfiles

instance NFData ListInstanceProfiles

instance ToHeaders ListInstanceProfiles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListInstanceProfiles" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListInstanceProfiles where
  toJSON ListInstanceProfiles' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lipNextToken,
            ("maxResults" .=) <$> _lipMaxResults
          ]
      )

instance ToPath ListInstanceProfiles where
  toPath = const "/"

instance ToQuery ListInstanceProfiles where
  toQuery = const mempty

-- | /See:/ 'listInstanceProfilesResponse' smart constructor.
data ListInstanceProfilesResponse = ListInstanceProfilesResponse'
  { _liprrsNextToken ::
      !(Maybe Text),
    _liprrsInstanceProfiles ::
      !( Maybe
           [InstanceProfile]
       ),
    _liprrsResponseStatus ::
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

-- | Creates a value of 'ListInstanceProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liprrsNextToken' - An identifier that can be used in the next call to this operation to return the next set of items in the list.
--
-- * 'liprrsInstanceProfiles' - An object that contains information about your instance profiles.
--
-- * 'liprrsResponseStatus' - -- | The response status code.
listInstanceProfilesResponse ::
  -- | 'liprrsResponseStatus'
  Int ->
  ListInstanceProfilesResponse
listInstanceProfilesResponse pResponseStatus_ =
  ListInstanceProfilesResponse'
    { _liprrsNextToken =
        Nothing,
      _liprrsInstanceProfiles = Nothing,
      _liprrsResponseStatus = pResponseStatus_
    }

-- | An identifier that can be used in the next call to this operation to return the next set of items in the list.
liprrsNextToken :: Lens' ListInstanceProfilesResponse (Maybe Text)
liprrsNextToken = lens _liprrsNextToken (\s a -> s {_liprrsNextToken = a})

-- | An object that contains information about your instance profiles.
liprrsInstanceProfiles :: Lens' ListInstanceProfilesResponse [InstanceProfile]
liprrsInstanceProfiles = lens _liprrsInstanceProfiles (\s a -> s {_liprrsInstanceProfiles = a}) . _Default . _Coerce

-- | -- | The response status code.
liprrsResponseStatus :: Lens' ListInstanceProfilesResponse Int
liprrsResponseStatus = lens _liprrsResponseStatus (\s a -> s {_liprrsResponseStatus = a})

instance NFData ListInstanceProfilesResponse
