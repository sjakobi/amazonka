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
-- Module      : Network.AWS.WAFRegional.CreateRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @Rule@ , which contains the @IPSet@ objects, @ByteMatchSet@ objects, and other predicates that identify the requests that you want to block. If you add more than one predicate to a @Rule@ , a request must match all of the specifications to be allowed or blocked. For example, suppose that you add the following to a @Rule@ :
--
--
--     * An @IPSet@ that matches the IP address @192.0.2.44/32@
--
--     * A @ByteMatchSet@ that matches @BadBot@ in the @User-Agent@ header
--
--
--
-- You then add the @Rule@ to a @WebACL@ and specify that you want to blocks requests that satisfy the @Rule@ . For a request to be blocked, it must come from the IP address 192.0.2.44 /and/ the @User-Agent@ header in the request must contain the value @BadBot@ .
--
-- To create and configure a @Rule@ , perform the following steps:
--
--     * Create and update the predicates that you want to include in the @Rule@ . For more information, see 'CreateByteMatchSet' , 'CreateIPSet' , and 'CreateSqlInjectionMatchSet' .
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @CreateRule@ request.
--
--     * Submit a @CreateRule@ request.
--
--     * Use @GetChangeToken@ to get the change token that you provide in the @ChangeToken@ parameter of an 'UpdateRule' request.
--
--     * Submit an @UpdateRule@ request to specify the predicates that you want to include in the @Rule@ .
--
--     * Create and update a @WebACL@ that contains the @Rule@ . For more information, see 'CreateWebACL' .
--
--
--
-- For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide> .
module Network.AWS.WAFRegional.CreateRule
  ( -- * Creating a Request
    createRule,
    CreateRule,

    -- * Request Lenses
    crTags,
    crName,
    crMetricName,
    crChangeToken,

    -- * Destructuring the Response
    createRuleResponse,
    CreateRuleResponse,

    -- * Response Lenses
    crrrsRule,
    crrrsChangeToken,
    crrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'createRule' smart constructor.
data CreateRule = CreateRule'
  { _crTags ::
      !(Maybe (List1 Tag)),
    _crName :: !Text,
    _crMetricName :: !Text,
    _crChangeToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crTags' -
--
-- * 'crName' - A friendly name or description of the 'Rule' . You can't change the name of a @Rule@ after you create it.
--
-- * 'crMetricName' - A friendly name or description for the metrics for this @Rule@ . The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the @Rule@ .
--
-- * 'crChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
createRule ::
  -- | 'crName'
  Text ->
  -- | 'crMetricName'
  Text ->
  -- | 'crChangeToken'
  Text ->
  CreateRule
createRule pName_ pMetricName_ pChangeToken_ =
  CreateRule'
    { _crTags = Nothing,
      _crName = pName_,
      _crMetricName = pMetricName_,
      _crChangeToken = pChangeToken_
    }

-- |
crTags :: Lens' CreateRule (Maybe (NonEmpty Tag))
crTags = lens _crTags (\s a -> s {_crTags = a}) . mapping _List1

-- | A friendly name or description of the 'Rule' . You can't change the name of a @Rule@ after you create it.
crName :: Lens' CreateRule Text
crName = lens _crName (\s a -> s {_crName = a})

-- | A friendly name or description for the metrics for this @Rule@ . The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the @Rule@ .
crMetricName :: Lens' CreateRule Text
crMetricName = lens _crMetricName (\s a -> s {_crMetricName = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
crChangeToken :: Lens' CreateRule Text
crChangeToken = lens _crChangeToken (\s a -> s {_crChangeToken = a})

instance AWSRequest CreateRule where
  type Rs CreateRule = CreateRuleResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          CreateRuleResponse'
            <$> (x .?> "Rule")
            <*> (x .?> "ChangeToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateRule

instance NFData CreateRule

instance ToHeaders CreateRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.CreateRule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRule where
  toJSON CreateRule' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _crTags,
            Just ("Name" .= _crName),
            Just ("MetricName" .= _crMetricName),
            Just ("ChangeToken" .= _crChangeToken)
          ]
      )

instance ToPath CreateRule where
  toPath = const "/"

instance ToQuery CreateRule where
  toQuery = const mempty

-- | /See:/ 'createRuleResponse' smart constructor.
data CreateRuleResponse = CreateRuleResponse'
  { _crrrsRule ::
      !(Maybe Rule),
    _crrrsChangeToken ::
      !(Maybe Text),
    _crrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrrsRule' - The 'Rule' returned in the @CreateRule@ response.
--
-- * 'crrrsChangeToken' - The @ChangeToken@ that you used to submit the @CreateRule@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'crrrsResponseStatus' - -- | The response status code.
createRuleResponse ::
  -- | 'crrrsResponseStatus'
  Int ->
  CreateRuleResponse
createRuleResponse pResponseStatus_ =
  CreateRuleResponse'
    { _crrrsRule = Nothing,
      _crrrsChangeToken = Nothing,
      _crrrsResponseStatus = pResponseStatus_
    }

-- | The 'Rule' returned in the @CreateRule@ response.
crrrsRule :: Lens' CreateRuleResponse (Maybe Rule)
crrrsRule = lens _crrrsRule (\s a -> s {_crrrsRule = a})

-- | The @ChangeToken@ that you used to submit the @CreateRule@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
crrrsChangeToken :: Lens' CreateRuleResponse (Maybe Text)
crrrsChangeToken = lens _crrrsChangeToken (\s a -> s {_crrrsChangeToken = a})

-- | -- | The response status code.
crrrsResponseStatus :: Lens' CreateRuleResponse Int
crrrsResponseStatus = lens _crrrsResponseStatus (\s a -> s {_crrrsResponseStatus = a})

instance NFData CreateRuleResponse
