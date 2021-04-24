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
-- Module      : Network.AWS.ELBv2.AddTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, and rules.
--
--
-- Each tag consists of a key and an optional value. If a resource already has a tag with the same key, @AddTags@ updates its value.
module Network.AWS.ELBv2.AddTags
  ( -- * Creating a Request
    addTags,
    AddTags,

    -- * Request Lenses
    atResourceARNs,
    atTags,

    -- * Destructuring the Response
    addTagsResponse,
    AddTagsResponse,

    -- * Response Lenses
    atrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'addTags' smart constructor.
data AddTags = AddTags'
  { _atResourceARNs :: ![Text],
    _atTags :: !(List1 Tag)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atResourceARNs' - The Amazon Resource Name (ARN) of the resource.
--
-- * 'atTags' - The tags.
addTags ::
  -- | 'atTags'
  NonEmpty Tag ->
  AddTags
addTags pTags_ =
  AddTags'
    { _atResourceARNs = mempty,
      _atTags = _List1 # pTags_
    }

-- | The Amazon Resource Name (ARN) of the resource.
atResourceARNs :: Lens' AddTags [Text]
atResourceARNs = lens _atResourceARNs (\s a -> s {_atResourceARNs = a}) . _Coerce

-- | The tags.
atTags :: Lens' AddTags (NonEmpty Tag)
atTags = lens _atTags (\s a -> s {_atTags = a}) . _List1

instance AWSRequest AddTags where
  type Rs AddTags = AddTagsResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "AddTagsResult"
      (\s h x -> AddTagsResponse' <$> (pure (fromEnum s)))

instance Hashable AddTags

instance NFData AddTags

instance ToHeaders AddTags where
  toHeaders = const mempty

instance ToPath AddTags where
  toPath = const "/"

instance ToQuery AddTags where
  toQuery AddTags' {..} =
    mconcat
      [ "Action" =: ("AddTags" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "ResourceArns"
          =: toQueryList "member" _atResourceARNs,
        "Tags" =: toQueryList "member" _atTags
      ]

-- | /See:/ 'addTagsResponse' smart constructor.
newtype AddTagsResponse = AddTagsResponse'
  { _atrrsResponseStatus ::
      Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atrrsResponseStatus' - -- | The response status code.
addTagsResponse ::
  -- | 'atrrsResponseStatus'
  Int ->
  AddTagsResponse
addTagsResponse pResponseStatus_ =
  AddTagsResponse'
    { _atrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
atrrsResponseStatus :: Lens' AddTagsResponse Int
atrrsResponseStatus = lens _atrrsResponseStatus (\s a -> s {_atrrsResponseStatus = a})

instance NFData AddTagsResponse
