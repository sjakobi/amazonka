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
-- Module      : Network.AWS.FMS.ListComplianceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of @PolicyComplianceStatus@ objects. Use @PolicyComplianceStatus@ to get a summary of which member accounts are protected by the specified policy.
--
--
--
-- This operation returns paginated results.
module Network.AWS.FMS.ListComplianceStatus
  ( -- * Creating a Request
    listComplianceStatus,
    ListComplianceStatus,

    -- * Request Lenses
    lcsNextToken,
    lcsMaxResults,
    lcsPolicyId,

    -- * Destructuring the Response
    listComplianceStatusResponse,
    ListComplianceStatusResponse,

    -- * Response Lenses
    lcsrrsNextToken,
    lcsrrsPolicyComplianceStatusList,
    lcsrrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listComplianceStatus' smart constructor.
data ListComplianceStatus = ListComplianceStatus'
  { _lcsNextToken ::
      !(Maybe Text),
    _lcsMaxResults ::
      !(Maybe Nat),
    _lcsPolicyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListComplianceStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsNextToken' - If you specify a value for @MaxResults@ and you have more @PolicyComplianceStatus@ objects than the number that you specify for @MaxResults@ , AWS Firewall Manager returns a @NextToken@ value in the response that allows you to list another group of @PolicyComplianceStatus@ objects. For the second and subsequent @ListComplianceStatus@ requests, specify the value of @NextToken@ from the previous response to get information about another batch of @PolicyComplianceStatus@ objects.
--
-- * 'lcsMaxResults' - Specifies the number of @PolicyComplianceStatus@ objects that you want AWS Firewall Manager to return for this request. If you have more @PolicyComplianceStatus@ objects than the number that you specify for @MaxResults@ , the response includes a @NextToken@ value that you can use to get another batch of @PolicyComplianceStatus@ objects.
--
-- * 'lcsPolicyId' - The ID of the AWS Firewall Manager policy that you want the details for.
listComplianceStatus ::
  -- | 'lcsPolicyId'
  Text ->
  ListComplianceStatus
listComplianceStatus pPolicyId_ =
  ListComplianceStatus'
    { _lcsNextToken = Nothing,
      _lcsMaxResults = Nothing,
      _lcsPolicyId = pPolicyId_
    }

-- | If you specify a value for @MaxResults@ and you have more @PolicyComplianceStatus@ objects than the number that you specify for @MaxResults@ , AWS Firewall Manager returns a @NextToken@ value in the response that allows you to list another group of @PolicyComplianceStatus@ objects. For the second and subsequent @ListComplianceStatus@ requests, specify the value of @NextToken@ from the previous response to get information about another batch of @PolicyComplianceStatus@ objects.
lcsNextToken :: Lens' ListComplianceStatus (Maybe Text)
lcsNextToken = lens _lcsNextToken (\s a -> s {_lcsNextToken = a})

-- | Specifies the number of @PolicyComplianceStatus@ objects that you want AWS Firewall Manager to return for this request. If you have more @PolicyComplianceStatus@ objects than the number that you specify for @MaxResults@ , the response includes a @NextToken@ value that you can use to get another batch of @PolicyComplianceStatus@ objects.
lcsMaxResults :: Lens' ListComplianceStatus (Maybe Natural)
lcsMaxResults = lens _lcsMaxResults (\s a -> s {_lcsMaxResults = a}) . mapping _Nat

-- | The ID of the AWS Firewall Manager policy that you want the details for.
lcsPolicyId :: Lens' ListComplianceStatus Text
lcsPolicyId = lens _lcsPolicyId (\s a -> s {_lcsPolicyId = a})

instance AWSPager ListComplianceStatus where
  page rq rs
    | stop (rs ^. lcsrrsNextToken) = Nothing
    | stop (rs ^. lcsrrsPolicyComplianceStatusList) =
      Nothing
    | otherwise =
      Just $ rq & lcsNextToken .~ rs ^. lcsrrsNextToken

instance AWSRequest ListComplianceStatus where
  type
    Rs ListComplianceStatus =
      ListComplianceStatusResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          ListComplianceStatusResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PolicyComplianceStatusList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListComplianceStatus

instance NFData ListComplianceStatus

instance ToHeaders ListComplianceStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSFMS_20180101.ListComplianceStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListComplianceStatus where
  toJSON ListComplianceStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcsNextToken,
            ("MaxResults" .=) <$> _lcsMaxResults,
            Just ("PolicyId" .= _lcsPolicyId)
          ]
      )

instance ToPath ListComplianceStatus where
  toPath = const "/"

instance ToQuery ListComplianceStatus where
  toQuery = const mempty

-- | /See:/ 'listComplianceStatusResponse' smart constructor.
data ListComplianceStatusResponse = ListComplianceStatusResponse'
  { _lcsrrsNextToken ::
      !(Maybe Text),
    _lcsrrsPolicyComplianceStatusList ::
      !( Maybe
           [PolicyComplianceStatus]
       ),
    _lcsrrsResponseStatus ::
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

-- | Creates a value of 'ListComplianceStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsrrsNextToken' - If you have more @PolicyComplianceStatus@ objects than the number that you specified for @MaxResults@ in the request, the response includes a @NextToken@ value. To list more @PolicyComplianceStatus@ objects, submit another @ListComplianceStatus@ request, and specify the @NextToken@ value from the response in the @NextToken@ value in the next request.
--
-- * 'lcsrrsPolicyComplianceStatusList' - An array of @PolicyComplianceStatus@ objects.
--
-- * 'lcsrrsResponseStatus' - -- | The response status code.
listComplianceStatusResponse ::
  -- | 'lcsrrsResponseStatus'
  Int ->
  ListComplianceStatusResponse
listComplianceStatusResponse pResponseStatus_ =
  ListComplianceStatusResponse'
    { _lcsrrsNextToken =
        Nothing,
      _lcsrrsPolicyComplianceStatusList = Nothing,
      _lcsrrsResponseStatus = pResponseStatus_
    }

-- | If you have more @PolicyComplianceStatus@ objects than the number that you specified for @MaxResults@ in the request, the response includes a @NextToken@ value. To list more @PolicyComplianceStatus@ objects, submit another @ListComplianceStatus@ request, and specify the @NextToken@ value from the response in the @NextToken@ value in the next request.
lcsrrsNextToken :: Lens' ListComplianceStatusResponse (Maybe Text)
lcsrrsNextToken = lens _lcsrrsNextToken (\s a -> s {_lcsrrsNextToken = a})

-- | An array of @PolicyComplianceStatus@ objects.
lcsrrsPolicyComplianceStatusList :: Lens' ListComplianceStatusResponse [PolicyComplianceStatus]
lcsrrsPolicyComplianceStatusList = lens _lcsrrsPolicyComplianceStatusList (\s a -> s {_lcsrrsPolicyComplianceStatusList = a}) . _Default . _Coerce

-- | -- | The response status code.
lcsrrsResponseStatus :: Lens' ListComplianceStatusResponse Int
lcsrrsResponseStatus = lens _lcsrrsResponseStatus (\s a -> s {_lcsrrsResponseStatus = a})

instance NFData ListComplianceStatusResponse
