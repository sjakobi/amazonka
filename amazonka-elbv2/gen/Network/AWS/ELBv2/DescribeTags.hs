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
-- Module      : Network.AWS.ELBv2.DescribeTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the tags for the specified Elastic Load Balancing resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, or rules.
module Network.AWS.ELBv2.DescribeTags
  ( -- * Creating a Request
    describeTags,
    DescribeTags,

    -- * Request Lenses
    dtResourceARNs,

    -- * Destructuring the Response
    describeTagsResponse,
    DescribeTagsResponse,

    -- * Response Lenses
    dtrrsTagDescriptions,
    dtrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
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
-- * 'dtResourceARNs' - The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a single call.
describeTags ::
  DescribeTags
describeTags =
  DescribeTags' {_dtResourceARNs = mempty}

-- | The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a single call.
dtResourceARNs :: Lens' DescribeTags [Text]
dtResourceARNs = lens _dtResourceARNs (\s a -> s {_dtResourceARNs = a}) . _Coerce

instance AWSRequest DescribeTags where
  type Rs DescribeTags = DescribeTagsResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeTagsResult"
      ( \s h x ->
          DescribeTagsResponse'
            <$> ( x .@? "TagDescriptions" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTags

instance NFData DescribeTags

instance ToHeaders DescribeTags where
  toHeaders = const mempty

instance ToPath DescribeTags where
  toPath = const "/"

instance ToQuery DescribeTags where
  toQuery DescribeTags' {..} =
    mconcat
      [ "Action" =: ("DescribeTags" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "ResourceArns"
          =: toQueryList "member" _dtResourceARNs
      ]

-- | /See:/ 'describeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { _dtrrsTagDescriptions ::
      !(Maybe [TagDescription]),
    _dtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsTagDescriptions' - Information about the tags.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTagsResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTagsResponse
describeTagsResponse pResponseStatus_ =
  DescribeTagsResponse'
    { _dtrrsTagDescriptions =
        Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | Information about the tags.
dtrrsTagDescriptions :: Lens' DescribeTagsResponse [TagDescription]
dtrrsTagDescriptions = lens _dtrrsTagDescriptions (\s a -> s {_dtrrsTagDescriptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTagsResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTagsResponse
