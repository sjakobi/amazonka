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
-- Module      : Network.AWS.MachineLearning.DeleteEvaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assigns the @DELETED@ status to an @Evaluation@ , rendering it unusable.
--
--
-- After invoking the @DeleteEvaluation@ operation, you can use the @GetEvaluation@ operation to verify that the status of the @Evaluation@ changed to @DELETED@ .
--
-- ____Caution__
-- The results of the @DeleteEvaluation@ operation are irreversible.
--
-- __
module Network.AWS.MachineLearning.DeleteEvaluation
  ( -- * Creating a Request
    deleteEvaluation,
    DeleteEvaluation,

    -- * Request Lenses
    deEvaluationId,

    -- * Destructuring the Response
    deleteEvaluationResponse,
    DeleteEvaluationResponse,

    -- * Response Lenses
    delrsEvaluationId,
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteEvaluation' smart constructor.
newtype DeleteEvaluation = DeleteEvaluation'
  { _deEvaluationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteEvaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deEvaluationId' - A user-supplied ID that uniquely identifies the @Evaluation@ to delete.
deleteEvaluation ::
  -- | 'deEvaluationId'
  Text ->
  DeleteEvaluation
deleteEvaluation pEvaluationId_ =
  DeleteEvaluation' {_deEvaluationId = pEvaluationId_}

-- | A user-supplied ID that uniquely identifies the @Evaluation@ to delete.
deEvaluationId :: Lens' DeleteEvaluation Text
deEvaluationId = lens _deEvaluationId (\s a -> s {_deEvaluationId = a})

instance AWSRequest DeleteEvaluation where
  type Rs DeleteEvaluation = DeleteEvaluationResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          DeleteEvaluationResponse'
            <$> (x .?> "EvaluationId") <*> (pure (fromEnum s))
      )

instance Hashable DeleteEvaluation

instance NFData DeleteEvaluation

instance ToHeaders DeleteEvaluation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.DeleteEvaluation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteEvaluation where
  toJSON DeleteEvaluation' {..} =
    object
      ( catMaybes
          [Just ("EvaluationId" .= _deEvaluationId)]
      )

instance ToPath DeleteEvaluation where
  toPath = const "/"

instance ToQuery DeleteEvaluation where
  toQuery = const mempty

-- | Represents the output of a @DeleteEvaluation@ operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.
--
--
-- You can use the @GetEvaluation@ operation and check the value of the @Status@ parameter to see whether an @Evaluation@ is marked as @DELETED@ .
--
--
-- /See:/ 'deleteEvaluationResponse' smart constructor.
data DeleteEvaluationResponse = DeleteEvaluationResponse'
  { _delrsEvaluationId ::
      !(Maybe Text),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteEvaluationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsEvaluationId' - A user-supplied ID that uniquely identifies the @Evaluation@ . This value should be identical to the value of the @EvaluationId@ in the request.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteEvaluationResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteEvaluationResponse
deleteEvaluationResponse pResponseStatus_ =
  DeleteEvaluationResponse'
    { _delrsEvaluationId =
        Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | A user-supplied ID that uniquely identifies the @Evaluation@ . This value should be identical to the value of the @EvaluationId@ in the request.
delrsEvaluationId :: Lens' DeleteEvaluationResponse (Maybe Text)
delrsEvaluationId = lens _delrsEvaluationId (\s a -> s {_delrsEvaluationId = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteEvaluationResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteEvaluationResponse
