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
-- Module      : Network.AWS.CodeBuild.BatchGetReportGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of report groups.
module Network.AWS.CodeBuild.BatchGetReportGroups
  ( -- * Creating a Request
    batchGetReportGroups,
    BatchGetReportGroups,

    -- * Request Lenses
    bgrgReportGroupARNs,

    -- * Destructuring the Response
    batchGetReportGroupsResponse,
    BatchGetReportGroupsResponse,

    -- * Response Lenses
    bgrgrrsReportGroupsNotFound,
    bgrgrrsReportGroups,
    bgrgrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetReportGroups' smart constructor.
newtype BatchGetReportGroups = BatchGetReportGroups'
  { _bgrgReportGroupARNs ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetReportGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgrgReportGroupARNs' - An array of report group ARNs that identify the report groups to return.
batchGetReportGroups ::
  -- | 'bgrgReportGroupARNs'
  NonEmpty Text ->
  BatchGetReportGroups
batchGetReportGroups pReportGroupARNs_ =
  BatchGetReportGroups'
    { _bgrgReportGroupARNs =
        _List1 # pReportGroupARNs_
    }

-- | An array of report group ARNs that identify the report groups to return.
bgrgReportGroupARNs :: Lens' BatchGetReportGroups (NonEmpty Text)
bgrgReportGroupARNs = lens _bgrgReportGroupARNs (\s a -> s {_bgrgReportGroupARNs = a}) . _List1

instance AWSRequest BatchGetReportGroups where
  type
    Rs BatchGetReportGroups =
      BatchGetReportGroupsResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          BatchGetReportGroupsResponse'
            <$> (x .?> "reportGroupsNotFound")
            <*> (x .?> "reportGroups")
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetReportGroups

instance NFData BatchGetReportGroups

instance ToHeaders BatchGetReportGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.BatchGetReportGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetReportGroups where
  toJSON BatchGetReportGroups' {..} =
    object
      ( catMaybes
          [Just ("reportGroupArns" .= _bgrgReportGroupARNs)]
      )

instance ToPath BatchGetReportGroups where
  toPath = const "/"

instance ToQuery BatchGetReportGroups where
  toQuery = const mempty

-- | /See:/ 'batchGetReportGroupsResponse' smart constructor.
data BatchGetReportGroupsResponse = BatchGetReportGroupsResponse'
  { _bgrgrrsReportGroupsNotFound ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _bgrgrrsReportGroups ::
      !( Maybe
           ( List1
               ReportGroup
           )
       ),
    _bgrgrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetReportGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgrgrrsReportGroupsNotFound' - An array of ARNs passed to @BatchGetReportGroups@ that are not associated with a @ReportGroup@ .
--
-- * 'bgrgrrsReportGroups' - The array of report groups returned by @BatchGetReportGroups@ .
--
-- * 'bgrgrrsResponseStatus' - -- | The response status code.
batchGetReportGroupsResponse ::
  -- | 'bgrgrrsResponseStatus'
  Int ->
  BatchGetReportGroupsResponse
batchGetReportGroupsResponse pResponseStatus_ =
  BatchGetReportGroupsResponse'
    { _bgrgrrsReportGroupsNotFound =
        Nothing,
      _bgrgrrsReportGroups = Nothing,
      _bgrgrrsResponseStatus = pResponseStatus_
    }

-- | An array of ARNs passed to @BatchGetReportGroups@ that are not associated with a @ReportGroup@ .
bgrgrrsReportGroupsNotFound :: Lens' BatchGetReportGroupsResponse (Maybe (NonEmpty Text))
bgrgrrsReportGroupsNotFound = lens _bgrgrrsReportGroupsNotFound (\s a -> s {_bgrgrrsReportGroupsNotFound = a}) . mapping _List1

-- | The array of report groups returned by @BatchGetReportGroups@ .
bgrgrrsReportGroups :: Lens' BatchGetReportGroupsResponse (Maybe (NonEmpty ReportGroup))
bgrgrrsReportGroups = lens _bgrgrrsReportGroups (\s a -> s {_bgrgrrsReportGroups = a}) . mapping _List1

-- | -- | The response status code.
bgrgrrsResponseStatus :: Lens' BatchGetReportGroupsResponse Int
bgrgrrsResponseStatus = lens _bgrgrrsResponseStatus (\s a -> s {_bgrgrrsResponseStatus = a})

instance NFData BatchGetReportGroupsResponse
