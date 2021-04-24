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
-- Module      : Network.AWS.KinesisVideo.UntagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.
module Network.AWS.KinesisVideo.UntagResource
  ( -- * Creating a Request
    untagResource,
    UntagResource,

    -- * Request Lenses
    urResourceARN,
    urTagKeyList,

    -- * Destructuring the Response
    untagResourceResponse,
    UntagResourceResponse,

    -- * Response Lenses
    urrrsResponseStatus,
  )
where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagResource' smart constructor.
data UntagResource = UntagResource'
  { _urResourceARN ::
      !Text,
    _urTagKeyList :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urResourceARN' - The Amazon Resource Name (ARN) of the signaling channel from which you want to remove tags.
--
-- * 'urTagKeyList' - A list of the keys of the tags that you want to remove.
untagResource ::
  -- | 'urResourceARN'
  Text ->
  -- | 'urTagKeyList'
  NonEmpty Text ->
  UntagResource
untagResource pResourceARN_ pTagKeyList_ =
  UntagResource'
    { _urResourceARN = pResourceARN_,
      _urTagKeyList = _List1 # pTagKeyList_
    }

-- | The Amazon Resource Name (ARN) of the signaling channel from which you want to remove tags.
urResourceARN :: Lens' UntagResource Text
urResourceARN = lens _urResourceARN (\s a -> s {_urResourceARN = a})

-- | A list of the keys of the tags that you want to remove.
urTagKeyList :: Lens' UntagResource (NonEmpty Text)
urTagKeyList = lens _urTagKeyList (\s a -> s {_urTagKeyList = a}) . _List1

instance AWSRequest UntagResource where
  type Rs UntagResource = UntagResourceResponse
  request = postJSON kinesisVideo
  response =
    receiveEmpty
      ( \s h x ->
          UntagResourceResponse' <$> (pure (fromEnum s))
      )

instance Hashable UntagResource

instance NFData UntagResource

instance ToHeaders UntagResource where
  toHeaders = const mempty

instance ToJSON UntagResource where
  toJSON UntagResource' {..} =
    object
      ( catMaybes
          [ Just ("ResourceARN" .= _urResourceARN),
            Just ("TagKeyList" .= _urTagKeyList)
          ]
      )

instance ToPath UntagResource where
  toPath = const "/UntagResource"

instance ToQuery UntagResource where
  toQuery = const mempty

-- | /See:/ 'untagResourceResponse' smart constructor.
newtype UntagResourceResponse = UntagResourceResponse'
  { _urrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrrsResponseStatus' - -- | The response status code.
untagResourceResponse ::
  -- | 'urrrsResponseStatus'
  Int ->
  UntagResourceResponse
untagResourceResponse pResponseStatus_ =
  UntagResourceResponse'
    { _urrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
urrrsResponseStatus :: Lens' UntagResourceResponse Int
urrrsResponseStatus = lens _urrrsResponseStatus (\s a -> s {_urrrsResponseStatus = a})

instance NFData UntagResourceResponse
