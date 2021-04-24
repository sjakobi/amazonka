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
-- Module      : Network.AWS.WAFRegional.ListResourcesForWebACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of resources associated with the specified web ACL.
module Network.AWS.WAFRegional.ListResourcesForWebACL
  ( -- * Creating a Request
    listResourcesForWebACL,
    ListResourcesForWebACL,

    -- * Request Lenses
    lrfwaResourceType,
    lrfwaWebACLId,

    -- * Destructuring the Response
    listResourcesForWebACLResponse,
    ListResourcesForWebACLResponse,

    -- * Response Lenses
    lrfwarrsResourceARNs,
    lrfwarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'listResourcesForWebACL' smart constructor.
data ListResourcesForWebACL = ListResourcesForWebACL'
  { _lrfwaResourceType ::
      !(Maybe ResourceType),
    _lrfwaWebACLId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListResourcesForWebACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrfwaResourceType' - The type of resource to list, either an application load balancer or Amazon API Gateway.
--
-- * 'lrfwaWebACLId' - The unique identifier (ID) of the web ACL for which to list the associated resources.
listResourcesForWebACL ::
  -- | 'lrfwaWebACLId'
  Text ->
  ListResourcesForWebACL
listResourcesForWebACL pWebACLId_ =
  ListResourcesForWebACL'
    { _lrfwaResourceType =
        Nothing,
      _lrfwaWebACLId = pWebACLId_
    }

-- | The type of resource to list, either an application load balancer or Amazon API Gateway.
lrfwaResourceType :: Lens' ListResourcesForWebACL (Maybe ResourceType)
lrfwaResourceType = lens _lrfwaResourceType (\s a -> s {_lrfwaResourceType = a})

-- | The unique identifier (ID) of the web ACL for which to list the associated resources.
lrfwaWebACLId :: Lens' ListResourcesForWebACL Text
lrfwaWebACLId = lens _lrfwaWebACLId (\s a -> s {_lrfwaWebACLId = a})

instance AWSRequest ListResourcesForWebACL where
  type
    Rs ListResourcesForWebACL =
      ListResourcesForWebACLResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          ListResourcesForWebACLResponse'
            <$> (x .?> "ResourceArns" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListResourcesForWebACL

instance NFData ListResourcesForWebACL

instance ToHeaders ListResourcesForWebACL where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.ListResourcesForWebACL" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListResourcesForWebACL where
  toJSON ListResourcesForWebACL' {..} =
    object
      ( catMaybes
          [ ("ResourceType" .=) <$> _lrfwaResourceType,
            Just ("WebACLId" .= _lrfwaWebACLId)
          ]
      )

instance ToPath ListResourcesForWebACL where
  toPath = const "/"

instance ToQuery ListResourcesForWebACL where
  toQuery = const mempty

-- | /See:/ 'listResourcesForWebACLResponse' smart constructor.
data ListResourcesForWebACLResponse = ListResourcesForWebACLResponse'
  { _lrfwarrsResourceARNs ::
      !( Maybe
           [Text]
       ),
    _lrfwarrsResponseStatus ::
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

-- | Creates a value of 'ListResourcesForWebACLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrfwarrsResourceARNs' - An array of ARNs (Amazon Resource Names) of the resources associated with the specified web ACL. An array with zero elements is returned if there are no resources associated with the web ACL.
--
-- * 'lrfwarrsResponseStatus' - -- | The response status code.
listResourcesForWebACLResponse ::
  -- | 'lrfwarrsResponseStatus'
  Int ->
  ListResourcesForWebACLResponse
listResourcesForWebACLResponse pResponseStatus_ =
  ListResourcesForWebACLResponse'
    { _lrfwarrsResourceARNs =
        Nothing,
      _lrfwarrsResponseStatus = pResponseStatus_
    }

-- | An array of ARNs (Amazon Resource Names) of the resources associated with the specified web ACL. An array with zero elements is returned if there are no resources associated with the web ACL.
lrfwarrsResourceARNs :: Lens' ListResourcesForWebACLResponse [Text]
lrfwarrsResourceARNs = lens _lrfwarrsResourceARNs (\s a -> s {_lrfwarrsResourceARNs = a}) . _Default . _Coerce

-- | -- | The response status code.
lrfwarrsResponseStatus :: Lens' ListResourcesForWebACLResponse Int
lrfwarrsResponseStatus = lens _lrfwarrsResponseStatus (\s a -> s {_lrfwarrsResponseStatus = a})

instance NFData ListResourcesForWebACLResponse
