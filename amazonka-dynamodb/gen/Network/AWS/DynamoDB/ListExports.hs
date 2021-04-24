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
-- Module      : Network.AWS.DynamoDB.ListExports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists completed exports within the past 90 days.
module Network.AWS.DynamoDB.ListExports
  ( -- * Creating a Request
    listExports,
    ListExports,

    -- * Request Lenses
    leNextToken,
    leMaxResults,
    leTableARN,

    -- * Destructuring the Response
    listExportsResponse,
    ListExportsResponse,

    -- * Response Lenses
    lerrsNextToken,
    lerrsExportSummaries,
    lerrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listExports' smart constructor.
data ListExports = ListExports'
  { _leNextToken ::
      !(Maybe Text),
    _leMaxResults :: !(Maybe Nat),
    _leTableARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListExports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leNextToken' - An optional string that, if supplied, must be copied from the output of a previous call to @ListExports@ . When provided in this manner, the API fetches the next page of results.
--
-- * 'leMaxResults' - Maximum number of results to return per page.
--
-- * 'leTableARN' - The Amazon Resource Name (ARN) associated with the exported table.
listExports ::
  ListExports
listExports =
  ListExports'
    { _leNextToken = Nothing,
      _leMaxResults = Nothing,
      _leTableARN = Nothing
    }

-- | An optional string that, if supplied, must be copied from the output of a previous call to @ListExports@ . When provided in this manner, the API fetches the next page of results.
leNextToken :: Lens' ListExports (Maybe Text)
leNextToken = lens _leNextToken (\s a -> s {_leNextToken = a})

-- | Maximum number of results to return per page.
leMaxResults :: Lens' ListExports (Maybe Natural)
leMaxResults = lens _leMaxResults (\s a -> s {_leMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) associated with the exported table.
leTableARN :: Lens' ListExports (Maybe Text)
leTableARN = lens _leTableARN (\s a -> s {_leTableARN = a})

instance AWSRequest ListExports where
  type Rs ListExports = ListExportsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          ListExportsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ExportSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListExports

instance NFData ListExports

instance ToHeaders ListExports where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.ListExports" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListExports where
  toJSON ListExports' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _leNextToken,
            ("MaxResults" .=) <$> _leMaxResults,
            ("TableArn" .=) <$> _leTableARN
          ]
      )

instance ToPath ListExports where
  toPath = const "/"

instance ToQuery ListExports where
  toQuery = const mempty

-- | /See:/ 'listExportsResponse' smart constructor.
data ListExportsResponse = ListExportsResponse'
  { _lerrsNextToken ::
      !(Maybe Text),
    _lerrsExportSummaries ::
      !(Maybe [ExportSummary]),
    _lerrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListExportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerrsNextToken' - If this value is returned, there are additional results to be displayed. To retrieve them, call @ListExports@ again, with @NextToken@ set to this value.
--
-- * 'lerrsExportSummaries' - A list of @ExportSummary@ objects.
--
-- * 'lerrsResponseStatus' - -- | The response status code.
listExportsResponse ::
  -- | 'lerrsResponseStatus'
  Int ->
  ListExportsResponse
listExportsResponse pResponseStatus_ =
  ListExportsResponse'
    { _lerrsNextToken = Nothing,
      _lerrsExportSummaries = Nothing,
      _lerrsResponseStatus = pResponseStatus_
    }

-- | If this value is returned, there are additional results to be displayed. To retrieve them, call @ListExports@ again, with @NextToken@ set to this value.
lerrsNextToken :: Lens' ListExportsResponse (Maybe Text)
lerrsNextToken = lens _lerrsNextToken (\s a -> s {_lerrsNextToken = a})

-- | A list of @ExportSummary@ objects.
lerrsExportSummaries :: Lens' ListExportsResponse [ExportSummary]
lerrsExportSummaries = lens _lerrsExportSummaries (\s a -> s {_lerrsExportSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lerrsResponseStatus :: Lens' ListExportsResponse Int
lerrsResponseStatus = lens _lerrsResponseStatus (\s a -> s {_lerrsResponseStatus = a})

instance NFData ListExportsResponse
