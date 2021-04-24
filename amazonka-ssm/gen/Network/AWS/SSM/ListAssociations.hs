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
-- Module      : Network.AWS.SSM.ListAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all State Manager associations in the current AWS account and Region. You can limit the results to a specific State Manager association document or instance by specifying a filter.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListAssociations
  ( -- * Creating a Request
    listAssociations,
    ListAssociations,

    -- * Request Lenses
    laNextToken,
    laMaxResults,
    laAssociationFilterList,

    -- * Destructuring the Response
    listAssociationsResponse,
    ListAssociationsResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsAssociations,
    larrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listAssociations' smart constructor.
data ListAssociations = ListAssociations'
  { _laNextToken ::
      !(Maybe Text),
    _laMaxResults :: !(Maybe Nat),
    _laAssociationFilterList ::
      !(Maybe (List1 AssociationFilter))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'laMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'laAssociationFilterList' - One or more filters. Use a filter to return a more specific list of results.
listAssociations ::
  ListAssociations
listAssociations =
  ListAssociations'
    { _laNextToken = Nothing,
      _laMaxResults = Nothing,
      _laAssociationFilterList = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
laNextToken :: Lens' ListAssociations (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
laMaxResults :: Lens' ListAssociations (Maybe Natural)
laMaxResults = lens _laMaxResults (\s a -> s {_laMaxResults = a}) . mapping _Nat

-- | One or more filters. Use a filter to return a more specific list of results.
laAssociationFilterList :: Lens' ListAssociations (Maybe (NonEmpty AssociationFilter))
laAssociationFilterList = lens _laAssociationFilterList (\s a -> s {_laAssociationFilterList = a}) . mapping _List1

instance AWSPager ListAssociations where
  page rq rs
    | stop (rs ^. larrsNextToken) = Nothing
    | stop (rs ^. larrsAssociations) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. larrsNextToken

instance AWSRequest ListAssociations where
  type Rs ListAssociations = ListAssociationsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListAssociationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Associations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAssociations

instance NFData ListAssociations

instance ToHeaders ListAssociations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListAssociations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssociations where
  toJSON ListAssociations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _laNextToken,
            ("MaxResults" .=) <$> _laMaxResults,
            ("AssociationFilterList" .=)
              <$> _laAssociationFilterList
          ]
      )

instance ToPath ListAssociations where
  toPath = const "/"

instance ToQuery ListAssociations where
  toQuery = const mempty

-- | /See:/ 'listAssociationsResponse' smart constructor.
data ListAssociationsResponse = ListAssociationsResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsAssociations ::
      !( Maybe
           [Association]
       ),
    _larrsResponseStatus ::
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

-- | Creates a value of 'ListAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'larrsAssociations' - The associations.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listAssociationsResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListAssociationsResponse
listAssociationsResponse pResponseStatus_ =
  ListAssociationsResponse'
    { _larrsNextToken =
        Nothing,
      _larrsAssociations = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
larrsNextToken :: Lens' ListAssociationsResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | The associations.
larrsAssociations :: Lens' ListAssociationsResponse [Association]
larrsAssociations = lens _larrsAssociations (\s a -> s {_larrsAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListAssociationsResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListAssociationsResponse
