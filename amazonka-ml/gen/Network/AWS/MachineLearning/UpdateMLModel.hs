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
-- Module      : Network.AWS.MachineLearning.UpdateMLModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the @MLModelName@ and the @ScoreThreshold@ of an @MLModel@ .
--
--
-- You can use the @GetMLModel@ operation to view the contents of the updated data element.
module Network.AWS.MachineLearning.UpdateMLModel
  ( -- * Creating a Request
    updateMLModel,
    UpdateMLModel,

    -- * Request Lenses
    umlmScoreThreshold,
    umlmMLModelName,
    umlmMLModelId,

    -- * Destructuring the Response
    updateMLModelResponse,
    UpdateMLModelResponse,

    -- * Response Lenses
    umlmrrsMLModelId,
    umlmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateMLModel' smart constructor.
data UpdateMLModel = UpdateMLModel'
  { _umlmScoreThreshold ::
      !(Maybe Double),
    _umlmMLModelName :: !(Maybe Text),
    _umlmMLModelId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateMLModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlmScoreThreshold' - The @ScoreThreshold@ used in binary classification @MLModel@ that marks the boundary between a positive prediction and a negative prediction. Output values greater than or equal to the @ScoreThreshold@ receive a positive result from the @MLModel@ , such as @true@ . Output values less than the @ScoreThreshold@ receive a negative response from the @MLModel@ , such as @false@ .
--
-- * 'umlmMLModelName' - A user-supplied name or description of the @MLModel@ .
--
-- * 'umlmMLModelId' - The ID assigned to the @MLModel@ during creation.
updateMLModel ::
  -- | 'umlmMLModelId'
  Text ->
  UpdateMLModel
updateMLModel pMLModelId_ =
  UpdateMLModel'
    { _umlmScoreThreshold = Nothing,
      _umlmMLModelName = Nothing,
      _umlmMLModelId = pMLModelId_
    }

-- | The @ScoreThreshold@ used in binary classification @MLModel@ that marks the boundary between a positive prediction and a negative prediction. Output values greater than or equal to the @ScoreThreshold@ receive a positive result from the @MLModel@ , such as @true@ . Output values less than the @ScoreThreshold@ receive a negative response from the @MLModel@ , such as @false@ .
umlmScoreThreshold :: Lens' UpdateMLModel (Maybe Double)
umlmScoreThreshold = lens _umlmScoreThreshold (\s a -> s {_umlmScoreThreshold = a})

-- | A user-supplied name or description of the @MLModel@ .
umlmMLModelName :: Lens' UpdateMLModel (Maybe Text)
umlmMLModelName = lens _umlmMLModelName (\s a -> s {_umlmMLModelName = a})

-- | The ID assigned to the @MLModel@ during creation.
umlmMLModelId :: Lens' UpdateMLModel Text
umlmMLModelId = lens _umlmMLModelId (\s a -> s {_umlmMLModelId = a})

instance AWSRequest UpdateMLModel where
  type Rs UpdateMLModel = UpdateMLModelResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          UpdateMLModelResponse'
            <$> (x .?> "MLModelId") <*> (pure (fromEnum s))
      )

instance Hashable UpdateMLModel

instance NFData UpdateMLModel

instance ToHeaders UpdateMLModel where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.UpdateMLModel" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMLModel where
  toJSON UpdateMLModel' {..} =
    object
      ( catMaybes
          [ ("ScoreThreshold" .=) <$> _umlmScoreThreshold,
            ("MLModelName" .=) <$> _umlmMLModelName,
            Just ("MLModelId" .= _umlmMLModelId)
          ]
      )

instance ToPath UpdateMLModel where
  toPath = const "/"

instance ToQuery UpdateMLModel where
  toQuery = const mempty

-- | Represents the output of an @UpdateMLModel@ operation.
--
--
-- You can see the updated content by using the @GetMLModel@ operation.
--
--
-- /See:/ 'updateMLModelResponse' smart constructor.
data UpdateMLModelResponse = UpdateMLModelResponse'
  { _umlmrrsMLModelId ::
      !(Maybe Text),
    _umlmrrsResponseStatus ::
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

-- | Creates a value of 'UpdateMLModelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlmrrsMLModelId' - The ID assigned to the @MLModel@ during creation. This value should be identical to the value of the @MLModelID@ in the request.
--
-- * 'umlmrrsResponseStatus' - -- | The response status code.
updateMLModelResponse ::
  -- | 'umlmrrsResponseStatus'
  Int ->
  UpdateMLModelResponse
updateMLModelResponse pResponseStatus_ =
  UpdateMLModelResponse'
    { _umlmrrsMLModelId = Nothing,
      _umlmrrsResponseStatus = pResponseStatus_
    }

-- | The ID assigned to the @MLModel@ during creation. This value should be identical to the value of the @MLModelID@ in the request.
umlmrrsMLModelId :: Lens' UpdateMLModelResponse (Maybe Text)
umlmrrsMLModelId = lens _umlmrrsMLModelId (\s a -> s {_umlmrrsMLModelId = a})

-- | -- | The response status code.
umlmrrsResponseStatus :: Lens' UpdateMLModelResponse Int
umlmrrsResponseStatus = lens _umlmrrsResponseStatus (\s a -> s {_umlmrrsResponseStatus = a})

instance NFData UpdateMLModelResponse
