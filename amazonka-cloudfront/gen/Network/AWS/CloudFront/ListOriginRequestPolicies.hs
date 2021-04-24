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
-- Module      : Network.AWS.CloudFront.ListOriginRequestPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of origin request policies.
--
--
-- You can optionally apply a filter to return only the managed policies created by AWS, or only the custom policies created in your AWS account.
--
-- You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the @NextMarker@ value from the current response as the @Marker@ value in the subsequent request.
module Network.AWS.CloudFront.ListOriginRequestPolicies
  ( -- * Creating a Request
    listOriginRequestPolicies,
    ListOriginRequestPolicies,

    -- * Request Lenses
    lorpType,
    lorpMaxItems,
    lorpMarker,

    -- * Destructuring the Response
    listOriginRequestPoliciesResponse,
    ListOriginRequestPoliciesResponse,

    -- * Response Lenses
    lorprrsOriginRequestPolicyList,
    lorprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listOriginRequestPolicies' smart constructor.
data ListOriginRequestPolicies = ListOriginRequestPolicies'
  { _lorpType ::
      !( Maybe
           OriginRequestPolicyType
       ),
    _lorpMaxItems ::
      !(Maybe Text),
    _lorpMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListOriginRequestPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorpType' - A filter to return only the specified kinds of origin request policies. Valid values are:     * @managed@ – Returns only the managed policies created by AWS.     * @custom@ – Returns only the custom policies created in your AWS account.
--
-- * 'lorpMaxItems' - The maximum number of origin request policies that you want in the response.
--
-- * 'lorpMarker' - Use this field when paginating results to indicate where to begin in your list of origin request policies. The response includes origin request policies in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
listOriginRequestPolicies ::
  ListOriginRequestPolicies
listOriginRequestPolicies =
  ListOriginRequestPolicies'
    { _lorpType = Nothing,
      _lorpMaxItems = Nothing,
      _lorpMarker = Nothing
    }

-- | A filter to return only the specified kinds of origin request policies. Valid values are:     * @managed@ – Returns only the managed policies created by AWS.     * @custom@ – Returns only the custom policies created in your AWS account.
lorpType :: Lens' ListOriginRequestPolicies (Maybe OriginRequestPolicyType)
lorpType = lens _lorpType (\s a -> s {_lorpType = a})

-- | The maximum number of origin request policies that you want in the response.
lorpMaxItems :: Lens' ListOriginRequestPolicies (Maybe Text)
lorpMaxItems = lens _lorpMaxItems (\s a -> s {_lorpMaxItems = a})

-- | Use this field when paginating results to indicate where to begin in your list of origin request policies. The response includes origin request policies in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
lorpMarker :: Lens' ListOriginRequestPolicies (Maybe Text)
lorpMarker = lens _lorpMarker (\s a -> s {_lorpMarker = a})

instance AWSRequest ListOriginRequestPolicies where
  type
    Rs ListOriginRequestPolicies =
      ListOriginRequestPoliciesResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListOriginRequestPoliciesResponse'
            <$> (parseXML x) <*> (pure (fromEnum s))
      )

instance Hashable ListOriginRequestPolicies

instance NFData ListOriginRequestPolicies

instance ToHeaders ListOriginRequestPolicies where
  toHeaders = const mempty

instance ToPath ListOriginRequestPolicies where
  toPath = const "/2020-05-31/origin-request-policy"

instance ToQuery ListOriginRequestPolicies where
  toQuery ListOriginRequestPolicies' {..} =
    mconcat
      [ "Type" =: _lorpType,
        "MaxItems" =: _lorpMaxItems,
        "Marker" =: _lorpMarker
      ]

-- | /See:/ 'listOriginRequestPoliciesResponse' smart constructor.
data ListOriginRequestPoliciesResponse = ListOriginRequestPoliciesResponse'
  { _lorprrsOriginRequestPolicyList ::
      !( Maybe
           OriginRequestPolicyList
       ),
    _lorprrsResponseStatus ::
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

-- | Creates a value of 'ListOriginRequestPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorprrsOriginRequestPolicyList' - A list of origin request policies.
--
-- * 'lorprrsResponseStatus' - -- | The response status code.
listOriginRequestPoliciesResponse ::
  -- | 'lorprrsResponseStatus'
  Int ->
  ListOriginRequestPoliciesResponse
listOriginRequestPoliciesResponse pResponseStatus_ =
  ListOriginRequestPoliciesResponse'
    { _lorprrsOriginRequestPolicyList =
        Nothing,
      _lorprrsResponseStatus =
        pResponseStatus_
    }

-- | A list of origin request policies.
lorprrsOriginRequestPolicyList :: Lens' ListOriginRequestPoliciesResponse (Maybe OriginRequestPolicyList)
lorprrsOriginRequestPolicyList = lens _lorprrsOriginRequestPolicyList (\s a -> s {_lorprrsOriginRequestPolicyList = a})

-- | -- | The response status code.
lorprrsResponseStatus :: Lens' ListOriginRequestPoliciesResponse Int
lorprrsResponseStatus = lens _lorprrsResponseStatus (\s a -> s {_lorprrsResponseStatus = a})

instance NFData ListOriginRequestPoliciesResponse
