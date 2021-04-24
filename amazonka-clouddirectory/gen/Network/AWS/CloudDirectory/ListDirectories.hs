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
-- Module      : Network.AWS.CloudDirectory.ListDirectories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists directories created within an account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListDirectories
  ( -- * Creating a Request
    listDirectories,
    ListDirectories,

    -- * Request Lenses
    ldNextToken,
    ldMaxResults,
    ldState,

    -- * Destructuring the Response
    listDirectoriesResponse,
    ListDirectoriesResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsResponseStatus,
    ldrrsDirectories,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDirectories' smart constructor.
data ListDirectories = ListDirectories'
  { _ldNextToken ::
      !(Maybe Text),
    _ldMaxResults :: !(Maybe Nat),
    _ldState :: !(Maybe DirectoryState)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDirectories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - The pagination token.
--
-- * 'ldMaxResults' - The maximum number of results to retrieve.
--
-- * 'ldState' - The state of the directories in the list. Can be either Enabled, Disabled, or Deleted.
listDirectories ::
  ListDirectories
listDirectories =
  ListDirectories'
    { _ldNextToken = Nothing,
      _ldMaxResults = Nothing,
      _ldState = Nothing
    }

-- | The pagination token.
ldNextToken :: Lens' ListDirectories (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | The maximum number of results to retrieve.
ldMaxResults :: Lens' ListDirectories (Maybe Natural)
ldMaxResults = lens _ldMaxResults (\s a -> s {_ldMaxResults = a}) . mapping _Nat

-- | The state of the directories in the list. Can be either Enabled, Disabled, or Deleted.
ldState :: Lens' ListDirectories (Maybe DirectoryState)
ldState = lens _ldState (\s a -> s {_ldState = a})

instance AWSPager ListDirectories where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDirectories) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDirectories where
  type Rs ListDirectories = ListDirectoriesResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListDirectoriesResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Directories" .!@ mempty)
      )

instance Hashable ListDirectories

instance NFData ListDirectories

instance ToHeaders ListDirectories where
  toHeaders = const mempty

instance ToJSON ListDirectories where
  toJSON ListDirectories' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldNextToken,
            ("MaxResults" .=) <$> _ldMaxResults,
            ("state" .=) <$> _ldState
          ]
      )

instance ToPath ListDirectories where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/directory/list"

instance ToQuery ListDirectories where
  toQuery = const mempty

-- | /See:/ 'listDirectoriesResponse' smart constructor.
data ListDirectoriesResponse = ListDirectoriesResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsResponseStatus ::
      !Int,
    _ldrrsDirectories ::
      ![Directory]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDirectoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextToken' - The pagination token.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
--
-- * 'ldrrsDirectories' - Lists all directories that are associated with your account in pagination fashion.
listDirectoriesResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDirectoriesResponse
listDirectoriesResponse pResponseStatus_ =
  ListDirectoriesResponse'
    { _ldrrsNextToken = Nothing,
      _ldrrsResponseStatus = pResponseStatus_,
      _ldrrsDirectories = mempty
    }

-- | The pagination token.
ldrrsNextToken :: Lens' ListDirectoriesResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDirectoriesResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

-- | Lists all directories that are associated with your account in pagination fashion.
ldrrsDirectories :: Lens' ListDirectoriesResponse [Directory]
ldrrsDirectories = lens _ldrrsDirectories (\s a -> s {_ldrrsDirectories = a}) . _Coerce

instance NFData ListDirectoriesResponse
