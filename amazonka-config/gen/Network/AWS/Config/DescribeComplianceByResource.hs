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
-- Module      : Network.AWS.Config.DescribeComplianceByResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with.
--
--
-- A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.
--
-- If AWS Config has no current evaluation results for the resource, it returns @INSUFFICIENT_DATA@ . This result might indicate one of the following conditions about the rules that evaluate the resource:
--
--     * AWS Config has never invoked an evaluation for the rule. To check whether it has, use the @DescribeConfigRuleEvaluationStatus@ action to get the @LastSuccessfulInvocationTime@ and @LastFailedInvocationTime@ .
--
--     * The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the @config:PutEvaluations@ permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the @config:PutEvaluations@ permission.
--
--     * The rule's AWS Lambda function has returned @NOT_APPLICABLE@ for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeComplianceByResource
  ( -- * Creating a Request
    describeComplianceByResource,
    DescribeComplianceByResource,

    -- * Request Lenses
    dcbrResourceId,
    dcbrNextToken,
    dcbrComplianceTypes,
    dcbrResourceType,
    dcbrLimit,

    -- * Destructuring the Response
    describeComplianceByResourceResponse,
    DescribeComplianceByResourceResponse,

    -- * Response Lenses
    dcbrrrsNextToken,
    dcbrrrsComplianceByResources,
    dcbrrrsResponseStatus,
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
-- /See:/ 'describeComplianceByResource' smart constructor.
data DescribeComplianceByResource = DescribeComplianceByResource'
  { _dcbrResourceId ::
      !(Maybe Text),
    _dcbrNextToken ::
      !(Maybe Text),
    _dcbrComplianceTypes ::
      !( Maybe
           [ComplianceType]
       ),
    _dcbrResourceType ::
      !(Maybe Text),
    _dcbrLimit ::
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

-- | Creates a value of 'DescribeComplianceByResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrResourceId' - The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for @ResourceType@ .
--
-- * 'dcbrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcbrComplianceTypes' - Filters the results by compliance. The allowed values are @COMPLIANT@ , @NON_COMPLIANT@ , and @INSUFFICIENT_DATA@ .
--
-- * 'dcbrResourceType' - The types of AWS resources for which you want compliance information (for example, @AWS::EC2::Instance@ ). For this action, you can specify that the resource type is an AWS account by specifying @AWS::::Account@ .
--
-- * 'dcbrLimit' - The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
describeComplianceByResource ::
  DescribeComplianceByResource
describeComplianceByResource =
  DescribeComplianceByResource'
    { _dcbrResourceId =
        Nothing,
      _dcbrNextToken = Nothing,
      _dcbrComplianceTypes = Nothing,
      _dcbrResourceType = Nothing,
      _dcbrLimit = Nothing
    }

-- | The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for @ResourceType@ .
dcbrResourceId :: Lens' DescribeComplianceByResource (Maybe Text)
dcbrResourceId = lens _dcbrResourceId (\s a -> s {_dcbrResourceId = a})

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcbrNextToken :: Lens' DescribeComplianceByResource (Maybe Text)
dcbrNextToken = lens _dcbrNextToken (\s a -> s {_dcbrNextToken = a})

-- | Filters the results by compliance. The allowed values are @COMPLIANT@ , @NON_COMPLIANT@ , and @INSUFFICIENT_DATA@ .
dcbrComplianceTypes :: Lens' DescribeComplianceByResource [ComplianceType]
dcbrComplianceTypes = lens _dcbrComplianceTypes (\s a -> s {_dcbrComplianceTypes = a}) . _Default . _Coerce

-- | The types of AWS resources for which you want compliance information (for example, @AWS::EC2::Instance@ ). For this action, you can specify that the resource type is an AWS account by specifying @AWS::::Account@ .
dcbrResourceType :: Lens' DescribeComplianceByResource (Maybe Text)
dcbrResourceType = lens _dcbrResourceType (\s a -> s {_dcbrResourceType = a})

-- | The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
dcbrLimit :: Lens' DescribeComplianceByResource (Maybe Natural)
dcbrLimit = lens _dcbrLimit (\s a -> s {_dcbrLimit = a}) . mapping _Nat

instance AWSPager DescribeComplianceByResource where
  page rq rs
    | stop (rs ^. dcbrrrsNextToken) = Nothing
    | stop (rs ^. dcbrrrsComplianceByResources) = Nothing
    | otherwise =
      Just $ rq & dcbrNextToken .~ rs ^. dcbrrrsNextToken

instance AWSRequest DescribeComplianceByResource where
  type
    Rs DescribeComplianceByResource =
      DescribeComplianceByResourceResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeComplianceByResourceResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ComplianceByResources" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeComplianceByResource

instance NFData DescribeComplianceByResource

instance ToHeaders DescribeComplianceByResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeComplianceByResource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeComplianceByResource where
  toJSON DescribeComplianceByResource' {..} =
    object
      ( catMaybes
          [ ("ResourceId" .=) <$> _dcbrResourceId,
            ("NextToken" .=) <$> _dcbrNextToken,
            ("ComplianceTypes" .=) <$> _dcbrComplianceTypes,
            ("ResourceType" .=) <$> _dcbrResourceType,
            ("Limit" .=) <$> _dcbrLimit
          ]
      )

instance ToPath DescribeComplianceByResource where
  toPath = const "/"

instance ToQuery DescribeComplianceByResource where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeComplianceByResourceResponse' smart constructor.
data DescribeComplianceByResourceResponse = DescribeComplianceByResourceResponse'
  { _dcbrrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcbrrrsComplianceByResources ::
      !( Maybe
           [ComplianceByResource]
       ),
    _dcbrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeComplianceByResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrrrsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'dcbrrrsComplianceByResources' - Indicates whether the specified AWS resource complies with all of the AWS Config rules that evaluate it.
--
-- * 'dcbrrrsResponseStatus' - -- | The response status code.
describeComplianceByResourceResponse ::
  -- | 'dcbrrrsResponseStatus'
  Int ->
  DescribeComplianceByResourceResponse
describeComplianceByResourceResponse pResponseStatus_ =
  DescribeComplianceByResourceResponse'
    { _dcbrrrsNextToken =
        Nothing,
      _dcbrrrsComplianceByResources =
        Nothing,
      _dcbrrrsResponseStatus =
        pResponseStatus_
    }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
dcbrrrsNextToken :: Lens' DescribeComplianceByResourceResponse (Maybe Text)
dcbrrrsNextToken = lens _dcbrrrsNextToken (\s a -> s {_dcbrrrsNextToken = a})

-- | Indicates whether the specified AWS resource complies with all of the AWS Config rules that evaluate it.
dcbrrrsComplianceByResources :: Lens' DescribeComplianceByResourceResponse [ComplianceByResource]
dcbrrrsComplianceByResources = lens _dcbrrrsComplianceByResources (\s a -> s {_dcbrrrsComplianceByResources = a}) . _Default . _Coerce

-- | -- | The response status code.
dcbrrrsResponseStatus :: Lens' DescribeComplianceByResourceResponse Int
dcbrrrsResponseStatus = lens _dcbrrrsResponseStatus (\s a -> s {_dcbrrrsResponseStatus = a})

instance NFData DescribeComplianceByResourceResponse
