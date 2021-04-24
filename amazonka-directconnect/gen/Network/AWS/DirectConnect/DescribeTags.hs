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
-- Module      : Network.AWS.DirectConnect.DescribeTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the tags associated with the specified AWS Direct Connect resources.
module Network.AWS.DirectConnect.DescribeTags
  ( -- * Creating a Request
    describeTags,
    DescribeTags,

    -- * Request Lenses
    dtResourceARNs,

    -- * Destructuring the Response
    describeTagsResponse,
    DescribeTagsResponse,

    -- * Response Lenses
    dtrrsResourceTags,
    dtrrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTags' smart constructor.
newtype DescribeTags = DescribeTags'
  { _dtResourceARNs ::
      [Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtResourceARNs' - The Amazon Resource Names (ARNs) of the resources.
describeTags ::
  DescribeTags
describeTags =
  DescribeTags' {_dtResourceARNs = mempty}

-- | The Amazon Resource Names (ARNs) of the resources.
dtResourceARNs :: Lens' DescribeTags [Text]
dtResourceARNs = lens _dtResourceARNs (\s a -> s {_dtResourceARNs = a}) . _Coerce

instance AWSRequest DescribeTags where
  type Rs DescribeTags = DescribeTagsResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeTagsResponse'
            <$> (x .?> "resourceTags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTags

instance NFData DescribeTags

instance ToHeaders DescribeTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OvertureService.DescribeTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTags where
  toJSON DescribeTags' {..} =
    object
      ( catMaybes
          [Just ("resourceArns" .= _dtResourceARNs)]
      )

instance ToPath DescribeTags where
  toPath = const "/"

instance ToQuery DescribeTags where
  toQuery = const mempty

-- | /See:/ 'describeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { _dtrrsResourceTags ::
      !(Maybe [ResourceTag]),
    _dtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsResourceTags' - Information about the tags.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTagsResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTagsResponse
describeTagsResponse pResponseStatus_ =
  DescribeTagsResponse'
    { _dtrrsResourceTags = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | Information about the tags.
dtrrsResourceTags :: Lens' DescribeTagsResponse [ResourceTag]
dtrrsResourceTags = lens _dtrrsResourceTags (\s a -> s {_dtrrsResourceTags = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTagsResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTagsResponse
