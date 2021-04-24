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
-- Module      : Network.AWS.Config.GetComplianceDetailsByResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.GetComplianceDetailsByResource
  ( -- * Creating a Request
    getComplianceDetailsByResource,
    GetComplianceDetailsByResource,

    -- * Request Lenses
    gcdbrNextToken,
    gcdbrComplianceTypes,
    gcdbrResourceType,
    gcdbrResourceId,

    -- * Destructuring the Response
    getComplianceDetailsByResourceResponse,
    GetComplianceDetailsByResourceResponse,

    -- * Response Lenses
    gcdbrrrsNextToken,
    gcdbrrrsEvaluationResults,
    gcdbrrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'getComplianceDetailsByResource' smart constructor.
data GetComplianceDetailsByResource = GetComplianceDetailsByResource'
  { _gcdbrNextToken ::
      !( Maybe
           Text
       ),
    _gcdbrComplianceTypes ::
      !( Maybe
           [ComplianceType]
       ),
    _gcdbrResourceType ::
      !Text,
    _gcdbrResourceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetComplianceDetailsByResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdbrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gcdbrComplianceTypes' - Filters the results by compliance. The allowed values are @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ .
--
-- * 'gcdbrResourceType' - The type of the AWS resource for which you want compliance information.
--
-- * 'gcdbrResourceId' - The ID of the AWS resource for which you want compliance information.
getComplianceDetailsByResource ::
  -- | 'gcdbrResourceType'
  Text ->
  -- | 'gcdbrResourceId'
  Text ->
  GetComplianceDetailsByResource
getComplianceDetailsByResource
  pResourceType_
  pResourceId_ =
    GetComplianceDetailsByResource'
      { _gcdbrNextToken =
          Nothing,
        _gcdbrComplianceTypes = Nothing,
        _gcdbrResourceType = pResourceType_,
        _gcdbrResourceId = pResourceId_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gcdbrNextToken :: Lens' GetComplianceDetailsByResource (Maybe Text)
gcdbrNextToken = lens _gcdbrNextToken (\s a -> s {_gcdbrNextToken = a})

-- | Filters the results by compliance. The allowed values are @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ .
gcdbrComplianceTypes :: Lens' GetComplianceDetailsByResource [ComplianceType]
gcdbrComplianceTypes = lens _gcdbrComplianceTypes (\s a -> s {_gcdbrComplianceTypes = a}) . _Default . _Coerce

-- | The type of the AWS resource for which you want compliance information.
gcdbrResourceType :: Lens' GetComplianceDetailsByResource Text
gcdbrResourceType = lens _gcdbrResourceType (\s a -> s {_gcdbrResourceType = a})

-- | The ID of the AWS resource for which you want compliance information.
gcdbrResourceId :: Lens' GetComplianceDetailsByResource Text
gcdbrResourceId = lens _gcdbrResourceId (\s a -> s {_gcdbrResourceId = a})

instance AWSPager GetComplianceDetailsByResource where
  page rq rs
    | stop (rs ^. gcdbrrrsNextToken) = Nothing
    | stop (rs ^. gcdbrrrsEvaluationResults) = Nothing
    | otherwise =
      Just $ rq & gcdbrNextToken .~ rs ^. gcdbrrrsNextToken

instance AWSRequest GetComplianceDetailsByResource where
  type
    Rs GetComplianceDetailsByResource =
      GetComplianceDetailsByResourceResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetComplianceDetailsByResourceResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EvaluationResults" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetComplianceDetailsByResource

instance NFData GetComplianceDetailsByResource

instance ToHeaders GetComplianceDetailsByResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetComplianceDetailsByResource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetComplianceDetailsByResource where
  toJSON GetComplianceDetailsByResource' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gcdbrNextToken,
            ("ComplianceTypes" .=) <$> _gcdbrComplianceTypes,
            Just ("ResourceType" .= _gcdbrResourceType),
            Just ("ResourceId" .= _gcdbrResourceId)
          ]
      )

instance ToPath GetComplianceDetailsByResource where
  toPath = const "/"

instance ToQuery GetComplianceDetailsByResource where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'getComplianceDetailsByResourceResponse' smart constructor.
data GetComplianceDetailsByResourceResponse = GetComplianceDetailsByResourceResponse'
  { _gcdbrrrsNextToken ::
      !( Maybe
           Text
       ),
    _gcdbrrrsEvaluationResults ::
      !( Maybe
           [EvaluationResult]
       ),
    _gcdbrrrsResponseStatus ::
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

-- | Creates a value of 'GetComplianceDetailsByResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdbrrrsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'gcdbrrrsEvaluationResults' - Indicates whether the specified AWS resource complies each AWS Config rule.
--
-- * 'gcdbrrrsResponseStatus' - -- | The response status code.
getComplianceDetailsByResourceResponse ::
  -- | 'gcdbrrrsResponseStatus'
  Int ->
  GetComplianceDetailsByResourceResponse
getComplianceDetailsByResourceResponse
  pResponseStatus_ =
    GetComplianceDetailsByResourceResponse'
      { _gcdbrrrsNextToken =
          Nothing,
        _gcdbrrrsEvaluationResults =
          Nothing,
        _gcdbrrrsResponseStatus =
          pResponseStatus_
      }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
gcdbrrrsNextToken :: Lens' GetComplianceDetailsByResourceResponse (Maybe Text)
gcdbrrrsNextToken = lens _gcdbrrrsNextToken (\s a -> s {_gcdbrrrsNextToken = a})

-- | Indicates whether the specified AWS resource complies each AWS Config rule.
gcdbrrrsEvaluationResults :: Lens' GetComplianceDetailsByResourceResponse [EvaluationResult]
gcdbrrrsEvaluationResults = lens _gcdbrrrsEvaluationResults (\s a -> s {_gcdbrrrsEvaluationResults = a}) . _Default . _Coerce

-- | -- | The response status code.
gcdbrrrsResponseStatus :: Lens' GetComplianceDetailsByResourceResponse Int
gcdbrrrsResponseStatus = lens _gcdbrrrsResponseStatus (\s a -> s {_gcdbrrrsResponseStatus = a})

instance
  NFData
    GetComplianceDetailsByResourceResponse
