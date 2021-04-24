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
-- Module      : Network.AWS.SageMaker.ListAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the associations in your account and their properties.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListAssociations
  ( -- * Creating a Request
    listAssociations,
    ListAssociations,

    -- * Request Lenses
    llCreatedAfter,
    llSortOrder,
    llNextToken,
    llDestinationType,
    llCreatedBefore,
    llDestinationARN,
    llMaxResults,
    llSortBy,
    llAssociationType,
    llSourceARN,
    llSourceType,

    -- * Destructuring the Response
    listAssociationsResponse,
    ListAssociationsResponse,

    -- * Response Lenses
    lisirsNextToken,
    lisirsAssociationSummaries,
    lisirsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listAssociations' smart constructor.
data ListAssociations = ListAssociations'
  { _llCreatedAfter ::
      !(Maybe POSIX),
    _llSortOrder :: !(Maybe SortOrder),
    _llNextToken :: !(Maybe Text),
    _llDestinationType :: !(Maybe Text),
    _llCreatedBefore :: !(Maybe POSIX),
    _llDestinationARN :: !(Maybe Text),
    _llMaxResults :: !(Maybe Nat),
    _llSortBy ::
      !(Maybe SortAssociationsBy),
    _llAssociationType ::
      !(Maybe AssociationEdgeType),
    _llSourceARN :: !(Maybe Text),
    _llSourceType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llCreatedAfter' - A filter that returns only associations created on or after the specified time.
--
-- * 'llSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'llNextToken' - If the previous call to @ListAssociations@ didn't return the full set of associations, the call returns a token for getting the next set of associations.
--
-- * 'llDestinationType' - A filter that returns only associations with the specified destination type.
--
-- * 'llCreatedBefore' - A filter that returns only associations created on or before the specified time.
--
-- * 'llDestinationARN' - A filter that returns only associations with the specified destination Amazon Resource Name (ARN).
--
-- * 'llMaxResults' - The maximum number of associations to return in the response. The default value is 10.
--
-- * 'llSortBy' - The property used to sort results. The default value is @CreationTime@ .
--
-- * 'llAssociationType' - A filter that returns only associations of the specified type.
--
-- * 'llSourceARN' - A filter that returns only associations with the specified source ARN.
--
-- * 'llSourceType' - A filter that returns only associations with the specified source type.
listAssociations ::
  ListAssociations
listAssociations =
  ListAssociations'
    { _llCreatedAfter = Nothing,
      _llSortOrder = Nothing,
      _llNextToken = Nothing,
      _llDestinationType = Nothing,
      _llCreatedBefore = Nothing,
      _llDestinationARN = Nothing,
      _llMaxResults = Nothing,
      _llSortBy = Nothing,
      _llAssociationType = Nothing,
      _llSourceARN = Nothing,
      _llSourceType = Nothing
    }

-- | A filter that returns only associations created on or after the specified time.
llCreatedAfter :: Lens' ListAssociations (Maybe UTCTime)
llCreatedAfter = lens _llCreatedAfter (\s a -> s {_llCreatedAfter = a}) . mapping _Time

-- | The sort order. The default value is @Descending@ .
llSortOrder :: Lens' ListAssociations (Maybe SortOrder)
llSortOrder = lens _llSortOrder (\s a -> s {_llSortOrder = a})

-- | If the previous call to @ListAssociations@ didn't return the full set of associations, the call returns a token for getting the next set of associations.
llNextToken :: Lens' ListAssociations (Maybe Text)
llNextToken = lens _llNextToken (\s a -> s {_llNextToken = a})

-- | A filter that returns only associations with the specified destination type.
llDestinationType :: Lens' ListAssociations (Maybe Text)
llDestinationType = lens _llDestinationType (\s a -> s {_llDestinationType = a})

-- | A filter that returns only associations created on or before the specified time.
llCreatedBefore :: Lens' ListAssociations (Maybe UTCTime)
llCreatedBefore = lens _llCreatedBefore (\s a -> s {_llCreatedBefore = a}) . mapping _Time

-- | A filter that returns only associations with the specified destination Amazon Resource Name (ARN).
llDestinationARN :: Lens' ListAssociations (Maybe Text)
llDestinationARN = lens _llDestinationARN (\s a -> s {_llDestinationARN = a})

-- | The maximum number of associations to return in the response. The default value is 10.
llMaxResults :: Lens' ListAssociations (Maybe Natural)
llMaxResults = lens _llMaxResults (\s a -> s {_llMaxResults = a}) . mapping _Nat

-- | The property used to sort results. The default value is @CreationTime@ .
llSortBy :: Lens' ListAssociations (Maybe SortAssociationsBy)
llSortBy = lens _llSortBy (\s a -> s {_llSortBy = a})

-- | A filter that returns only associations of the specified type.
llAssociationType :: Lens' ListAssociations (Maybe AssociationEdgeType)
llAssociationType = lens _llAssociationType (\s a -> s {_llAssociationType = a})

-- | A filter that returns only associations with the specified source ARN.
llSourceARN :: Lens' ListAssociations (Maybe Text)
llSourceARN = lens _llSourceARN (\s a -> s {_llSourceARN = a})

-- | A filter that returns only associations with the specified source type.
llSourceType :: Lens' ListAssociations (Maybe Text)
llSourceType = lens _llSourceType (\s a -> s {_llSourceType = a})

instance AWSPager ListAssociations where
  page rq rs
    | stop (rs ^. lisirsNextToken) = Nothing
    | stop (rs ^. lisirsAssociationSummaries) = Nothing
    | otherwise =
      Just $ rq & llNextToken .~ rs ^. lisirsNextToken

instance AWSRequest ListAssociations where
  type Rs ListAssociations = ListAssociationsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListAssociationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AssociationSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAssociations

instance NFData ListAssociations

instance ToHeaders ListAssociations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListAssociations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssociations where
  toJSON ListAssociations' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _llCreatedAfter,
            ("SortOrder" .=) <$> _llSortOrder,
            ("NextToken" .=) <$> _llNextToken,
            ("DestinationType" .=) <$> _llDestinationType,
            ("CreatedBefore" .=) <$> _llCreatedBefore,
            ("DestinationArn" .=) <$> _llDestinationARN,
            ("MaxResults" .=) <$> _llMaxResults,
            ("SortBy" .=) <$> _llSortBy,
            ("AssociationType" .=) <$> _llAssociationType,
            ("SourceArn" .=) <$> _llSourceARN,
            ("SourceType" .=) <$> _llSourceType
          ]
      )

