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
-- Module      : Network.AWS.WAFRegional.CreateRegexMatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 'RegexMatchSet' . You then use 'UpdateRegexMatchSet' to identify the part of a web request that you want AWS WAF to inspect, such as the values of the @User-Agent@ header or the query string. For example, you can create a @RegexMatchSet@ that contains a @RegexMatchTuple@ that looks for any requests with @User-Agent@ headers that match a @RegexPatternSet@ with pattern @B[a@]dB[o0]t@ . You can then configure AWS WAF to reject those requests.
--
--
-- To create and configure a @RegexMatchSet@ , perform the following steps:
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @CreateRegexMatchSet@ request.
--
--     * Submit a @CreateRegexMatchSet@ request.
--
--     * Use @GetChangeToken@ to get the change token that you provide in the @ChangeToken@ parameter of an @UpdateRegexMatchSet@ request.
--
--     * Submit an 'UpdateRegexMatchSet' request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value, using a @RegexPatternSet@ , that you want AWS WAF to watch for.
--
--
--
-- For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide> .
module Network.AWS.WAFRegional.CreateRegexMatchSet
  ( -- * Creating a Request
    createRegexMatchSet,
    CreateRegexMatchSet,

    -- * Request Lenses
    crmsName,
    crmsChangeToken,

    -- * Destructuring the Response
    createRegexMatchSetResponse,
    CreateRegexMatchSetResponse,

    -- * Response Lenses
    crmsrrsRegexMatchSet,
    crmsrrsChangeToken,
    crmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'createRegexMatchSet' smart constructor.
data CreateRegexMatchSet = CreateRegexMatchSet'
  { _crmsName ::
      !Text,
    _crmsChangeToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRegexMatchSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crmsName' - A friendly name or description of the 'RegexMatchSet' . You can't change @Name@ after you create a @RegexMatchSet@ .
--
-- * 'crmsChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
createRegexMatchSet ::
  -- | 'crmsName'
  Text ->
  -- | 'crmsChangeToken'
  Text ->
  CreateRegexMatchSet
createRegexMatchSet pName_ pChangeToken_ =
  CreateRegexMatchSet'
    { _crmsName = pName_,
      _crmsChangeToken = pChangeToken_
    }

-- | A friendly name or description of the 'RegexMatchSet' . You can't change @Name@ after you create a @RegexMatchSet@ .
crmsName :: Lens' CreateRegexMatchSet Text
crmsName = lens _crmsName (\s a -> s {_crmsName = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
crmsChangeToken :: Lens' CreateRegexMatchSet Text
crmsChangeToken = lens _crmsChangeToken (\s a -> s {_crmsChangeToken = a})

instance AWSRequest CreateRegexMatchSet where
  type
    Rs CreateRegexMatchSet =
      CreateRegexMatchSetResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          CreateRegexMatchSetResponse'
            <$> (x .?> "RegexMatchSet")
            <*> (x .?> "ChangeToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateRegexMatchSet

instance NFData CreateRegexMatchSet

instance ToHeaders CreateRegexMatchSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.CreateRegexMatchSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRegexMatchSet where
  toJSON CreateRegexMatchSet' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _crmsName),
            Just ("ChangeToken" .= _crmsChangeToken)
          ]
      )

instance ToPath CreateRegexMatchSet where
  toPath = const "/"

instance ToQuery CreateRegexMatchSet where
  toQuery = const mempty

-- | /See:/ 'createRegexMatchSetResponse' smart constructor.
data CreateRegexMatchSetResponse = CreateRegexMatchSetResponse'
  { _crmsrrsRegexMatchSet ::
      !( Maybe
           RegexMatchSet
       ),
    _crmsrrsChangeToken ::
      !(Maybe Text),
    _crmsrrsResponseStatus ::
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

-- | Creates a value of 'CreateRegexMatchSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crmsrrsRegexMatchSet' - A 'RegexMatchSet' that contains no @RegexMatchTuple@ objects.
--
-- * 'crmsrrsChangeToken' - The @ChangeToken@ that you used to submit the @CreateRegexMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'crmsrrsResponseStatus' - -- | The response status code.
createRegexMatchSetResponse ::
  -- | 'crmsrrsResponseStatus'
  Int ->
  CreateRegexMatchSetResponse
createRegexMatchSetResponse pResponseStatus_ =
  CreateRegexMatchSetResponse'
    { _crmsrrsRegexMatchSet =
        Nothing,
      _crmsrrsChangeToken = Nothing,
      _crmsrrsResponseStatus = pResponseStatus_
    }

-- | A 'RegexMatchSet' that contains no @RegexMatchTuple@ objects.
crmsrrsRegexMatchSet :: Lens' CreateRegexMatchSetResponse (Maybe RegexMatchSet)
crmsrrsRegexMatchSet = lens _crmsrrsRegexMatchSet (\s a -> s {_crmsrrsRegexMatchSet = a})

-- | The @ChangeToken@ that you used to submit the @CreateRegexMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
crmsrrsChangeToken :: Lens' CreateRegexMatchSetResponse (Maybe Text)
crmsrrsChangeToken = lens _crmsrrsChangeToken (\s a -> s {_crmsrrsChangeToken = a})

-- | -- | The response status code.
crmsrrsResponseStatus :: Lens' CreateRegexMatchSetResponse Int
crmsrrsResponseStatus = lens _crmsrrsResponseStatus (\s a -> s {_crmsrrsResponseStatus = a})

instance NFData CreateRegexMatchSetResponse
