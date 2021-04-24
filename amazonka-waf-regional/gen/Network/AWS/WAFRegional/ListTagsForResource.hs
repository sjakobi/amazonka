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
-- Module      : Network.AWS.WAFRegional.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the tags associated with the specified AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.
--
--
-- Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.
module Network.AWS.WAFRegional.ListTagsForResource
  ( -- * Creating a Request
    listTagsForResource,
    ListTagsForResource,

    -- * Request Lenses
    ltfrNextMarker,
    ltfrLimit,
    ltfrResourceARN,

    -- * Destructuring the Response
    listTagsForResourceResponse,
    ListTagsForResourceResponse,

    -- * Response Lenses
    ltfrrrsNextMarker,
    ltfrrrsTagInfoForResource,
    ltfrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'listTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { _ltfrNextMarker ::
      !(Maybe Text),
    _ltfrLimit :: !(Maybe Nat),
    _ltfrResourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrNextMarker' -
--
-- * 'ltfrLimit' -
--
-- * 'ltfrResourceARN' -
listTagsForResource ::
  -- | 'ltfrResourceARN'
  Text ->
  ListTagsForResource
listTagsForResource pResourceARN_ =
  ListTagsForResource'
    { _ltfrNextMarker = Nothing,
      _ltfrLimit = Nothing,
      _ltfrResourceARN = pResourceARN_
    }

-- |
ltfrNextMarker :: Lens' ListTagsForResource (Maybe Text)
ltfrNextMarker = lens _ltfrNextMarker (\s a -> s {_ltfrNextMarker = a})

-- |
ltfrLimit :: Lens' ListTagsForResource (Maybe Natural)
ltfrLimit = lens _ltfrLimit (\s a -> s {_ltfrLimit = a}) . mapping _Nat

-- |
ltfrResourceARN :: Lens' ListTagsForResource Text
ltfrResourceARN = lens _ltfrResourceARN (\s a -> s {_ltfrResourceARN = a})

instance AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForResourceResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "TagInfoForResource")
            <*> (pure (fromEnum s))
      )

instance Hashable ListTagsForResource

instance NFData ListTagsForResource

instance ToHeaders ListTagsForResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.ListTagsForResource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTagsForResource where
  toJSON ListTagsForResource' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _ltfrNextMarker,
            ("Limit" .=) <$> _ltfrLimit,
            Just ("ResourceARN" .= _ltfrResourceARN)
          ]
      )

instance ToPath ListTagsForResource where
  toPath = const "/"

instance ToQuery ListTagsForResource where
  toQuery = const mempty

-- | /See:/ 'listTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { _ltfrrrsNextMarker ::
      !(Maybe Text),
    _ltfrrrsTagInfoForResource ::
      !( Maybe
           TagInfoForResource
       ),
    _ltfrrrsResponseStatus ::
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

-- | Creates a value of 'ListTagsForResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrrrsNextMarker' -
--
-- * 'ltfrrrsTagInfoForResource' -
--
-- * 'ltfrrrsResponseStatus' - -- | The response status code.
listTagsForResourceResponse ::
  -- | 'ltfrrrsResponseStatus'
  Int ->
  ListTagsForResourceResponse
listTagsForResourceResponse pResponseStatus_ =
  ListTagsForResourceResponse'
    { _ltfrrrsNextMarker =
        Nothing,
      _ltfrrrsTagInfoForResource = Nothing,
      _ltfrrrsResponseStatus = pResponseStatus_
    }

-- |
ltfrrrsNextMarker :: Lens' ListTagsForResourceResponse (Maybe Text)
ltfrrrsNextMarker = lens _ltfrrrsNextMarker (\s a -> s {_ltfrrrsNextMarker = a})

-- |
ltfrrrsTagInfoForResource :: Lens' ListTagsForResourceResponse (Maybe TagInfoForResource)
ltfrrrsTagInfoForResource = lens _ltfrrrsTagInfoForResource (\s a -> s {_ltfrrrsTagInfoForResource = a})

-- | -- | The response status code.
ltfrrrsResponseStatus :: Lens' ListTagsForResourceResponse Int
ltfrrrsResponseStatus = lens _ltfrrrsResponseStatus (\s a -> s {_ltfrrrsResponseStatus = a})

instance NFData ListTagsForResourceResponse
