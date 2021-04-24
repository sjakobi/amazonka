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
-- Module      : Network.AWS.WAFRegional.CreateGeoMatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an 'GeoMatchSet' , which you use to specify which web requests you want to allow or block based on the country that the requests originate from. For example, if you're receiving a lot of requests from one or more countries and you want to block the requests, you can create an @GeoMatchSet@ that contains those countries and then configure AWS WAF to block the requests.
--
--
-- To create and configure a @GeoMatchSet@ , perform the following steps:
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @CreateGeoMatchSet@ request.
--
--     * Submit a @CreateGeoMatchSet@ request.
--
--     * Use @GetChangeToken@ to get the change token that you provide in the @ChangeToken@ parameter of an 'UpdateGeoMatchSet' request.
--
--     * Submit an @UpdateGeoMatchSetSet@ request to specify the countries that you want AWS WAF to watch for.
--
--
--
-- For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide> .
module Network.AWS.WAFRegional.CreateGeoMatchSet
  ( -- * Creating a Request
    createGeoMatchSet,
    CreateGeoMatchSet,

    -- * Request Lenses
    cgmsName,
    cgmsChangeToken,

    -- * Destructuring the Response
    createGeoMatchSetResponse,
    CreateGeoMatchSetResponse,

    -- * Response Lenses
    cgmsrrsGeoMatchSet,
    cgmsrrsChangeToken,
    cgmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'createGeoMatchSet' smart constructor.
data CreateGeoMatchSet = CreateGeoMatchSet'
  { _cgmsName ::
      !Text,
    _cgmsChangeToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGeoMatchSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgmsName' - A friendly name or description of the 'GeoMatchSet' . You can't change @Name@ after you create the @GeoMatchSet@ .
--
-- * 'cgmsChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
createGeoMatchSet ::
  -- | 'cgmsName'
  Text ->
  -- | 'cgmsChangeToken'
  Text ->
  CreateGeoMatchSet
createGeoMatchSet pName_ pChangeToken_ =
  CreateGeoMatchSet'
    { _cgmsName = pName_,
      _cgmsChangeToken = pChangeToken_
    }

-- | A friendly name or description of the 'GeoMatchSet' . You can't change @Name@ after you create the @GeoMatchSet@ .
cgmsName :: Lens' CreateGeoMatchSet Text
cgmsName = lens _cgmsName (\s a -> s {_cgmsName = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
cgmsChangeToken :: Lens' CreateGeoMatchSet Text
cgmsChangeToken = lens _cgmsChangeToken (\s a -> s {_cgmsChangeToken = a})

instance AWSRequest CreateGeoMatchSet where
  type Rs CreateGeoMatchSet = CreateGeoMatchSetResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          CreateGeoMatchSetResponse'
            <$> (x .?> "GeoMatchSet")
            <*> (x .?> "ChangeToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateGeoMatchSet

instance NFData CreateGeoMatchSet

instance ToHeaders CreateGeoMatchSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.CreateGeoMatchSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateGeoMatchSet where
  toJSON CreateGeoMatchSet' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _cgmsName),
            Just ("ChangeToken" .= _cgmsChangeToken)
          ]
      )

instance ToPath CreateGeoMatchSet where
  toPath = const "/"

instance ToQuery CreateGeoMatchSet where
  toQuery = const mempty

-- | /See:/ 'createGeoMatchSetResponse' smart constructor.
data CreateGeoMatchSetResponse = CreateGeoMatchSetResponse'
  { _cgmsrrsGeoMatchSet ::
      !( Maybe
           GeoMatchSet
       ),
    _cgmsrrsChangeToken ::
      !(Maybe Text),
    _cgmsrrsResponseStatus ::
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

-- | Creates a value of 'CreateGeoMatchSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgmsrrsGeoMatchSet' - The 'GeoMatchSet' returned in the @CreateGeoMatchSet@ response. The @GeoMatchSet@ contains no @GeoMatchConstraints@ .
--
-- * 'cgmsrrsChangeToken' - The @ChangeToken@ that you used to submit the @CreateGeoMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'cgmsrrsResponseStatus' - -- | The response status code.
createGeoMatchSetResponse ::
  -- | 'cgmsrrsResponseStatus'
  Int ->
  CreateGeoMatchSetResponse
createGeoMatchSetResponse pResponseStatus_ =
  CreateGeoMatchSetResponse'
    { _cgmsrrsGeoMatchSet =
        Nothing,
      _cgmsrrsChangeToken = Nothing,
      _cgmsrrsResponseStatus = pResponseStatus_
    }

-- | The 'GeoMatchSet' returned in the @CreateGeoMatchSet@ response. The @GeoMatchSet@ contains no @GeoMatchConstraints@ .
cgmsrrsGeoMatchSet :: Lens' CreateGeoMatchSetResponse (Maybe GeoMatchSet)
cgmsrrsGeoMatchSet = lens _cgmsrrsGeoMatchSet (\s a -> s {_cgmsrrsGeoMatchSet = a})

-- | The @ChangeToken@ that you used to submit the @CreateGeoMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
cgmsrrsChangeToken :: Lens' CreateGeoMatchSetResponse (Maybe Text)
cgmsrrsChangeToken = lens _cgmsrrsChangeToken (\s a -> s {_cgmsrrsChangeToken = a})

-- | -- | The response status code.
cgmsrrsResponseStatus :: Lens' CreateGeoMatchSetResponse Int
cgmsrrsResponseStatus = lens _cgmsrrsResponseStatus (\s a -> s {_cgmsrrsResponseStatus = a})

instance NFData CreateGeoMatchSetResponse
