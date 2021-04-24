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
-- Module      : Network.AWS.CodePipeline.ListActionTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a summary of all AWS CodePipeline action types associated with your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodePipeline.ListActionTypes
  ( -- * Creating a Request
    listActionTypes,
    ListActionTypes,

    -- * Request Lenses
    latNextToken,
    latRegionFilter,
    latActionOwnerFilter,

    -- * Destructuring the Response
    listActionTypesResponse,
    ListActionTypesResponse,

    -- * Response Lenses
    latrrsNextToken,
    latrrsResponseStatus,
    latrrsActionTypes,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListActionTypes@ action.
--
--
--
-- /See:/ 'listActionTypes' smart constructor.
data ListActionTypes = ListActionTypes'
  { _latNextToken ::
      !(Maybe Text),
    _latRegionFilter :: !(Maybe Text),
    _latActionOwnerFilter ::
      !(Maybe ActionOwner)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListActionTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'latNextToken' - An identifier that was returned from the previous list action types call, which can be used to return the next set of action types in the list.
--
-- * 'latRegionFilter' - The Region to filter on for the list of action types.
--
-- * 'latActionOwnerFilter' - Filters the list of action types to those created by a specified entity.
listActionTypes ::
  ListActionTypes
listActionTypes =
  ListActionTypes'
    { _latNextToken = Nothing,
      _latRegionFilter = Nothing,
      _latActionOwnerFilter = Nothing
    }

-- | An identifier that was returned from the previous list action types call, which can be used to return the next set of action types in the list.
latNextToken :: Lens' ListActionTypes (Maybe Text)
latNextToken = lens _latNextToken (\s a -> s {_latNextToken = a})

-- | The Region to filter on for the list of action types.
latRegionFilter :: Lens' ListActionTypes (Maybe Text)
latRegionFilter = lens _latRegionFilter (\s a -> s {_latRegionFilter = a})

-- | Filters the list of action types to those created by a specified entity.
latActionOwnerFilter :: Lens' ListActionTypes (Maybe ActionOwner)
latActionOwnerFilter = lens _latActionOwnerFilter (\s a -> s {_latActionOwnerFilter = a})

instance AWSPager ListActionTypes where
  page rq rs
    | stop (rs ^. latrrsNextToken) = Nothing
    | stop (rs ^. latrrsActionTypes) = Nothing
    | otherwise =
      Just $ rq & latNextToken .~ rs ^. latrrsNextToken

instance AWSRequest ListActionTypes where
  type Rs ListActionTypes = ListActionTypesResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          ListActionTypesResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "actionTypes" .!@ mempty)
      )

instance Hashable ListActionTypes

instance NFData ListActionTypes

instance ToHeaders ListActionTypes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.ListActionTypes" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListActionTypes where
  toJSON ListActionTypes' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _latNextToken,
            ("regionFilter" .=) <$> _latRegionFilter,
            ("actionOwnerFilter" .=) <$> _latActionOwnerFilter
          ]
      )

instance ToPath ListActionTypes where
  toPath = const "/"

instance ToQuery ListActionTypes where
  toQuery = const mempty

-- | Represents the output of a @ListActionTypes@ action.
--
--
--
-- /See:/ 'listActionTypesResponse' smart constructor.
data ListActionTypesResponse = ListActionTypesResponse'
  { _latrrsNextToken ::
      !(Maybe Text),
    _latrrsResponseStatus ::
      !Int,
    _latrrsActionTypes ::
      ![ActionType]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListActionTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'latrrsNextToken' - If the amount of returned information is significantly large, an identifier is also returned. It can be used in a subsequent list action types call to return the next set of action types in the list.
--
-- * 'latrrsResponseStatus' - -- | The response status code.
--
-- * 'latrrsActionTypes' - Provides details of the action types.
listActionTypesResponse ::
  -- | 'latrrsResponseStatus'
  Int ->
  ListActionTypesResponse
listActionTypesResponse pResponseStatus_ =
  ListActionTypesResponse'
    { _latrrsNextToken =
        Nothing,
      _latrrsResponseStatus = pResponseStatus_,
      _latrrsActionTypes = mempty
    }

-- | If the amount of returned information is significantly large, an identifier is also returned. It can be used in a subsequent list action types call to return the next set of action types in the list.
latrrsNextToken :: Lens' ListActionTypesResponse (Maybe Text)
latrrsNextToken = lens _latrrsNextToken (\s a -> s {_latrrsNextToken = a})

-- | -- | The response status code.
latrrsResponseStatus :: Lens' ListActionTypesResponse Int
latrrsResponseStatus = lens _latrrsResponseStatus (\s a -> s {_latrrsResponseStatus = a})

-- | Provides details of the action types.
latrrsActionTypes :: Lens' ListActionTypesResponse [ActionType]
latrrsActionTypes = lens _latrrsActionTypes (\s a -> s {_latrrsActionTypes = a}) . _Coerce

instance NFData ListActionTypesResponse
