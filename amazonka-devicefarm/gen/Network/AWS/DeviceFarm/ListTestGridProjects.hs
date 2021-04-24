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
-- Module      : Network.AWS.DeviceFarm.ListTestGridProjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all Selenium testing projects in your account.
module Network.AWS.DeviceFarm.ListTestGridProjects
  ( -- * Creating a Request
    listTestGridProjects,
    ListTestGridProjects,

    -- * Request Lenses
    ltgpNextToken,
    ltgpMaxResult,

    -- * Destructuring the Response
    listTestGridProjectsResponse,
    ListTestGridProjectsResponse,

    -- * Response Lenses
    ltgprrsNextToken,
    ltgprrsTestGridProjects,
    ltgprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTestGridProjects' smart constructor.
data ListTestGridProjects = ListTestGridProjects'
  { _ltgpNextToken ::
      !(Maybe Text),
    _ltgpMaxResult ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTestGridProjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgpNextToken' - From a response, used to continue a paginated listing.
--
-- * 'ltgpMaxResult' - Return no more than this number of results.
listTestGridProjects ::
  ListTestGridProjects
listTestGridProjects =
  ListTestGridProjects'
    { _ltgpNextToken = Nothing,
      _ltgpMaxResult = Nothing
    }

-- | From a response, used to continue a paginated listing.
ltgpNextToken :: Lens' ListTestGridProjects (Maybe Text)
ltgpNextToken = lens _ltgpNextToken (\s a -> s {_ltgpNextToken = a})

-- | Return no more than this number of results.
ltgpMaxResult :: Lens' ListTestGridProjects (Maybe Natural)
ltgpMaxResult = lens _ltgpMaxResult (\s a -> s {_ltgpMaxResult = a}) . mapping _Nat

instance AWSRequest ListTestGridProjects where
  type
    Rs ListTestGridProjects =
      ListTestGridProjectsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListTestGridProjectsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "testGridProjects" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTestGridProjects

instance NFData ListTestGridProjects

instance ToHeaders ListTestGridProjects where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListTestGridProjects" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTestGridProjects where
  toJSON ListTestGridProjects' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ltgpNextToken,
            ("maxResult" .=) <$> _ltgpMaxResult
          ]
      )

instance ToPath ListTestGridProjects where
  toPath = const "/"

instance ToQuery ListTestGridProjects where
  toQuery = const mempty

-- | /See:/ 'listTestGridProjectsResponse' smart constructor.
data ListTestGridProjectsResponse = ListTestGridProjectsResponse'
  { _ltgprrsNextToken ::
      !(Maybe Text),
    _ltgprrsTestGridProjects ::
      !( Maybe
           [TestGridProject]
       ),
    _ltgprrsResponseStatus ::
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

-- | Creates a value of 'ListTestGridProjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgprrsNextToken' - Used for pagination. Pass into 'ListTestGridProjects' to get more results in a paginated request.
--
-- * 'ltgprrsTestGridProjects' - The list of TestGridProjects, based on a 'ListTestGridProjectsRequest' .
--
-- * 'ltgprrsResponseStatus' - -- | The response status code.
listTestGridProjectsResponse ::
  -- | 'ltgprrsResponseStatus'
  Int ->
  ListTestGridProjectsResponse
listTestGridProjectsResponse pResponseStatus_ =
  ListTestGridProjectsResponse'
    { _ltgprrsNextToken =
        Nothing,
      _ltgprrsTestGridProjects = Nothing,
      _ltgprrsResponseStatus = pResponseStatus_
    }

-- | Used for pagination. Pass into 'ListTestGridProjects' to get more results in a paginated request.
ltgprrsNextToken :: Lens' ListTestGridProjectsResponse (Maybe Text)
ltgprrsNextToken = lens _ltgprrsNextToken (\s a -> s {_ltgprrsNextToken = a})

-- | The list of TestGridProjects, based on a 'ListTestGridProjectsRequest' .
ltgprrsTestGridProjects :: Lens' ListTestGridProjectsResponse [TestGridProject]
ltgprrsTestGridProjects = lens _ltgprrsTestGridProjects (\s a -> s {_ltgprrsTestGridProjects = a}) . _Default . _Coerce

-- | -- | The response status code.
ltgprrsResponseStatus :: Lens' ListTestGridProjectsResponse Int
ltgprrsResponseStatus = lens _ltgprrsResponseStatus (\s a -> s {_ltgprrsResponseStatus = a})

instance NFData ListTestGridProjectsResponse
