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
-- Module      : Network.AWS.Rekognition.StartProjectVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the running of the version of a model. Starting a model takes a while to complete. To check the current state of the model, use 'DescribeProjectVersions' .
--
--
-- Once the model is running, you can detect custom labels in new images by calling 'DetectCustomLabels' .
--
-- This operation requires permissions to perform the @rekognition:StartProjectVersion@ action.
module Network.AWS.Rekognition.StartProjectVersion
  ( -- * Creating a Request
    startProjectVersion,
    StartProjectVersion,

    -- * Request Lenses
    sProjectVersionARN,
    sMinInferenceUnits,

    -- * Destructuring the Response
    startProjectVersionResponse,
    StartProjectVersionResponse,

    -- * Response Lenses
    spvrrsStatus,
    spvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startProjectVersion' smart constructor.
data StartProjectVersion = StartProjectVersion'
  { _sProjectVersionARN ::
      !Text,
    _sMinInferenceUnits :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartProjectVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sProjectVersionARN' - The Amazon Resource Name(ARN) of the model version that you want to start.
--
-- * 'sMinInferenceUnits' - The minimum number of inference units to use. A single inference unit represents 1 hour of processing and can support up to 5 Transaction Pers Second (TPS). Use a higher number to increase the TPS throughput of your model. You are charged for the number of inference units that you use.
startProjectVersion ::
  -- | 'sProjectVersionARN'
  Text ->
  -- | 'sMinInferenceUnits'
  Natural ->
  StartProjectVersion
startProjectVersion
  pProjectVersionARN_
  pMinInferenceUnits_ =
    StartProjectVersion'
      { _sProjectVersionARN =
          pProjectVersionARN_,
        _sMinInferenceUnits = _Nat # pMinInferenceUnits_
      }

-- | The Amazon Resource Name(ARN) of the model version that you want to start.
sProjectVersionARN :: Lens' StartProjectVersion Text
sProjectVersionARN = lens _sProjectVersionARN (\s a -> s {_sProjectVersionARN = a})

-- | The minimum number of inference units to use. A single inference unit represents 1 hour of processing and can support up to 5 Transaction Pers Second (TPS). Use a higher number to increase the TPS throughput of your model. You are charged for the number of inference units that you use.
sMinInferenceUnits :: Lens' StartProjectVersion Natural
sMinInferenceUnits = lens _sMinInferenceUnits (\s a -> s {_sMinInferenceUnits = a}) . _Nat

instance AWSRequest StartProjectVersion where
  type
    Rs StartProjectVersion =
      StartProjectVersionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          StartProjectVersionResponse'
            <$> (x .?> "Status") <*> (pure (fromEnum s))
      )

instance Hashable StartProjectVersion

instance NFData StartProjectVersion

instance ToHeaders StartProjectVersion where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.StartProjectVersion" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartProjectVersion where
  toJSON StartProjectVersion' {..} =
    object
      ( catMaybes
          [ Just ("ProjectVersionArn" .= _sProjectVersionARN),
            Just ("MinInferenceUnits" .= _sMinInferenceUnits)
          ]
      )

instance ToPath StartProjectVersion where
  toPath = const "/"

instance ToQuery StartProjectVersion where
  toQuery = const mempty

-- | /See:/ 'startProjectVersionResponse' smart constructor.
data StartProjectVersionResponse = StartProjectVersionResponse'
  { _spvrrsStatus ::
      !( Maybe
           ProjectVersionStatus
       ),
    _spvrrsResponseStatus ::
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

-- | Creates a value of 'StartProjectVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spvrrsStatus' - The current running status of the model.
--
-- * 'spvrrsResponseStatus' - -- | The response status code.
startProjectVersionResponse ::
  -- | 'spvrrsResponseStatus'
  Int ->
  StartProjectVersionResponse
startProjectVersionResponse pResponseStatus_ =
  StartProjectVersionResponse'
    { _spvrrsStatus =
        Nothing,
      _spvrrsResponseStatus = pResponseStatus_
    }

-- | The current running status of the model.
spvrrsStatus :: Lens' StartProjectVersionResponse (Maybe ProjectVersionStatus)
spvrrsStatus = lens _spvrrsStatus (\s a -> s {_spvrrsStatus = a})

-- | -- | The response status code.
spvrrsResponseStatus :: Lens' StartProjectVersionResponse Int
spvrrsResponseStatus = lens _spvrrsResponseStatus (\s a -> s {_spvrrsResponseStatus = a})

instance NFData StartProjectVersionResponse
