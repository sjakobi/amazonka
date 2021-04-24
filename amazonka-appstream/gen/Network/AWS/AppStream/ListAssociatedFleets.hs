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
-- Module      : Network.AWS.AppStream.ListAssociatedFleets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the name of the fleet that is associated with the specified stack.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.ListAssociatedFleets
  ( -- * Creating a Request
    listAssociatedFleets,
    ListAssociatedFleets,

    -- * Request Lenses
    lafNextToken,
    lafStackName,

    -- * Destructuring the Response
    listAssociatedFleetsResponse,
    ListAssociatedFleetsResponse,

    -- * Response Lenses
    lafrrsNames,
    lafrrsNextToken,
    lafrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAssociatedFleets' smart constructor.
data ListAssociatedFleets = ListAssociatedFleets'
  { _lafNextToken ::
      !(Maybe Text),
    _lafStackName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAssociatedFleets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'lafStackName' - The name of the stack.
listAssociatedFleets ::
  -- | 'lafStackName'
  Text ->
  ListAssociatedFleets
listAssociatedFleets pStackName_ =
  ListAssociatedFleets'
    { _lafNextToken = Nothing,
      _lafStackName = pStackName_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
lafNextToken :: Lens' ListAssociatedFleets (Maybe Text)
lafNextToken = lens _lafNextToken (\s a -> s {_lafNextToken = a})

-- | The name of the stack.
lafStackName :: Lens' ListAssociatedFleets Text
lafStackName = lens _lafStackName (\s a -> s {_lafStackName = a})

instance AWSPager ListAssociatedFleets where
  page rq rs
    | stop (rs ^. lafrrsNextToken) = Nothing
    | stop (rs ^. lafrrsNames) = Nothing
    | otherwise =
      Just $ rq & lafNextToken .~ rs ^. lafrrsNextToken

instance AWSRequest ListAssociatedFleets where
  type
    Rs ListAssociatedFleets =
      ListAssociatedFleetsResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          ListAssociatedFleetsResponse'
            <$> (x .?> "Names" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAssociatedFleets

instance NFData ListAssociatedFleets

instance ToHeaders ListAssociatedFleets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.ListAssociatedFleets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssociatedFleets where
  toJSON ListAssociatedFleets' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lafNextToken,
            Just ("StackName" .= _lafStackName)
          ]
      )

instance ToPath ListAssociatedFleets where
  toPath = const "/"

instance ToQuery ListAssociatedFleets where
  toQuery = const mempty

-- | /See:/ 'listAssociatedFleetsResponse' smart constructor.
data ListAssociatedFleetsResponse = ListAssociatedFleetsResponse'
  { _lafrrsNames ::
      !( Maybe
           [Text]
       ),
    _lafrrsNextToken ::
      !(Maybe Text),
    _lafrrsResponseStatus ::
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

-- | Creates a value of 'ListAssociatedFleetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafrrsNames' - The name of the fleet.
--
-- * 'lafrrsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'lafrrsResponseStatus' - -- | The response status code.
listAssociatedFleetsResponse ::
  -- | 'lafrrsResponseStatus'
  Int ->
  ListAssociatedFleetsResponse
listAssociatedFleetsResponse pResponseStatus_ =
  ListAssociatedFleetsResponse'
    { _lafrrsNames =
        Nothing,
      _lafrrsNextToken = Nothing,
      _lafrrsResponseStatus = pResponseStatus_
    }

-- | The name of the fleet.
lafrrsNames :: Lens' ListAssociatedFleetsResponse [Text]
lafrrsNames = lens _lafrrsNames (\s a -> s {_lafrrsNames = a}) . _Default . _Coerce

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
lafrrsNextToken :: Lens' ListAssociatedFleetsResponse (Maybe Text)
lafrrsNextToken = lens _lafrrsNextToken (\s a -> s {_lafrrsNextToken = a})

-- | -- | The response status code.
lafrrsResponseStatus :: Lens' ListAssociatedFleetsResponse Int
lafrrsResponseStatus = lens _lafrrsResponseStatus (\s a -> s {_lafrrsResponseStatus = a})

instance NFData ListAssociatedFleetsResponse
