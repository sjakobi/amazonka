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
-- Module      : Network.AWS.MachineLearning.DescribeTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of the tags for your Amazon ML object.
module Network.AWS.MachineLearning.DescribeTags
  ( -- * Creating a Request
    describeTags,
    DescribeTags,

    -- * Request Lenses
    dtResourceId,
    dtResourceType,

    -- * Destructuring the Response
    describeTagsResponse,
    DescribeTagsResponse,

    -- * Response Lenses
    dtrrsResourceId,
    dtrrsResourceType,
    dtrrsTags,
    dtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTags' smart constructor.
data DescribeTags = DescribeTags'
  { _dtResourceId ::
      !Text,
    _dtResourceType :: !TaggableResourceType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtResourceId' - The ID of the ML object. For example, @exampleModelId@ .
--
-- * 'dtResourceType' - The type of the ML object.
describeTags ::
  -- | 'dtResourceId'
  Text ->
  -- | 'dtResourceType'
  TaggableResourceType ->
  DescribeTags
describeTags pResourceId_ pResourceType_ =
  DescribeTags'
    { _dtResourceId = pResourceId_,
      _dtResourceType = pResourceType_
    }

-- | The ID of the ML object. For example, @exampleModelId@ .
dtResourceId :: Lens' DescribeTags Text
dtResourceId = lens _dtResourceId (\s a -> s {_dtResourceId = a})

-- | The type of the ML object.
dtResourceType :: Lens' DescribeTags TaggableResourceType
dtResourceType = lens _dtResourceType (\s a -> s {_dtResourceType = a})

instance AWSRequest DescribeTags where
  type Rs DescribeTags = DescribeTagsResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          DescribeTagsResponse'
            <$> (x .?> "ResourceId")
            <*> (x .?> "ResourceType")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTags

instance NFData DescribeTags

instance ToHeaders DescribeTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.DescribeTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTags where
  toJSON DescribeTags' {..} =
    object
      ( catMaybes
          [ Just ("ResourceId" .= _dtResourceId),
            Just ("ResourceType" .= _dtResourceType)
          ]
      )

instance ToPath DescribeTags where
  toPath = const "/"

instance ToQuery DescribeTags where
  toQuery = const mempty

-- | Amazon ML returns the following elements.
--
--
--
-- /See:/ 'describeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { _dtrrsResourceId ::
      !(Maybe Text),
    _dtrrsResourceType ::
      !(Maybe TaggableResourceType),
    _dtrrsTags :: !(Maybe [Tag]),
    _dtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsResourceId' - The ID of the tagged ML object.
--
-- * 'dtrrsResourceType' - The type of the tagged ML object.
--
-- * 'dtrrsTags' - A list of tags associated with the ML object.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTagsResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTagsResponse
describeTagsResponse pResponseStatus_ =
  DescribeTagsResponse'
    { _dtrrsResourceId = Nothing,
      _dtrrsResourceType = Nothing,
      _dtrrsTags = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the tagged ML object.
dtrrsResourceId :: Lens' DescribeTagsResponse (Maybe Text)
dtrrsResourceId = lens _dtrrsResourceId (\s a -> s {_dtrrsResourceId = a})

-- | The type of the tagged ML object.
dtrrsResourceType :: Lens' DescribeTagsResponse (Maybe TaggableResourceType)
dtrrsResourceType = lens _dtrrsResourceType (\s a -> s {_dtrrsResourceType = a})

-- | A list of tags associated with the ML object.
dtrrsTags :: Lens' DescribeTagsResponse [Tag]
dtrrsTags = lens _dtrrsTags (\s a -> s {_dtrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTagsResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTagsResponse
