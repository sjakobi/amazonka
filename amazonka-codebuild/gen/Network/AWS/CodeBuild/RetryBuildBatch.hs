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
-- Module      : Network.AWS.CodeBuild.RetryBuildBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts a failed batch build. Only batch builds that have failed can be retried.
module Network.AWS.CodeBuild.RetryBuildBatch
  ( -- * Creating a Request
    retryBuildBatch,
    RetryBuildBatch,

    -- * Request Lenses
    rbbIdempotencyToken,
    rbbRetryType,
    rbbId,

    -- * Destructuring the Response
    retryBuildBatchResponse,
    RetryBuildBatchResponse,

    -- * Response Lenses
    rbbrrsBuildBatch,
    rbbrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'retryBuildBatch' smart constructor.
data RetryBuildBatch = RetryBuildBatch'
  { _rbbIdempotencyToken ::
      !(Maybe Text),
    _rbbRetryType ::
      !(Maybe RetryBuildBatchType),
    _rbbId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RetryBuildBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbbIdempotencyToken' - A unique, case sensitive identifier you provide to ensure the idempotency of the @RetryBuildBatch@ request. The token is included in the @RetryBuildBatch@ request and is valid for five minutes. If you repeat the @RetryBuildBatch@ request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.
--
-- * 'rbbRetryType' - Specifies the type of retry to perform.
--
-- * 'rbbId' - Specifies the identifier of the batch build to restart.
retryBuildBatch ::
  RetryBuildBatch
retryBuildBatch =
  RetryBuildBatch'
    { _rbbIdempotencyToken = Nothing,
      _rbbRetryType = Nothing,
      _rbbId = Nothing
    }

-- | A unique, case sensitive identifier you provide to ensure the idempotency of the @RetryBuildBatch@ request. The token is included in the @RetryBuildBatch@ request and is valid for five minutes. If you repeat the @RetryBuildBatch@ request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.
rbbIdempotencyToken :: Lens' RetryBuildBatch (Maybe Text)
rbbIdempotencyToken = lens _rbbIdempotencyToken (\s a -> s {_rbbIdempotencyToken = a})

-- | Specifies the type of retry to perform.
rbbRetryType :: Lens' RetryBuildBatch (Maybe RetryBuildBatchType)
rbbRetryType = lens _rbbRetryType (\s a -> s {_rbbRetryType = a})

-- | Specifies the identifier of the batch build to restart.
rbbId :: Lens' RetryBuildBatch (Maybe Text)
rbbId = lens _rbbId (\s a -> s {_rbbId = a})

instance AWSRequest RetryBuildBatch where
  type Rs RetryBuildBatch = RetryBuildBatchResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          RetryBuildBatchResponse'
            <$> (x .?> "buildBatch") <*> (pure (fromEnum s))
      )

instance Hashable RetryBuildBatch

instance NFData RetryBuildBatch

instance ToHeaders RetryBuildBatch where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.RetryBuildBatch" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RetryBuildBatch where
  toJSON RetryBuildBatch' {..} =
    object
      ( catMaybes
          [ ("idempotencyToken" .=) <$> _rbbIdempotencyToken,
            ("retryType" .=) <$> _rbbRetryType,
            ("id" .=) <$> _rbbId
          ]
      )

instance ToPath RetryBuildBatch where
  toPath = const "/"

instance ToQuery RetryBuildBatch where
  toQuery = const mempty

-- | /See:/ 'retryBuildBatchResponse' smart constructor.
data RetryBuildBatchResponse = RetryBuildBatchResponse'
  { _rbbrrsBuildBatch ::
      !(Maybe BuildBatch),
    _rbbrrsResponseStatus ::
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

-- | Creates a value of 'RetryBuildBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbbrrsBuildBatch' - Undocumented member.
--
-- * 'rbbrrsResponseStatus' - -- | The response status code.
retryBuildBatchResponse ::
  -- | 'rbbrrsResponseStatus'
  Int ->
  RetryBuildBatchResponse
retryBuildBatchResponse pResponseStatus_ =
  RetryBuildBatchResponse'
    { _rbbrrsBuildBatch =
        Nothing,
      _rbbrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
rbbrrsBuildBatch :: Lens' RetryBuildBatchResponse (Maybe BuildBatch)
rbbrrsBuildBatch = lens _rbbrrsBuildBatch (\s a -> s {_rbbrrsBuildBatch = a})

-- | -- | The response status code.
rbbrrsResponseStatus :: Lens' RetryBuildBatchResponse Int
rbbrrsResponseStatus = lens _rbbrrsResponseStatus (\s a -> s {_rbbrrsResponseStatus = a})

instance NFData RetryBuildBatchResponse
