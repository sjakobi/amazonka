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
-- Module      : Network.AWS.CodeStar.UntagProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes tags from a project.
module Network.AWS.CodeStar.UntagProject
  ( -- * Creating a Request
    untagProject,
    UntagProject,

    -- * Request Lenses
    upId,
    upTags,

    -- * Destructuring the Response
    untagProjectResponse,
    UntagProjectResponse,

    -- * Response Lenses
    uprrsResponseStatus,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagProject' smart constructor.
data UntagProject = UntagProject'
  { _upId :: !Text,
    _upTags :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upId' - The ID of the project to remove tags from.
--
-- * 'upTags' - The tags to remove from the project.
untagProject ::
  -- | 'upId'
  Text ->
  UntagProject
untagProject pId_ =
  UntagProject' {_upId = pId_, _upTags = mempty}

-- | The ID of the project to remove tags from.
upId :: Lens' UntagProject Text
upId = lens _upId (\s a -> s {_upId = a})

-- | The tags to remove from the project.
upTags :: Lens' UntagProject [Text]
upTags = lens _upTags (\s a -> s {_upTags = a}) . _Coerce

instance AWSRequest UntagProject where
  type Rs UntagProject = UntagProjectResponse
  request = postJSON codeStar
  response =
    receiveEmpty
      ( \s h x ->
          UntagProjectResponse' <$> (pure (fromEnum s))
      )

instance Hashable UntagProject

instance NFData UntagProject

instance ToHeaders UntagProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeStar_20170419.UntagProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UntagProject where
  toJSON UntagProject' {..} =
    object
      ( catMaybes
          [Just ("id" .= _upId), Just ("tags" .= _upTags)]
      )

instance ToPath UntagProject where
  toPath = const "/"

instance ToQuery UntagProject where
  toQuery = const mempty

-- | /See:/ 'untagProjectResponse' smart constructor.
newtype UntagProjectResponse = UntagProjectResponse'
  { _uprrsResponseStatus ::
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

-- | Creates a value of 'UntagProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsResponseStatus' - -- | The response status code.
untagProjectResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UntagProjectResponse
untagProjectResponse pResponseStatus_ =
  UntagProjectResponse'
    { _uprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UntagProjectResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UntagProjectResponse
