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
-- Module      : Network.AWS.MachineLearning.UpdateBatchPrediction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the @BatchPredictionName@ of a @BatchPrediction@ .
--
--
-- You can use the @GetBatchPrediction@ operation to view the contents of the updated data element.
module Network.AWS.MachineLearning.UpdateBatchPrediction
  ( -- * Creating a Request
    updateBatchPrediction,
    UpdateBatchPrediction,

    -- * Request Lenses
    ubpBatchPredictionId,
    ubpBatchPredictionName,

    -- * Destructuring the Response
    updateBatchPredictionResponse,
    UpdateBatchPredictionResponse,

    -- * Response Lenses
    ubprrsBatchPredictionId,
    ubprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateBatchPrediction' smart constructor.
data UpdateBatchPrediction = UpdateBatchPrediction'
  { _ubpBatchPredictionId ::
      !Text,
    _ubpBatchPredictionName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateBatchPrediction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubpBatchPredictionId' - The ID assigned to the @BatchPrediction@ during creation.
--
-- * 'ubpBatchPredictionName' - A new user-supplied name or description of the @BatchPrediction@ .
updateBatchPrediction ::
  -- | 'ubpBatchPredictionId'
  Text ->
  -- | 'ubpBatchPredictionName'
  Text ->
  UpdateBatchPrediction
updateBatchPrediction
  pBatchPredictionId_
  pBatchPredictionName_ =
    UpdateBatchPrediction'
      { _ubpBatchPredictionId =
          pBatchPredictionId_,
        _ubpBatchPredictionName = pBatchPredictionName_
      }

-- | The ID assigned to the @BatchPrediction@ during creation.
ubpBatchPredictionId :: Lens' UpdateBatchPrediction Text
ubpBatchPredictionId = lens _ubpBatchPredictionId (\s a -> s {_ubpBatchPredictionId = a})

-- | A new user-supplied name or description of the @BatchPrediction@ .
ubpBatchPredictionName :: Lens' UpdateBatchPrediction Text
ubpBatchPredictionName = lens _ubpBatchPredictionName (\s a -> s {_ubpBatchPredictionName = a})

instance AWSRequest UpdateBatchPrediction where
  type
    Rs UpdateBatchPrediction =
      UpdateBatchPredictionResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          UpdateBatchPredictionResponse'
            <$> (x .?> "BatchPredictionId") <*> (pure (fromEnum s))
      )

instance Hashable UpdateBatchPrediction

instance NFData UpdateBatchPrediction

instance ToHeaders UpdateBatchPrediction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonML_20141212.UpdateBatchPrediction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateBatchPrediction where
  toJSON UpdateBatchPrediction' {..} =
    object
      ( catMaybes
          [ Just ("BatchPredictionId" .= _ubpBatchPredictionId),
            Just
              ("BatchPredictionName" .= _ubpBatchPredictionName)
          ]
      )

instance ToPath UpdateBatchPrediction where
  toPath = const "/"

instance ToQuery UpdateBatchPrediction where
  toQuery = const mempty

-- | Represents the output of an @UpdateBatchPrediction@ operation.
--
--
-- You can see the updated content by using the @GetBatchPrediction@ operation.
--
--
-- /See:/ 'updateBatchPredictionResponse' smart constructor.
data UpdateBatchPredictionResponse = UpdateBatchPredictionResponse'
  { _ubprrsBatchPredictionId ::
      !( Maybe
           Text
       ),
    _ubprrsResponseStatus ::
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

-- | Creates a value of 'UpdateBatchPredictionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubprrsBatchPredictionId' - The ID assigned to the @BatchPrediction@ during creation. This value should be identical to the value of the @BatchPredictionId@ in the request.
--
-- * 'ubprrsResponseStatus' - -- | The response status code.
updateBatchPredictionResponse ::
  -- | 'ubprrsResponseStatus'
  Int ->
  UpdateBatchPredictionResponse
updateBatchPredictionResponse pResponseStatus_ =
  UpdateBatchPredictionResponse'
    { _ubprrsBatchPredictionId =
        Nothing,
      _ubprrsResponseStatus = pResponseStatus_
    }

-- | The ID assigned to the @BatchPrediction@ during creation. This value should be identical to the value of the @BatchPredictionId@ in the request.
ubprrsBatchPredictionId :: Lens' UpdateBatchPredictionResponse (Maybe Text)
ubprrsBatchPredictionId = lens _ubprrsBatchPredictionId (\s a -> s {_ubprrsBatchPredictionId = a})

-- | -- | The response status code.
ubprrsResponseStatus :: Lens' UpdateBatchPredictionResponse Int
ubprrsResponseStatus = lens _ubprrsResponseStatus (\s a -> s {_ubprrsResponseStatus = a})

instance NFData UpdateBatchPredictionResponse
