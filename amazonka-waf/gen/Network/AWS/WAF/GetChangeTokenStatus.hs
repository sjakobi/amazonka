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
-- Module      : Network.AWS.WAF.GetChangeTokenStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the status of a @ChangeToken@ that you got by calling 'GetChangeToken' . @ChangeTokenStatus@ is one of the following values:
--
--
--     * @PROVISIONED@ : You requested the change token by calling @GetChangeToken@ , but you haven't used it yet in a call to create, update, or delete an AWS WAF object.
--
--     * @PENDING@ : AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.
--
--     * @INSYNC@ : Propagation is complete.
module Network.AWS.WAF.GetChangeTokenStatus
  ( -- * Creating a Request
    getChangeTokenStatus,
    GetChangeTokenStatus,

    -- * Request Lenses
    gctsChangeToken,

    -- * Destructuring the Response
    getChangeTokenStatusResponse,
    GetChangeTokenStatusResponse,

    -- * Response Lenses
    gctsrrsChangeTokenStatus,
    gctsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'getChangeTokenStatus' smart constructor.
newtype GetChangeTokenStatus = GetChangeTokenStatus'
  { _gctsChangeToken ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetChangeTokenStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gctsChangeToken' - The change token for which you want to get the status. This change token was previously returned in the @GetChangeToken@ response.
getChangeTokenStatus ::
  -- | 'gctsChangeToken'
  Text ->
  GetChangeTokenStatus
getChangeTokenStatus pChangeToken_ =
  GetChangeTokenStatus'
    { _gctsChangeToken =
        pChangeToken_
    }

-- | The change token for which you want to get the status. This change token was previously returned in the @GetChangeToken@ response.
gctsChangeToken :: Lens' GetChangeTokenStatus Text
gctsChangeToken = lens _gctsChangeToken (\s a -> s {_gctsChangeToken = a})

instance AWSRequest GetChangeTokenStatus where
  type
    Rs GetChangeTokenStatus =
      GetChangeTokenStatusResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          GetChangeTokenStatusResponse'
            <$> (x .?> "ChangeTokenStatus") <*> (pure (fromEnum s))
      )

instance Hashable GetChangeTokenStatus

instance NFData GetChangeTokenStatus

instance ToHeaders GetChangeTokenStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_20150824.GetChangeTokenStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetChangeTokenStatus where
  toJSON GetChangeTokenStatus' {..} =
    object
      ( catMaybes
          [Just ("ChangeToken" .= _gctsChangeToken)]
      )

instance ToPath GetChangeTokenStatus where
  toPath = const "/"

instance ToQuery GetChangeTokenStatus where
  toQuery = const mempty

-- | /See:/ 'getChangeTokenStatusResponse' smart constructor.
data GetChangeTokenStatusResponse = GetChangeTokenStatusResponse'
  { _gctsrrsChangeTokenStatus ::
      !( Maybe
           ChangeTokenStatus
       ),
    _gctsrrsResponseStatus ::
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

-- | Creates a value of 'GetChangeTokenStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gctsrrsChangeTokenStatus' - The status of the change token.
--
-- * 'gctsrrsResponseStatus' - -- | The response status code.
getChangeTokenStatusResponse ::
  -- | 'gctsrrsResponseStatus'
  Int ->
  GetChangeTokenStatusResponse
getChangeTokenStatusResponse pResponseStatus_ =
  GetChangeTokenStatusResponse'
    { _gctsrrsChangeTokenStatus =
        Nothing,
      _gctsrrsResponseStatus = pResponseStatus_
    }

-- | The status of the change token.
gctsrrsChangeTokenStatus :: Lens' GetChangeTokenStatusResponse (Maybe ChangeTokenStatus)
gctsrrsChangeTokenStatus = lens _gctsrrsChangeTokenStatus (\s a -> s {_gctsrrsChangeTokenStatus = a})

-- | -- | The response status code.
gctsrrsResponseStatus :: Lens' GetChangeTokenStatusResponse Int
gctsrrsResponseStatus = lens _gctsrrsResponseStatus (\s a -> s {_gctsrrsResponseStatus = a})

instance NFData GetChangeTokenStatusResponse
