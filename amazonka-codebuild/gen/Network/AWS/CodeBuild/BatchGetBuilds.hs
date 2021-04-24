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
-- Module      : Network.AWS.CodeBuild.BatchGetBuilds
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more builds.
module Network.AWS.CodeBuild.BatchGetBuilds
  ( -- * Creating a Request
    batchGetBuilds,
    BatchGetBuilds,

    -- * Request Lenses
    bgbIds,

    -- * Destructuring the Response
    batchGetBuildsResponse,
    BatchGetBuildsResponse,

    -- * Response Lenses
    bgbrrsBuildsNotFound,
    bgbrrsBuilds,
    bgbrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetBuilds' smart constructor.
newtype BatchGetBuilds = BatchGetBuilds'
  { _bgbIds ::
      List1 Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetBuilds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgbIds' - The IDs of the builds.
batchGetBuilds ::
  -- | 'bgbIds'
  NonEmpty Text ->
  BatchGetBuilds
batchGetBuilds pIds_ =
  BatchGetBuilds' {_bgbIds = _List1 # pIds_}

-- | The IDs of the builds.
bgbIds :: Lens' BatchGetBuilds (NonEmpty Text)
bgbIds = lens _bgbIds (\s a -> s {_bgbIds = a}) . _List1

instance AWSRequest BatchGetBuilds where
  type Rs BatchGetBuilds = BatchGetBuildsResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          BatchGetBuildsResponse'
            <$> (x .?> "buildsNotFound")
            <*> (x .?> "builds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetBuilds

instance NFData BatchGetBuilds

instance ToHeaders BatchGetBuilds where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.BatchGetBuilds" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetBuilds where
  toJSON BatchGetBuilds' {..} =
    object (catMaybes [Just ("ids" .= _bgbIds)])

instance ToPath BatchGetBuilds where
  toPath = const "/"

instance ToQuery BatchGetBuilds where
  toQuery = const mempty

-- | /See:/ 'batchGetBuildsResponse' smart constructor.
data BatchGetBuildsResponse = BatchGetBuildsResponse'
  { _bgbrrsBuildsNotFound ::
      !(Maybe (List1 Text)),
    _bgbrrsBuilds ::
      !(Maybe [Build]),
    _bgbrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetBuildsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgbrrsBuildsNotFound' - The IDs of builds for which information could not be found.
--
-- * 'bgbrrsBuilds' - Information about the requested builds.
--
-- * 'bgbrrsResponseStatus' - -- | The response status code.
batchGetBuildsResponse ::
  -- | 'bgbrrsResponseStatus'
  Int ->
  BatchGetBuildsResponse
batchGetBuildsResponse pResponseStatus_ =
  BatchGetBuildsResponse'
    { _bgbrrsBuildsNotFound =
        Nothing,
      _bgbrrsBuilds = Nothing,
      _bgbrrsResponseStatus = pResponseStatus_
    }

-- | The IDs of builds for which information could not be found.
bgbrrsBuildsNotFound :: Lens' BatchGetBuildsResponse (Maybe (NonEmpty Text))
bgbrrsBuildsNotFound = lens _bgbrrsBuildsNotFound (\s a -> s {_bgbrrsBuildsNotFound = a}) . mapping _List1

-- | Information about the requested builds.
bgbrrsBuilds :: Lens' BatchGetBuildsResponse [Build]
bgbrrsBuilds = lens _bgbrrsBuilds (\s a -> s {_bgbrrsBuilds = a}) . _Default . _Coerce

-- | -- | The response status code.
bgbrrsResponseStatus :: Lens' BatchGetBuildsResponse Int
bgbrrsResponseStatus = lens _bgbrrsResponseStatus (\s a -> s {_bgbrrsResponseStatus = a})

instance NFData BatchGetBuildsResponse
