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
-- Module      : Network.AWS.SageMaker.UpdateExperiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds, updates, or removes the description of an experiment. Updates the display name of an experiment.
module Network.AWS.SageMaker.UpdateExperiment
  ( -- * Creating a Request
    updateExperiment,
    UpdateExperiment,

    -- * Request Lenses
    ueDescription,
    ueDisplayName,
    ueExperimentName,

    -- * Destructuring the Response
    updateExperimentResponse,
    UpdateExperimentResponse,

    -- * Response Lenses
    uerersExperimentARN,
    uerersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateExperiment' smart constructor.
data UpdateExperiment = UpdateExperiment'
  { _ueDescription ::
      !(Maybe Text),
    _ueDisplayName :: !(Maybe Text),
    _ueExperimentName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateExperiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueDescription' - The description of the experiment.
--
-- * 'ueDisplayName' - The name of the experiment as displayed. The name doesn't need to be unique. If @DisplayName@ isn't specified, @ExperimentName@ is displayed.
--
-- * 'ueExperimentName' - The name of the experiment to update.
updateExperiment ::
  -- | 'ueExperimentName'
  Text ->
  UpdateExperiment
updateExperiment pExperimentName_ =
  UpdateExperiment'
    { _ueDescription = Nothing,
      _ueDisplayName = Nothing,
      _ueExperimentName = pExperimentName_
    }

-- | The description of the experiment.
ueDescription :: Lens' UpdateExperiment (Maybe Text)
ueDescription = lens _ueDescription (\s a -> s {_ueDescription = a})

-- | The name of the experiment as displayed. The name doesn't need to be unique. If @DisplayName@ isn't specified, @ExperimentName@ is displayed.
ueDisplayName :: Lens' UpdateExperiment (Maybe Text)
ueDisplayName = lens _ueDisplayName (\s a -> s {_ueDisplayName = a})

-- | The name of the experiment to update.
ueExperimentName :: Lens' UpdateExperiment Text
ueExperimentName = lens _ueExperimentName (\s a -> s {_ueExperimentName = a})

instance AWSRequest UpdateExperiment where
  type Rs UpdateExperiment = UpdateExperimentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateExperimentResponse'
            <$> (x .?> "ExperimentArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateExperiment

instance NFData UpdateExperiment

instance ToHeaders UpdateExperiment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateExperiment" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateExperiment where
  toJSON UpdateExperiment' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _ueDescription,
            ("DisplayName" .=) <$> _ueDisplayName,
            Just ("ExperimentName" .= _ueExperimentName)
          ]
      )

instance ToPath UpdateExperiment where
  toPath = const "/"

instance ToQuery UpdateExperiment where
  toQuery = const mempty

-- | /See:/ 'updateExperimentResponse' smart constructor.
data UpdateExperimentResponse = UpdateExperimentResponse'
  { _uerersExperimentARN ::
      !(Maybe Text),
    _uerersResponseStatus ::
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

-- | Creates a value of 'UpdateExperimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uerersExperimentARN' - The Amazon Resource Name (ARN) of the experiment.
--
-- * 'uerersResponseStatus' - -- | The response status code.
updateExperimentResponse ::
  -- | 'uerersResponseStatus'
  Int ->
  UpdateExperimentResponse
updateExperimentResponse pResponseStatus_ =
  UpdateExperimentResponse'
    { _uerersExperimentARN =
        Nothing,
      _uerersResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the experiment.
uerersExperimentARN :: Lens' UpdateExperimentResponse (Maybe Text)
uerersExperimentARN = lens _uerersExperimentARN (\s a -> s {_uerersExperimentARN = a})

-- | -- | The response status code.
uerersResponseStatus :: Lens' UpdateExperimentResponse Int
uerersResponseStatus = lens _uerersResponseStatus (\s a -> s {_uerersResponseStatus = a})

instance NFData UpdateExperimentResponse
