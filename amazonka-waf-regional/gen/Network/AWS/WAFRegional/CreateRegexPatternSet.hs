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
-- Module      : Network.AWS.WAFRegional.CreateRegexPatternSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @RegexPatternSet@ . You then use 'UpdateRegexPatternSet' to specify the regular expression (regex) pattern that you want AWS WAF to search for, such as @B[a@]dB[o0]t@ . You can then configure AWS WAF to reject those requests.
--
--
-- To create and configure a @RegexPatternSet@ , perform the following steps:
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @CreateRegexPatternSet@ request.
--
--     * Submit a @CreateRegexPatternSet@ request.
--
--     * Use @GetChangeToken@ to get the change token that you provide in the @ChangeToken@ parameter of an @UpdateRegexPatternSet@ request.
--
--     * Submit an 'UpdateRegexPatternSet' request to specify the string that you want AWS WAF to watch for.
--
--
--
-- For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide> .
module Network.AWS.WAFRegional.CreateRegexPatternSet
  ( -- * Creating a Request
    createRegexPatternSet,
    CreateRegexPatternSet,

    -- * Request Lenses
    crpsName,
    crpsChangeToken,

    -- * Destructuring the Response
    createRegexPatternSetResponse,
    CreateRegexPatternSetResponse,

    -- * Response Lenses
    crpsrrsRegexPatternSet,
    crpsrrsChangeToken,
    crpsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'createRegexPatternSet' smart constructor.
data CreateRegexPatternSet = CreateRegexPatternSet'
  { _crpsName ::
      !Text,
    _crpsChangeToken :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateRegexPatternSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crpsName' - A friendly name or description of the 'RegexPatternSet' . You can't change @Name@ after you create a @RegexPatternSet@ .
--
-- * 'crpsChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
createRegexPatternSet ::
  -- | 'crpsName'
  Text ->
  -- | 'crpsChangeToken'
  Text ->
  CreateRegexPatternSet
createRegexPatternSet pName_ pChangeToken_ =
  CreateRegexPatternSet'
    { _crpsName = pName_,
      _crpsChangeToken = pChangeToken_
    }

-- | A friendly name or description of the 'RegexPatternSet' . You can't change @Name@ after you create a @RegexPatternSet@ .
crpsName :: Lens' CreateRegexPatternSet Text
crpsName = lens _crpsName (\s a -> s {_crpsName = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
crpsChangeToken :: Lens' CreateRegexPatternSet Text
crpsChangeToken = lens _crpsChangeToken (\s a -> s {_crpsChangeToken = a})

instance AWSRequest CreateRegexPatternSet where
  type
    Rs CreateRegexPatternSet =
      CreateRegexPatternSetResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          CreateRegexPatternSetResponse'
            <$> (x .?> "RegexPatternSet")
            <*> (x .?> "ChangeToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateRegexPatternSet

instance NFData CreateRegexPatternSet

instance ToHeaders CreateRegexPatternSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.CreateRegexPatternSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRegexPatternSet where
  toJSON CreateRegexPatternSet' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _crpsName),
            Just ("ChangeToken" .= _crpsChangeToken)
          ]
      )

instance ToPath CreateRegexPatternSet where
  toPath = const "/"

instance ToQuery CreateRegexPatternSet where
  toQuery = const mempty

-- | /See:/ 'createRegexPatternSetResponse' smart constructor.
data CreateRegexPatternSetResponse = CreateRegexPatternSetResponse'
  { _crpsrrsRegexPatternSet ::
      !( Maybe
           RegexPatternSet
       ),
    _crpsrrsChangeToken ::
      !( Maybe
           Text
       ),
    _crpsrrsResponseStatus ::
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

-- | Creates a value of 'CreateRegexPatternSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crpsrrsRegexPatternSet' - A 'RegexPatternSet' that contains no objects.
--
-- * 'crpsrrsChangeToken' - The @ChangeToken@ that you used to submit the @CreateRegexPatternSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'crpsrrsResponseStatus' - -- | The response status code.
createRegexPatternSetResponse ::
  -- | 'crpsrrsResponseStatus'
  Int ->
  CreateRegexPatternSetResponse
createRegexPatternSetResponse pResponseStatus_ =
  CreateRegexPatternSetResponse'
    { _crpsrrsRegexPatternSet =
        Nothing,
      _crpsrrsChangeToken = Nothing,
      _crpsrrsResponseStatus = pResponseStatus_
    }

-- | A 'RegexPatternSet' that contains no objects.
crpsrrsRegexPatternSet :: Lens' CreateRegexPatternSetResponse (Maybe RegexPatternSet)
crpsrrsRegexPatternSet = lens _crpsrrsRegexPatternSet (\s a -> s {_crpsrrsRegexPatternSet = a})

-- | The @ChangeToken@ that you used to submit the @CreateRegexPatternSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
crpsrrsChangeToken :: Lens' CreateRegexPatternSetResponse (Maybe Text)
crpsrrsChangeToken = lens _crpsrrsChangeToken (\s a -> s {_crpsrrsChangeToken = a})

-- | -- | The response status code.
crpsrrsResponseStatus :: Lens' CreateRegexPatternSetResponse Int
crpsrrsResponseStatus = lens _crpsrrsResponseStatus (\s a -> s {_crpsrrsResponseStatus = a})

instance NFData CreateRegexPatternSetResponse
