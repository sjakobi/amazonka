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
-- Module      : Network.AWS.CostAndUsageReport.DescribeReportDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the AWS Cost and Usage reports available to this account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CostAndUsageReport.DescribeReportDefinitions
  ( -- * Creating a Request
    describeReportDefinitions,
    DescribeReportDefinitions,

    -- * Request Lenses
    drdNextToken,
    drdMaxResults,

    -- * Destructuring the Response
    describeReportDefinitionsResponse,
    DescribeReportDefinitionsResponse,

    -- * Response Lenses
    drsNextToken,
    drsReportDefinitions,
    drsResponseStatus,
  )
where

import Network.AWS.CostAndUsageReport.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Requests a list of AWS Cost and Usage reports owned by the account.
--
--
--
-- /See:/ 'describeReportDefinitions' smart constructor.
data DescribeReportDefinitions = DescribeReportDefinitions'
  { _drdNextToken ::
      !(Maybe Text),
    _drdMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReportDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdNextToken' - Undocumented member.
--
-- * 'drdMaxResults' - Undocumented member.
describeReportDefinitions ::
  DescribeReportDefinitions
describeReportDefinitions =
  DescribeReportDefinitions'
    { _drdNextToken = Nothing,
      _drdMaxResults = Nothing
    }

-- | Undocumented member.
drdNextToken :: Lens' DescribeReportDefinitions (Maybe Text)
drdNextToken = lens _drdNextToken (\s a -> s {_drdNextToken = a})

-- | Undocumented member.
drdMaxResults :: Lens' DescribeReportDefinitions (Maybe Natural)
drdMaxResults = lens _drdMaxResults (\s a -> s {_drdMaxResults = a}) . mapping _Nat

instance AWSPager DescribeReportDefinitions where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsReportDefinitions) = Nothing
    | otherwise =
      Just $ rq & drdNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeReportDefinitions where
  type
    Rs DescribeReportDefinitions =
      DescribeReportDefinitionsResponse
  request = postJSON costAndUsageReport
  response =
    receiveJSON
      ( \s h x ->
          DescribeReportDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ReportDefinitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReportDefinitions

instance NFData DescribeReportDefinitions

instance ToHeaders DescribeReportDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrigamiServiceGatewayService.DescribeReportDefinitions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeReportDefinitions where
  toJSON DescribeReportDefinitions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _drdNextToken,
            ("MaxResults" .=) <$> _drdMaxResults
          ]
      )

instance ToPath DescribeReportDefinitions where
  toPath = const "/"

instance ToQuery DescribeReportDefinitions where
  toQuery = const mempty

-- | If the action is successful, the service sends back an HTTP 200 response.
--
--
--
-- /See:/ 'describeReportDefinitionsResponse' smart constructor.
data DescribeReportDefinitionsResponse = DescribeReportDefinitionsResponse'
  { _drsNextToken ::
      !( Maybe
           Text
       ),
    _drsReportDefinitions ::
      !( Maybe
           [ReportDefinition]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeReportDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - Undocumented member.
--
-- * 'drsReportDefinitions' - A list of AWS Cost and Usage reports owned by the account.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeReportDefinitionsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeReportDefinitionsResponse
describeReportDefinitionsResponse pResponseStatus_ =
  DescribeReportDefinitionsResponse'
    { _drsNextToken =
        Nothing,
      _drsReportDefinitions = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
drsNextToken :: Lens' DescribeReportDefinitionsResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | A list of AWS Cost and Usage reports owned by the account.
drsReportDefinitions :: Lens' DescribeReportDefinitionsResponse [ReportDefinition]
drsReportDefinitions = lens _drsReportDefinitions (\s a -> s {_drsReportDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeReportDefinitionsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeReportDefinitionsResponse
