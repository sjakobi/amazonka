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
-- Module      : Network.AWS.Route53.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists tags for one health check or hosted zone.
--
--
-- For information about using tags for cost allocation, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
module Network.AWS.Route53.ListTagsForResource
  ( -- * Creating a Request
    listTagsForResource,
    ListTagsForResource,

    -- * Request Lenses
    lResourceType,
    lResourceId,

    -- * Destructuring the Response
    listTagsForResourceResponse,
    ListTagsForResourceResponse,

    -- * Response Lenses
    ltfrrrsResponseStatus,
    ltfrrrsResourceTagSet,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type containing information about a request for a list of the tags that are associated with an individual resource.
--
--
--
-- /See:/ 'listTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { _lResourceType ::
      !TagResourceType,
    _lResourceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lResourceType' - The type of the resource.     * The resource type for health checks is @healthcheck@ .     * The resource type for hosted zones is @hostedzone@ .
--
-- * 'lResourceId' - The ID of the resource for which you want to retrieve tags.
listTagsForResource ::
  -- | 'lResourceType'
  TagResourceType ->
  -- | 'lResourceId'
  Text ->
  ListTagsForResource
listTagsForResource pResourceType_ pResourceId_ =
  ListTagsForResource'
    { _lResourceType =
        pResourceType_,
      _lResourceId = pResourceId_
    }

-- | The type of the resource.     * The resource type for health checks is @healthcheck@ .     * The resource type for hosted zones is @hostedzone@ .
lResourceType :: Lens' ListTagsForResource TagResourceType
lResourceType = lens _lResourceType (\s a -> s {_lResourceType = a})

-- | The ID of the resource for which you want to retrieve tags.
lResourceId :: Lens' ListTagsForResource Text
lResourceId = lens _lResourceId (\s a -> s {_lResourceId = a})

instance AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListTagsForResourceResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ResourceTagSet")
      )

instance Hashable ListTagsForResource

instance NFData ListTagsForResource

instance ToHeaders ListTagsForResource where
  toHeaders = const mempty

instance ToPath ListTagsForResource where
  toPath ListTagsForResource' {..} =
    mconcat
      [ "/2013-04-01/tags/",
        toBS _lResourceType,
        "/",
        toBS _lResourceId
      ]

instance ToQuery ListTagsForResource where
  toQuery = const mempty

-- | A complex type that contains information about the health checks or hosted zones for which you want to list tags.
--
--
--
-- /See:/ 'listTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { _ltfrrrsResponseStatus ::
      !Int,
    _ltfrrrsResourceTagSet ::
      !ResourceTagSet
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
-- * 'ltfrrrsResponseStatus' - -- | The response status code.
--
-- * 'ltfrrrsResourceTagSet' - A @ResourceTagSet@ containing tags associated with the specified resource.
listTagsForResourceResponse ::
  -- | 'ltfrrrsResponseStatus'
  Int ->
  -- | 'ltfrrrsResourceTagSet'
  ResourceTagSet ->
  ListTagsForResourceResponse
listTagsForResourceResponse
  pResponseStatus_
  pResourceTagSet_ =
    ListTagsForResourceResponse'
      { _ltfrrrsResponseStatus =
          pResponseStatus_,
        _ltfrrrsResourceTagSet = pResourceTagSet_
      }

-- | -- | The response status code.
ltfrrrsResponseStatus :: Lens' ListTagsForResourceResponse Int
ltfrrrsResponseStatus = lens _ltfrrrsResponseStatus (\s a -> s {_ltfrrrsResponseStatus = a})

-- | A @ResourceTagSet@ containing tags associated with the specified resource.
ltfrrrsResourceTagSet :: Lens' ListTagsForResourceResponse ResourceTagSet
ltfrrrsResourceTagSet = lens _ltfrrrsResourceTagSet (\s a -> s {_ltfrrrsResourceTagSet = a})

instance NFData ListTagsForResourceResponse
