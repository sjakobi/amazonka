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
-- Module      : Network.AWS.WAF.CreateSizeConstraintSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @SizeConstraintSet@ . You then use 'UpdateSizeConstraintSet' to identify the part of a web request that you want AWS WAF to check for length, such as the length of the @User-Agent@ header or the length of the query string. For example, you can create a @SizeConstraintSet@ that matches any requests that have a query string that is longer than 100 bytes. You can then configure AWS WAF to reject those requests.
--
--
-- To create and configure a @SizeConstraintSet@ , perform the following steps:
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @CreateSizeConstraintSet@ request.
--
--     * Submit a @CreateSizeConstraintSet@ request.
--
--     * Use @GetChangeToken@ to get the change token that you provide in the @ChangeToken@ parameter of an @UpdateSizeConstraintSet@ request.
--
--     * Submit an 'UpdateSizeConstraintSet' request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.
--
--
--
-- For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide> .
module Network.AWS.WAF.CreateSizeConstraintSet
  ( -- * Creating a Request
    createSizeConstraintSet,
    CreateSizeConstraintSet,

    -- * Request Lenses
    cscsName,
    cscsChangeToken,

    -- * Destructuring the Response
    createSizeConstraintSetResponse,
    CreateSizeConstraintSetResponse,

    -- * Response Lenses
    cscsrrsSizeConstraintSet,
    cscsrrsChangeToken,
    cscsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'createSizeConstraintSet' smart constructor.
data CreateSizeConstraintSet = CreateSizeConstraintSet'
  { _cscsName ::
      !Text,
    _cscsChangeToken ::
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

-- | Creates a value of 'CreateSizeConstraintSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscsName' - A friendly name or description of the 'SizeConstraintSet' . You can't change @Name@ after you create a @SizeConstraintSet@ .
--
-- * 'cscsChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
createSizeConstraintSet ::
  -- | 'cscsName'
  Text ->
  -- | 'cscsChangeToken'
  Text ->
  CreateSizeConstraintSet
createSizeConstraintSet pName_ pChangeToken_ =
  CreateSizeConstraintSet'
    { _cscsName = pName_,
      _cscsChangeToken = pChangeToken_
    }

-- | A friendly name or description of the 'SizeConstraintSet' . You can't change @Name@ after you create a @SizeConstraintSet@ .
cscsName :: Lens' CreateSizeConstraintSet Text
cscsName = lens _cscsName (\s a -> s {_cscsName = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
cscsChangeToken :: Lens' CreateSizeConstraintSet Text
cscsChangeToken = lens _cscsChangeToken (\s a -> s {_cscsChangeToken = a})

instance AWSRequest CreateSizeConstraintSet where
  type
    Rs CreateSizeConstraintSet =
      CreateSizeConstraintSetResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          CreateSizeConstraintSetResponse'
            <$> (x .?> "SizeConstraintSet")
            <*> (x .?> "ChangeToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSizeConstraintSet

instance NFData CreateSizeConstraintSet

instance ToHeaders CreateSizeConstraintSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_20150824.CreateSizeConstraintSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSizeConstraintSet where
  toJSON CreateSizeConstraintSet' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _cscsName),
            Just ("ChangeToken" .= _cscsChangeToken)
          ]
      )

instance ToPath CreateSizeConstraintSet where
  toPath = const "/"

instance ToQuery CreateSizeConstraintSet where
  toQuery = const mempty

-- | /See:/ 'createSizeConstraintSetResponse' smart constructor.
data CreateSizeConstraintSetResponse = CreateSizeConstraintSetResponse'
  { _cscsrrsSizeConstraintSet ::
      !( Maybe
           SizeConstraintSet
       ),
    _cscsrrsChangeToken ::
      !( Maybe
           Text
       ),
    _cscsrrsResponseStatus ::
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

-- | Creates a value of 'CreateSizeConstraintSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscsrrsSizeConstraintSet' - A 'SizeConstraintSet' that contains no @SizeConstraint@ objects.
--
-- * 'cscsrrsChangeToken' - The @ChangeToken@ that you used to submit the @CreateSizeConstraintSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'cscsrrsResponseStatus' - -- | The response status code.
createSizeConstraintSetResponse ::
  -- | 'cscsrrsResponseStatus'
  Int ->
  CreateSizeConstraintSetResponse
createSizeConstraintSetResponse pResponseStatus_ =
  CreateSizeConstraintSetResponse'
    { _cscsrrsSizeConstraintSet =
        Nothing,
      _cscsrrsChangeToken = Nothing,
      _cscsrrsResponseStatus = pResponseStatus_
    }

-- | A 'SizeConstraintSet' that contains no @SizeConstraint@ objects.
cscsrrsSizeConstraintSet :: Lens' CreateSizeConstraintSetResponse (Maybe SizeConstraintSet)
cscsrrsSizeConstraintSet = lens _cscsrrsSizeConstraintSet (\s a -> s {_cscsrrsSizeConstraintSet = a})

-- | The @ChangeToken@ that you used to submit the @CreateSizeConstraintSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
cscsrrsChangeToken :: Lens' CreateSizeConstraintSetResponse (Maybe Text)
cscsrrsChangeToken = lens _cscsrrsChangeToken (\s a -> s {_cscsrrsChangeToken = a})

-- | -- | The response status code.
cscsrrsResponseStatus :: Lens' CreateSizeConstraintSetResponse Int
cscsrrsResponseStatus = lens _cscsrrsResponseStatus (\s a -> s {_cscsrrsResponseStatus = a})

instance NFData CreateSizeConstraintSetResponse
