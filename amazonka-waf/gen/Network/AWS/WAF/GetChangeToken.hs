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
-- Module      : Network.AWS.WAF.GetChangeToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn't submit conflicting requests to AWS WAF.
--
--
-- Each create, update, or delete request must use a unique change token. If your application submits a @GetChangeToken@ request and then submits a second @GetChangeToken@ request before submitting a create, update, or delete request, the second @GetChangeToken@ request returns the same value as the first @GetChangeToken@ request.
--
-- When you use a change token in a create, update, or delete request, the status of the change token changes to @PENDING@ , which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use @GetChangeTokenStatus@ to determine the status of your change token.
module Network.AWS.WAF.GetChangeToken
  ( -- * Creating a Request
    getChangeToken,
    GetChangeToken,

    -- * Destructuring the Response
    getChangeTokenResponse,
    GetChangeTokenResponse,

    -- * Response Lenses
    gctrrsChangeToken,
    gctrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'getChangeToken' smart constructor.
data GetChangeToken = GetChangeToken'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetChangeToken' with the minimum fields required to make a request.
getChangeToken ::
  GetChangeToken
getChangeToken = GetChangeToken'

instance AWSRequest GetChangeToken where
  type Rs GetChangeToken = GetChangeTokenResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          GetChangeTokenResponse'
            <$> (x .?> "ChangeToken") <*> (pure (fromEnum s))
      )

instance Hashable GetChangeToken

instance NFData GetChangeToken

instance ToHeaders GetChangeToken where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSWAF_20150824.GetChangeToken" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetChangeToken where
  toJSON = const (Object mempty)

instance ToPath GetChangeToken where
  toPath = const "/"

instance ToQuery GetChangeToken where
  toQuery = const mempty

-- | /See:/ 'getChangeTokenResponse' smart constructor.
data GetChangeTokenResponse = GetChangeTokenResponse'
  { _gctrrsChangeToken ::
      !(Maybe Text),
    _gctrrsResponseStatus ::
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

-- | Creates a value of 'GetChangeTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gctrrsChangeToken' - The @ChangeToken@ that you used in the request. Use this value in a @GetChangeTokenStatus@ request to get the current status of the request.
--
-- * 'gctrrsResponseStatus' - -- | The response status code.
getChangeTokenResponse ::
  -- | 'gctrrsResponseStatus'
  Int ->
  GetChangeTokenResponse
getChangeTokenResponse pResponseStatus_ =
  GetChangeTokenResponse'
    { _gctrrsChangeToken =
        Nothing,
      _gctrrsResponseStatus = pResponseStatus_
    }

-- | The @ChangeToken@ that you used in the request. Use this value in a @GetChangeTokenStatus@ request to get the current status of the request.
gctrrsChangeToken :: Lens' GetChangeTokenResponse (Maybe Text)
gctrrsChangeToken = lens _gctrrsChangeToken (\s a -> s {_gctrrsChangeToken = a})

-- | -- | The response status code.
gctrrsResponseStatus :: Lens' GetChangeTokenResponse Int
gctrrsResponseStatus = lens _gctrrsResponseStatus (\s a -> s {_gctrrsResponseStatus = a})

instance NFData GetChangeTokenResponse
