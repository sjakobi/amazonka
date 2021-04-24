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
-- Module      : Network.AWS.Glue.GetClassifiers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all classifier objects in the Data Catalog.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetClassifiers
  ( -- * Creating a Request
    getClassifiers,
    GetClassifiers,

    -- * Request Lenses
    gcNextToken,
    gcMaxResults,

    -- * Destructuring the Response
    getClassifiersResponse,
    GetClassifiersResponse,

    -- * Response Lenses
    gcrrsNextToken,
    gcrrsClassifiers,
    gcrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getClassifiers' smart constructor.
data GetClassifiers = GetClassifiers'
  { _gcNextToken ::
      !(Maybe Text),
    _gcMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetClassifiers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcNextToken' - An optional continuation token.
--
-- * 'gcMaxResults' - The size of the list to return (optional).
getClassifiers ::
  GetClassifiers
getClassifiers =
  GetClassifiers'
    { _gcNextToken = Nothing,
      _gcMaxResults = Nothing
    }

-- | An optional continuation token.
gcNextToken :: Lens' GetClassifiers (Maybe Text)
gcNextToken = lens _gcNextToken (\s a -> s {_gcNextToken = a})

-- | The size of the list to return (optional).
gcMaxResults :: Lens' GetClassifiers (Maybe Natural)
gcMaxResults = lens _gcMaxResults (\s a -> s {_gcMaxResults = a}) . mapping _Nat

instance AWSPager GetClassifiers where
  page rq rs
    | stop (rs ^. gcrrsNextToken) = Nothing
    | stop (rs ^. gcrrsClassifiers) = Nothing
    | otherwise =
      Just $ rq & gcNextToken .~ rs ^. gcrrsNextToken

instance AWSRequest GetClassifiers where
  type Rs GetClassifiers = GetClassifiersResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetClassifiersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Classifiers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetClassifiers

instance NFData GetClassifiers

instance ToHeaders GetClassifiers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetClassifiers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetClassifiers where
  toJSON GetClassifiers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gcNextToken,
            ("MaxResults" .=) <$> _gcMaxResults
          ]
      )

instance ToPath GetClassifiers where
  toPath = const "/"

instance ToQuery GetClassifiers where
  toQuery = const mempty

-- | /See:/ 'getClassifiersResponse' smart constructor.
data GetClassifiersResponse = GetClassifiersResponse'
  { _gcrrsNextToken ::
      !(Maybe Text),
    _gcrrsClassifiers ::
      !(Maybe [Classifier]),
    _gcrrsResponseStatus ::
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

-- | Creates a value of 'GetClassifiersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrsNextToken' - A continuation token.
--
-- * 'gcrrsClassifiers' - The requested list of classifier objects.
--
-- * 'gcrrsResponseStatus' - -- | The response status code.
getClassifiersResponse ::
  -- | 'gcrrsResponseStatus'
  Int ->
  GetClassifiersResponse
getClassifiersResponse pResponseStatus_ =
  GetClassifiersResponse'
    { _gcrrsNextToken = Nothing,
      _gcrrsClassifiers = Nothing,
      _gcrrsResponseStatus = pResponseStatus_
    }

-- | A continuation token.
gcrrsNextToken :: Lens' GetClassifiersResponse (Maybe Text)
gcrrsNextToken = lens _gcrrsNextToken (\s a -> s {_gcrrsNextToken = a})

-- | The requested list of classifier objects.
gcrrsClassifiers :: Lens' GetClassifiersResponse [Classifier]
gcrrsClassifiers = lens _gcrrsClassifiers (\s a -> s {_gcrrsClassifiers = a}) . _Default . _Coerce

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetClassifiersResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

instance NFData GetClassifiersResponse
