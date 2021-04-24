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
-- Module      : Network.AWS.Transcribe.CreateLanguageModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom language model. Use Amazon S3 prefixes to provide the location of your input files. The time it takes to create your model depends on the size of your training data.
module Network.AWS.Transcribe.CreateLanguageModel
  ( -- * Creating a Request
    createLanguageModel,
    CreateLanguageModel,

    -- * Request Lenses
    clmLanguageCode,
    clmBaseModelName,
    clmModelName,
    clmInputDataConfig,

    -- * Destructuring the Response
    createLanguageModelResponse,
    CreateLanguageModelResponse,

    -- * Response Lenses
    clmrrsLanguageCode,
    clmrrsInputDataConfig,
    clmrrsModelStatus,
    clmrrsModelName,
    clmrrsBaseModelName,
    clmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'createLanguageModel' smart constructor.
data CreateLanguageModel = CreateLanguageModel'
  { _clmLanguageCode ::
      !CLMLanguageCode,
    _clmBaseModelName ::
      !BaseModelName,
    _clmModelName :: !Text,
    _clmInputDataConfig ::
      !InputDataConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateLanguageModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clmLanguageCode' - The language of the input text you're using to train your custom language model.
--
-- * 'clmBaseModelName' - The Amazon Transcribe standard language model, or base model used to create your custom language model. If you want to use your custom language model to transcribe audio with a sample rate of 16 kHz or greater, choose @Wideband@ . If you want to use your custom language model to transcribe audio with a sample rate that is less than 16 kHz, choose @Narrowband@ .
--
-- * 'clmModelName' - The name you choose for your custom language model when you create it.
--
-- * 'clmInputDataConfig' - Contains the data access role and the Amazon S3 prefixes to read the required input files to create a custom language model.
createLanguageModel ::
  -- | 'clmLanguageCode'
  CLMLanguageCode ->
  -- | 'clmBaseModelName'
  BaseModelName ->
  -- | 'clmModelName'
  Text ->
  -- | 'clmInputDataConfig'
  InputDataConfig ->
  CreateLanguageModel
createLanguageModel
  pLanguageCode_
  pBaseModelName_
  pModelName_
  pInputDataConfig_ =
    CreateLanguageModel'
      { _clmLanguageCode =
          pLanguageCode_,
        _clmBaseModelName = pBaseModelName_,
        _clmModelName = pModelName_,
        _clmInputDataConfig = pInputDataConfig_
      }

-- | The language of the input text you're using to train your custom language model.
clmLanguageCode :: Lens' CreateLanguageModel CLMLanguageCode
clmLanguageCode = lens _clmLanguageCode (\s a -> s {_clmLanguageCode = a})

-- | The Amazon Transcribe standard language model, or base model used to create your custom language model. If you want to use your custom language model to transcribe audio with a sample rate of 16 kHz or greater, choose @Wideband@ . If you want to use your custom language model to transcribe audio with a sample rate that is less than 16 kHz, choose @Narrowband@ .
clmBaseModelName :: Lens' CreateLanguageModel BaseModelName
clmBaseModelName = lens _clmBaseModelName (\s a -> s {_clmBaseModelName = a})

-- | The name you choose for your custom language model when you create it.
clmModelName :: Lens' CreateLanguageModel Text
clmModelName = lens _clmModelName (\s a -> s {_clmModelName = a})

-- | Contains the data access role and the Amazon S3 prefixes to read the required input files to create a custom language model.
clmInputDataConfig :: Lens' CreateLanguageModel InputDataConfig
clmInputDataConfig = lens _clmInputDataConfig (\s a -> s {_clmInputDataConfig = a})

instance AWSRequest CreateLanguageModel where
  type
    Rs CreateLanguageModel =
      CreateLanguageModelResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          CreateLanguageModelResponse'
            <$> (x .?> "LanguageCode")
            <*> (x .?> "InputDataConfig")
            <*> (x .?> "ModelStatus")
            <*> (x .?> "ModelName")
            <*> (x .?> "BaseModelName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateLanguageModel

instance NFData CreateLanguageModel

instance ToHeaders CreateLanguageModel where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.CreateLanguageModel" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateLanguageModel where
  toJSON CreateLanguageModel' {..} =
    object
      ( catMaybes
          [ Just ("LanguageCode" .= _clmLanguageCode),
            Just ("BaseModelName" .= _clmBaseModelName),
            Just ("ModelName" .= _clmModelName),
            Just ("InputDataConfig" .= _clmInputDataConfig)
          ]
      )

instance ToPath CreateLanguageModel where
  toPath = const "/"

instance ToQuery CreateLanguageModel where
  toQuery = const mempty

-- | /See:/ 'createLanguageModelResponse' smart constructor.
data CreateLanguageModelResponse = CreateLanguageModelResponse'
  { _clmrrsLanguageCode ::
      !( Maybe
           CLMLanguageCode
       ),
    _clmrrsInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _clmrrsModelStatus ::
      !( Maybe
           ModelStatus
       ),
    _clmrrsModelName ::
      !(Maybe Text),
    _clmrrsBaseModelName ::
      !( Maybe
           BaseModelName
       ),
    _clmrrsResponseStatus ::
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

-- | Creates a value of 'CreateLanguageModelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clmrrsLanguageCode' - The language code of the text you've used to create a custom language model.
--
-- * 'clmrrsInputDataConfig' - The data access role and Amazon S3 prefixes you've chosen to create your custom language model.
--
-- * 'clmrrsModelStatus' - The status of the custom language model. When the status is @COMPLETED@ the model is ready to use.
--
-- * 'clmrrsModelName' - The name you've chosen for your custom language model.
--
-- * 'clmrrsBaseModelName' - The Amazon Transcribe standard language model, or base model you've used to create a custom language model.
--
-- * 'clmrrsResponseStatus' - -- | The response status code.
createLanguageModelResponse ::
  -- | 'clmrrsResponseStatus'
  Int ->
  CreateLanguageModelResponse
createLanguageModelResponse pResponseStatus_ =
  CreateLanguageModelResponse'
    { _clmrrsLanguageCode =
        Nothing,
      _clmrrsInputDataConfig = Nothing,
      _clmrrsModelStatus = Nothing,
      _clmrrsModelName = Nothing,
      _clmrrsBaseModelName = Nothing,
      _clmrrsResponseStatus = pResponseStatus_
    }

-- | The language code of the text you've used to create a custom language model.
clmrrsLanguageCode :: Lens' CreateLanguageModelResponse (Maybe CLMLanguageCode)
clmrrsLanguageCode = lens _clmrrsLanguageCode (\s a -> s {_clmrrsLanguageCode = a})

-- | The data access role and Amazon S3 prefixes you've chosen to create your custom language model.
clmrrsInputDataConfig :: Lens' CreateLanguageModelResponse (Maybe InputDataConfig)
clmrrsInputDataConfig = lens _clmrrsInputDataConfig (\s a -> s {_clmrrsInputDataConfig = a})

-- | The status of the custom language model. When the status is @COMPLETED@ the model is ready to use.
clmrrsModelStatus :: Lens' CreateLanguageModelResponse (Maybe ModelStatus)
clmrrsModelStatus = lens _clmrrsModelStatus (\s a -> s {_clmrrsModelStatus = a})

-- | The name you've chosen for your custom language model.
clmrrsModelName :: Lens' CreateLanguageModelResponse (Maybe Text)
clmrrsModelName = lens _clmrrsModelName (\s a -> s {_clmrrsModelName = a})

-- | The Amazon Transcribe standard language model, or base model you've used to create a custom language model.
clmrrsBaseModelName :: Lens' CreateLanguageModelResponse (Maybe BaseModelName)
clmrrsBaseModelName = lens _clmrrsBaseModelName (\s a -> s {_clmrrsBaseModelName = a})

-- | -- | The response status code.
clmrrsResponseStatus :: Lens' CreateLanguageModelResponse Int
clmrrsResponseStatus = lens _clmrrsResponseStatus (\s a -> s {_clmrrsResponseStatus = a})

instance NFData CreateLanguageModelResponse