instance ToPath ListAssociations where
  toPath = const "/"

instance ToQuery ListAssociations where
  toQuery = const mempty

-- | /See:/ 'listAssociationsResponse' smart constructor.
data ListAssociationsResponse = ListAssociationsResponse'
  { _lisirsNextToken ::
      !(Maybe Text),
    _lisirsAssociationSummaries ::
      !( Maybe
           [AssociationSummary]
       ),
    _lisirsResponseStatus ::
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
-- * 'lisirsNextToken' - A token for getting the next set of associations, if there are any.
--
-- * 'lisirsAssociationSummaries' - A list of associations and their properties.
--
-- * 'lisirsResponseStatus' - -- | The response status code.
listAssociationsResponse ::
  -- | 'lisirsResponseStatus'
  Int ->
  ListAssociationsResponse
listAssociationsResponse pResponseStatus_ =
  ListAssociationsResponse'
    { _lisirsNextToken =
        Nothing,
      _lisirsAssociationSummaries = Nothing,
      _lisirsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of associations, if there are any.
lisirsNextToken :: Lens' ListAssociationsResponse (Maybe Text)
lisirsNextToken = lens _lisirsNextToken (\s a -> s {_lisirsNextToken = a})

-- | A list of associations and their properties.
lisirsAssociationSummaries :: Lens' ListAssociationsResponse [AssociationSummary]
lisirsAssociationSummaries = lens _lisirsAssociationSummaries (\s a -> s {_lisirsAssociationSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lisirsResponseStatus :: Lens' ListAssociationsResponse Int
lisirsResponseStatus = lens _lisirsResponseStatus (\s a -> s {_lisirsResponseStatus = a})

instance NFData ListAssociationsResponse
