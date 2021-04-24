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
-- Module      : Network.AWS.CodeBuild.BatchGetReports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of reports.
module Network.AWS.CodeBuild.BatchGetReports
  ( -- * Creating a Request
    batchGetReports,
    BatchGetReports,

    -- * Request Lenses
    bgrReportARNs,

    -- * Destructuring the Response
    batchGetReportsResponse,
    BatchGetReportsResponse,

    -- * Response Lenses
    bgrrrsReports,
    bgrrrsReportsNotFound,
    bgrrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetReports' smart constructor.
newtype BatchGetReports = BatchGetReports'
  { _bgrReportARNs ::
      List1 Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgrReportARNs' - An array of ARNs that identify the @Report@ objects to return.
batchGetReports ::
  -- | 'bgrReportARNs'
  NonEmpty Text ->
  BatchGetReports
batchGetReports pReportARNs_ =
  BatchGetReports'
    { _bgrReportARNs =
        _List1 # pReportARNs_
    }

-- | An array of ARNs that identify the @Report@ objects to return.
bgrReportARNs :: Lens' BatchGetReports (NonEmpty Text)
bgrReportARNs = lens _bgrReportARNs (\s a -> s {_bgrReportARNs = a}) . _List1

instance AWSRequest BatchGetReports where
  type Rs BatchGetReports = BatchGetReportsResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          BatchGetReportsResponse'
            <$> (x .?> "reports")
            <*> (x .?> "reportsNotFound")
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetReports

instance NFData BatchGetReports

instance ToHeaders BatchGetReports where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.BatchGetReports" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetReports where
  toJSON BatchGetReports' {..} =
    object
      (catMaybes [Just ("reportArns" .= _bgrReportARNs)])

instance ToPath BatchGetReports where
  toPath = const "/"

instance ToQuery BatchGetReports where
  toQuery = const mempty

-- | /See:/ 'batchGetReportsResponse' smart constructor.
data BatchGetReportsResponse = BatchGetReportsResponse'
  { _bgrrrsReports ::
      !(Maybe (List1 Report)),
    _bgrrrsReportsNotFound ::
      !(Maybe (List1 Text)),
    _bgrrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgrrrsReports' - The array of @Report@ objects returned by @BatchGetReports@ .
--
-- * 'bgrrrsReportsNotFound' - An array of ARNs passed to @BatchGetReportGroups@ that are not associated with a @Report@ .
--
-- * 'bgrrrsResponseStatus' - -- | The response status code.
batchGetReportsResponse ::
  -- | 'bgrrrsResponseStatus'
  Int ->
  BatchGetReportsResponse
batchGetReportsResponse pResponseStatus_ =
  BatchGetReportsResponse'
    { _bgrrrsReports = Nothing,
      _bgrrrsReportsNotFound = Nothing,
      _bgrrrsResponseStatus = pResponseStatus_
    }

-- | The array of @Report@ objects returned by @BatchGetReports@ .
bgrrrsReports :: Lens' BatchGetReportsResponse (Maybe (NonEmpty Report))
bgrrrsReports = lens _bgrrrsReports (\s a -> s {_bgrrrsReports = a}) . mapping _List1

-- | An array of ARNs passed to @BatchGetReportGroups@ that are not associated with a @Report@ .
bgrrrsReportsNotFound :: Lens' BatchGetReportsResponse (Maybe (NonEmpty Text))
bgrrrsReportsNotFound = lens _bgrrrsReportsNotFound (\s a -> s {_bgrrrsReportsNotFound = a}) . mapping _List1

-- | -- | The response status code.
bgrrrsResponseStatus :: Lens' BatchGetReportsResponse Int
bgrrrsResponseStatus = lens _bgrrrsResponseStatus (\s a -> s {_bgrrrsResponseStatus = a})

instance NFData BatchGetReportsResponse
