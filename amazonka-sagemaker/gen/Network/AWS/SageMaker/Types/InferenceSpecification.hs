{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.InferenceSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.InferenceSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ModelPackageContainerDefinition
import Network.AWS.SageMaker.Types.ProductionVariantInstanceType
import Network.AWS.SageMaker.Types.TransformInstanceType

-- | Defines how to perform inference generation after a training job is run.
--
--
--
-- /See:/ 'inferenceSpecification' smart constructor.
data InferenceSpecification = InferenceSpecification'
  { _isSupportedTransformInstanceTypes ::
      !( Maybe
           ( List1
               TransformInstanceType
           )
       ),
    _isSupportedRealtimeInferenceInstanceTypes ::
      !( Maybe
           [ProductionVariantInstanceType]
       ),
    _isContainers ::
      !( List1
           ModelPackageContainerDefinition
       ),
    _isSupportedContentTypes ::
      ![Text],
    _isSupportedResponseMIMETypes ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InferenceSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isSupportedTransformInstanceTypes' - A list of the instance types on which a transformation job can be run or on which an endpoint can be deployed. This parameter is required for unversioned models, and optional for versioned models.
--
-- * 'isSupportedRealtimeInferenceInstanceTypes' - A list of the instance types that are used to generate inferences in real-time. This parameter is required for unversioned models, and optional for versioned models.
--
-- * 'isContainers' - The Amazon ECR registry path of the Docker image that contains the inference code.
--
-- * 'isSupportedContentTypes' - The supported MIME types for the input data.
--
-- * 'isSupportedResponseMIMETypes' - The supported MIME types for the output data.
inferenceSpecification ::
  -- | 'isContainers'
  NonEmpty ModelPackageContainerDefinition ->
  InferenceSpecification
inferenceSpecification pContainers_ =
  InferenceSpecification'
    { _isSupportedTransformInstanceTypes =
        Nothing,
      _isSupportedRealtimeInferenceInstanceTypes =
        Nothing,
      _isContainers = _List1 # pContainers_,
      _isSupportedContentTypes = mempty,
      _isSupportedResponseMIMETypes = mempty
    }

-- | A list of the instance types on which a transformation job can be run or on which an endpoint can be deployed. This parameter is required for unversioned models, and optional for versioned models.
isSupportedTransformInstanceTypes :: Lens' InferenceSpecification (Maybe (NonEmpty TransformInstanceType))
isSupportedTransformInstanceTypes = lens _isSupportedTransformInstanceTypes (\s a -> s {_isSupportedTransformInstanceTypes = a}) . mapping _List1

-- | A list of the instance types that are used to generate inferences in real-time. This parameter is required for unversioned models, and optional for versioned models.
isSupportedRealtimeInferenceInstanceTypes :: Lens' InferenceSpecification [ProductionVariantInstanceType]
isSupportedRealtimeInferenceInstanceTypes = lens _isSupportedRealtimeInferenceInstanceTypes (\s a -> s {_isSupportedRealtimeInferenceInstanceTypes = a}) . _Default . _Coerce

-- | The Amazon ECR registry path of the Docker image that contains the inference code.
isContainers :: Lens' InferenceSpecification (NonEmpty ModelPackageContainerDefinition)
isContainers = lens _isContainers (\s a -> s {_isContainers = a}) . _List1

-- | The supported MIME types for the input data.
isSupportedContentTypes :: Lens' InferenceSpecification [Text]
isSupportedContentTypes = lens _isSupportedContentTypes (\s a -> s {_isSupportedContentTypes = a}) . _Coerce

-- | The supported MIME types for the output data.
isSupportedResponseMIMETypes :: Lens' InferenceSpecification [Text]
isSupportedResponseMIMETypes = lens _isSupportedResponseMIMETypes (\s a -> s {_isSupportedResponseMIMETypes = a}) . _Coerce

instance FromJSON InferenceSpecification where
  parseJSON =
    withObject
      "InferenceSpecification"
      ( \x ->
          InferenceSpecification'
            <$> (x .:? "SupportedTransformInstanceTypes")
            <*> ( x .:? "SupportedRealtimeInferenceInstanceTypes"
                    .!= mempty
                )
            <*> (x .: "Containers")
            <*> (x .:? "SupportedContentTypes" .!= mempty)
            <*> (x .:? "SupportedResponseMIMETypes" .!= mempty)
      )

instance Hashable InferenceSpecification

instance NFData InferenceSpecification

instance ToJSON InferenceSpecification where
  toJSON InferenceSpecification' {..} =
    object
      ( catMaybes
          [ ("SupportedTransformInstanceTypes" .=)
              <$> _isSupportedTransformInstanceTypes,
            ("SupportedRealtimeInferenceInstanceTypes" .=)
              <$> _isSupportedRealtimeInferenceInstanceTypes,
            Just ("Containers" .= _isContainers),
            Just
              ( "SupportedContentTypes"
                  .= _isSupportedContentTypes
              ),
            Just
              ( "SupportedResponseMIMETypes"
                  .= _isSupportedResponseMIMETypes
              )
          ]
      )
