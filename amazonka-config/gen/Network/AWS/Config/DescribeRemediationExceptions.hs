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
-- Module      : Network.AWS.Config.DescribeRemediationExceptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted. When you specify the limit and the next token, you receive a paginated response.
module Network.AWS.Config.DescribeRemediationExceptions
  ( -- * Creating a Request
    describeRemediationExceptions,
    DescribeRemediationExceptions,

    -- * Request Lenses
    dreNextToken,
    dreResourceKeys,
    dreLimit,
    dreConfigRuleName,

    -- * Destructuring the Response
    describeRemediationExceptionsResponse,
    DescribeRemediationExceptionsResponse,

    -- * Response Lenses
    drerrrsNextToken,
    drerrrsRemediationExceptions,
    drerrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRemediationExceptions' smart constructor.
data DescribeRemediationExceptions = DescribeRemediationExceptions'
  { _dreNextToken ::
      !( Maybe
           Text
       ),
    _dreResourceKeys ::
      !( Maybe
           ( List1
               RemediationExceptionResourceKey
           )
       ),
    _dreLimit ::
      !( Maybe
           Nat
       ),
    _dreConfigRuleName ::
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

-- | Creates a value of 'DescribeRemediationExceptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dreNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'dreResourceKeys' - An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys.
--
-- * 'dreLimit' - The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, AWS Config uses the default.
--
-- * 'dreConfigRuleName' - The name of the AWS Config rule.
describeRemediationExceptions ::
  -- | 'dreConfigRuleName'
  Text ->
  DescribeRemediationExceptions
describeRemediationExceptions pConfigRuleName_ =
  DescribeRemediationExceptions'
    { _dreNextToken =
        Nothing,
      _dreResourceKeys = Nothing,
      _dreLimit = Nothing,
      _dreConfigRuleName = pConfigRuleName_
    }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
dreNextToken :: Lens' DescribeRemediationExceptions (Maybe Text)
dreNextToken = lens _dreNextToken (\s a -> s {_dreNextToken = a})

-- | An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys.
dreResourceKeys :: Lens' DescribeRemediationExceptions (Maybe (NonEmpty RemediationExceptionResourceKey))
dreResourceKeys = lens _dreResourceKeys (\s a -> s {_dreResourceKeys = a}) . mapping _List1

-- | The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, AWS Config uses the default.
dreLimit :: Lens' DescribeRemediationExceptions (Maybe Natural)
dreLimit = lens _dreLimit (\s a -> s {_dreLimit = a}) . mapping _Nat

-- | The name of the AWS Config rule.
dreConfigRuleName :: Lens' DescribeRemediationExceptions Text
dreConfigRuleName = lens _dreConfigRuleName (\s a -> s {_dreConfigRuleName = a})

instance AWSRequest DescribeRemediationExceptions where
  type
    Rs DescribeRemediationExceptions =
      DescribeRemediationExceptionsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeRemediationExceptionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "RemediationExceptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRemediationExceptions

instance NFData DescribeRemediationExceptions

instance ToHeaders DescribeRemediationExceptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeRemediationExceptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRemediationExceptions where
  toJSON DescribeRemediationExceptions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dreNextToken,
            ("ResourceKeys" .=) <$> _dreResourceKeys,
            ("Limit" .=) <$> _dreLimit,
            Just ("ConfigRuleName" .= _dreConfigRuleName)
          ]
      )

instance ToPath DescribeRemediationExceptions where
  toPath = const "/"

instance ToQuery DescribeRemediationExceptions where
  toQuery = const mempty

-- | /See:/ 'describeRemediationExceptionsResponse' smart constructor.
data DescribeRemediationExceptionsResponse = DescribeRemediationExceptionsResponse'
  { _drerrrsNextToken ::
      !( Maybe
           Text
       ),
    _drerrrsRemediationExceptions ::
      !( Maybe
           [RemediationException]
       ),
    _drerrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRemediationExceptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drerrrsNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'drerrrsRemediationExceptions' - Returns a list of remediation exception objects.
--
-- * 'drerrrsResponseStatus' - -- | The response status code.
describeRemediationExceptionsResponse ::
  -- | 'drerrrsResponseStatus'
  Int ->
  DescribeRemediationExceptionsResponse
describeRemediationExceptionsResponse
  pResponseStatus_ =
    DescribeRemediationExceptionsResponse'
      { _drerrrsNextToken =
          Nothing,
        _drerrrsRemediationExceptions =
          Nothing,
        _drerrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
drerrrsNextToken :: Lens' DescribeRemediationExceptionsResponse (Maybe Text)
drerrrsNextToken = lens _drerrrsNextToken (\s a -> s {_drerrrsNextToken = a})

-- | Returns a list of remediation exception objects.
drerrrsRemediationExceptions :: Lens' DescribeRemediationExceptionsResponse [RemediationException]
drerrrsRemediationExceptions = lens _drerrrsRemediationExceptions (\s a -> s {_drerrrsRemediationExceptions = a}) . _Default . _Coerce

-- | -- | The response status code.
drerrrsResponseStatus :: Lens' DescribeRemediationExceptionsResponse Int
drerrrsResponseStatus = lens _drerrrsResponseStatus (\s a -> s {_drerrrsResponseStatus = a})

instance NFData DescribeRemediationExceptionsResponse
