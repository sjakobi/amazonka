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
-- Module      : Network.AWS.WAFRegional.CreateXSSMatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an 'XssMatchSet' , which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.
--
--
-- To create and configure an @XssMatchSet@ , perform the following steps:
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @CreateXssMatchSet@ request.
--
--     * Submit a @CreateXssMatchSet@ request.
--
--     * Use @GetChangeToken@ to get the change token that you provide in the @ChangeToken@ parameter of an 'UpdateXssMatchSet' request.
--
--     * Submit an 'UpdateXssMatchSet' request to specify the parts of web requests in which you want to allow, block, or count cross-site scripting attacks.
--
--
--
-- For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide> .
module Network.AWS.WAFRegional.CreateXSSMatchSet
  ( -- * Creating a Request
    createXSSMatchSet,
    CreateXSSMatchSet,

    -- * Request Lenses
    cxmsName,
    cxmsChangeToken,

    -- * Destructuring the Response
    createXSSMatchSetResponse,
    CreateXSSMatchSetResponse,

    -- * Response Lenses
    cxmsrrsXSSMatchSet,
    cxmsrrsChangeToken,
    cxmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | A request to create an 'XssMatchSet' .
--
--
--
-- /See:/ 'createXSSMatchSet' smart constructor.
data CreateXSSMatchSet = CreateXSSMatchSet'
  { _cxmsName ::
      !Text,
    _cxmsChangeToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateXSSMatchSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cxmsName' - A friendly name or description for the 'XssMatchSet' that you're creating. You can't change @Name@ after you create the @XssMatchSet@ .
--
-- * 'cxmsChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
createXSSMatchSet ::
  -- | 'cxmsName'
  Text ->
  -- | 'cxmsChangeToken'
  Text ->
  CreateXSSMatchSet
createXSSMatchSet pName_ pChangeToken_ =
  CreateXSSMatchSet'
    { _cxmsName = pName_,
      _cxmsChangeToken = pChangeToken_
    }

-- | A friendly name or description for the 'XssMatchSet' that you're creating. You can't change @Name@ after you create the @XssMatchSet@ .
cxmsName :: Lens' CreateXSSMatchSet Text
cxmsName = lens _cxmsName (\s a -> s {_cxmsName = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
cxmsChangeToken :: Lens' CreateXSSMatchSet Text
cxmsChangeToken = lens _cxmsChangeToken (\s a -> s {_cxmsChangeToken = a})

instance AWSRequest CreateXSSMatchSet where
  type Rs CreateXSSMatchSet = CreateXSSMatchSetResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          CreateXSSMatchSetResponse'
            <$> (x .?> "XssMatchSet")
            <*> (x .?> "ChangeToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateXSSMatchSet

instance NFData CreateXSSMatchSet

instance ToHeaders CreateXSSMatchSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.CreateXssMatchSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateXSSMatchSet where
  toJSON CreateXSSMatchSet' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _cxmsName),
            Just ("ChangeToken" .= _cxmsChangeToken)
          ]
      )

instance ToPath CreateXSSMatchSet where
  toPath = const "/"

instance ToQuery CreateXSSMatchSet where
  toQuery = const mempty

-- | The response to a @CreateXssMatchSet@ request.
--
--
--
-- /See:/ 'createXSSMatchSetResponse' smart constructor.
data CreateXSSMatchSetResponse = CreateXSSMatchSetResponse'
  { _cxmsrrsXSSMatchSet ::
      !( Maybe
           XSSMatchSet
       ),
    _cxmsrrsChangeToken ::
      !(Maybe Text),
    _cxmsrrsResponseStatus ::
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

-- | Creates a value of 'CreateXSSMatchSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cxmsrrsXSSMatchSet' - An 'XssMatchSet' .
--
-- * 'cxmsrrsChangeToken' - The @ChangeToken@ that you used to submit the @CreateXssMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'cxmsrrsResponseStatus' - -- | The response status code.
createXSSMatchSetResponse ::
  -- | 'cxmsrrsResponseStatus'
  Int ->
  CreateXSSMatchSetResponse
createXSSMatchSetResponse pResponseStatus_ =
  CreateXSSMatchSetResponse'
    { _cxmsrrsXSSMatchSet =
        Nothing,
      _cxmsrrsChangeToken = Nothing,
      _cxmsrrsResponseStatus = pResponseStatus_
    }

-- | An 'XssMatchSet' .
cxmsrrsXSSMatchSet :: Lens' CreateXSSMatchSetResponse (Maybe XSSMatchSet)
cxmsrrsXSSMatchSet = lens _cxmsrrsXSSMatchSet (\s a -> s {_cxmsrrsXSSMatchSet = a})

-- | The @ChangeToken@ that you used to submit the @CreateXssMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
cxmsrrsChangeToken :: Lens' CreateXSSMatchSetResponse (Maybe Text)
cxmsrrsChangeToken = lens _cxmsrrsChangeToken (\s a -> s {_cxmsrrsChangeToken = a})

-- | -- | The response status code.
cxmsrrsResponseStatus :: Lens' CreateXSSMatchSetResponse Int
cxmsrrsResponseStatus = lens _cxmsrrsResponseStatus (\s a -> s {_cxmsrrsResponseStatus = a})

instance NFData CreateXSSMatchSetResponse
