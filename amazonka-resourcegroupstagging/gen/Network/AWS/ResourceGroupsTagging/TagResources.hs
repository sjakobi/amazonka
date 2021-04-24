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
-- Module      : Network.AWS.ResourceGroupsTagging.TagResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies one or more tags to the specified resources. Note the following:
--
--
--     * Not all resources can have tags. For a list of services with resources that support tagging using this operation, see <https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html Services that support the Resource Groups Tagging API> .
--
--     * Each resource can have up to 50 tags. For other limits, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions Tag Naming and Usage Conventions> in the /AWS General Reference./
--
--     * You can only tag resources that are located in the specified AWS Region for the AWS account.
--
--     * To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see the documentation for each service.
--
--
--
-- /Important:/ Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.
module Network.AWS.ResourceGroupsTagging.TagResources
  ( -- * Creating a Request
    tagResources,
    TagResources,

    -- * Request Lenses
    trResourceARNList,
    trTags,

    -- * Destructuring the Response
    tagResourcesResponse,
    TagResourcesResponse,

    -- * Response Lenses
    trrrsFailedResourcesMap,
    trrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.Response

-- | /See:/ 'tagResources' smart constructor.
data TagResources = TagResources'
  { _trResourceARNList ::
      !(List1 Text),
    _trTags :: !(Map Text Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trResourceARNList' - Specifies the list of ARNs of the resources that you want to apply tags to. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see <http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
--
-- * 'trTags' - Specifies a list of tags that you want to add to the specified resources. A tag consists of a key and a value that you define.
tagResources ::
  -- | 'trResourceARNList'
  NonEmpty Text ->
  TagResources
tagResources pResourceARNList_ =
  TagResources'
    { _trResourceARNList =
        _List1 # pResourceARNList_,
      _trTags = mempty
    }

-- | Specifies the list of ARNs of the resources that you want to apply tags to. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see <http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
trResourceARNList :: Lens' TagResources (NonEmpty Text)
trResourceARNList = lens _trResourceARNList (\s a -> s {_trResourceARNList = a}) . _List1

-- | Specifies a list of tags that you want to add to the specified resources. A tag consists of a key and a value that you define.
trTags :: Lens' TagResources (HashMap Text Text)
trTags = lens _trTags (\s a -> s {_trTags = a}) . _Map

instance AWSRequest TagResources where
  type Rs TagResources = TagResourcesResponse
  request = postJSON resourceGroupsTagging
  response =
    receiveJSON
      ( \s h x ->
          TagResourcesResponse'
            <$> (x .?> "FailedResourcesMap" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable TagResources

instance NFData TagResources

instance ToHeaders TagResources where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ResourceGroupsTaggingAPI_20170126.TagResources" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TagResources where
  toJSON TagResources' {..} =
    object
      ( catMaybes
          [ Just ("ResourceARNList" .= _trResourceARNList),
            Just ("Tags" .= _trTags)
          ]
      )

instance ToPath TagResources where
  toPath = const "/"

instance ToQuery TagResources where
  toQuery = const mempty

-- | /See:/ 'tagResourcesResponse' smart constructor.
data TagResourcesResponse = TagResourcesResponse'
  { _trrrsFailedResourcesMap ::
      !( Maybe
           (Map Text FailureInfo)
       ),
    _trrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrrsFailedResourcesMap' - A map containing a key-value pair for each failed item that couldn't be tagged. The key is the ARN of the failed resource. The value is a @FailureInfo@ object that contains an error code, a status code, and an error message. If there are no errors, the @FailedResourcesMap@ is empty.
--
-- * 'trrrsResponseStatus' - -- | The response status code.
tagResourcesResponse ::
  -- | 'trrrsResponseStatus'
  Int ->
  TagResourcesResponse
tagResourcesResponse pResponseStatus_ =
  TagResourcesResponse'
    { _trrrsFailedResourcesMap =
        Nothing,
      _trrrsResponseStatus = pResponseStatus_
    }

-- | A map containing a key-value pair for each failed item that couldn't be tagged. The key is the ARN of the failed resource. The value is a @FailureInfo@ object that contains an error code, a status code, and an error message. If there are no errors, the @FailedResourcesMap@ is empty.
trrrsFailedResourcesMap :: Lens' TagResourcesResponse (HashMap Text FailureInfo)
trrrsFailedResourcesMap = lens _trrrsFailedResourcesMap (\s a -> s {_trrrsFailedResourcesMap = a}) . _Default . _Map

-- | -- | The response status code.
trrrsResponseStatus :: Lens' TagResourcesResponse Int
trrrsResponseStatus = lens _trrrsResponseStatus (\s a -> s {_trrrsResponseStatus = a})

instance NFData TagResourcesResponse
