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
-- Module      : Network.AWS.SageMaker.CreateModelPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a model package that you can use to create Amazon SageMaker models or list on AWS Marketplace, or a versioned model that is part of a model group. Buyers can subscribe to model packages listed on AWS Marketplace to create models in Amazon SageMaker.
--
--
-- To create a model package by specifying a Docker container that contains your inference code and the Amazon S3 location of your model artifacts, provide values for @InferenceSpecification@ . To create a model from an algorithm resource that you created or subscribed to in AWS Marketplace, provide a value for @SourceAlgorithmSpecification@ .
module Network.AWS.SageMaker.CreateModelPackage
  ( -- * Creating a Request
    createModelPackage,
    CreateModelPackage,

    -- * Request Lenses
    cmpSourceAlgorithmSpecification,
    cmpMetadataProperties,
    cmpValidationSpecification,
    cmpModelMetrics,
    cmpCertifyForMarketplace,
    cmpModelPackageName,
    cmpModelApprovalStatus,
    cmpTags,
    cmpInferenceSpecification,
    cmpModelPackageDescription,
    cmpModelPackageGroupName,
    cmpClientToken,

    -- * Destructuring the Response
    createModelPackageResponse,
    CreateModelPackageResponse,

    -- * Response Lenses
    cmprrsResponseStatus,
    cmprrsModelPackageARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createModelPackage' smart constructor.
data CreateModelPackage = CreateModelPackage'
  { _cmpSourceAlgorithmSpecification ::
      !( Maybe
           SourceAlgorithmSpecification
       ),
    _cmpMetadataProperties ::
      !(Maybe MetadataProperties),
    _cmpValidationSpecification ::
      !( Maybe
           ModelPackageValidationSpecification
       ),
    _cmpModelMetrics ::
      !(Maybe ModelMetrics),
    _cmpCertifyForMarketplace ::
      !(Maybe Bool),
    _cmpModelPackageName ::
      !(Maybe Text),
    _cmpModelApprovalStatus ::
      !(Maybe ModelApprovalStatus),
    _cmpTags :: !(Maybe [Tag]),
    _cmpInferenceSpecification ::
      !(Maybe InferenceSpecification),
    _cmpModelPackageDescription ::
      !(Maybe Text),
    _cmpModelPackageGroupName ::
      !(Maybe Text),
    _cmpClientToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateModelPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmpSourceAlgorithmSpecification' - Details about the algorithm that was used to create the model package.
--
-- * 'cmpMetadataProperties' - Undocumented member.
--
-- * 'cmpValidationSpecification' - Specifies configurations for one or more transform jobs that Amazon SageMaker runs to test the model package.
--
-- * 'cmpModelMetrics' - A structure that contains model metrics reports.
--
-- * 'cmpCertifyForMarketplace' - Whether to certify the model package for listing on AWS Marketplace. This parameter is optional for unversioned models, and does not apply to versioned models.
--
-- * 'cmpModelPackageName' - The name of the model package. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen). This parameter is required for unversioned models. It is not applicable to versioned models.
--
-- * 'cmpModelApprovalStatus' - Whether the model is approved for deployment. This parameter is optional for versioned models, and does not apply to unversioned models. For versioned models, the value of this parameter must be set to @Approved@ to deploy the model.
--
-- * 'cmpTags' - A list of key value pairs associated with the model. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
--
-- * 'cmpInferenceSpecification' - Specifies details about inference jobs that can be run with models based on this model package, including the following:     * The Amazon ECR paths of containers that contain the inference code and model artifacts.     * The instance types that the model package supports for transform jobs and real-time endpoints used for inference.     * The input and output content formats that the model package supports for inference.
--
-- * 'cmpModelPackageDescription' - A description of the model package.
--
-- * 'cmpModelPackageGroupName' - The name of the model group that this model version belongs to. This parameter is required for versioned models, and does not apply to unversioned models.
--
-- * 'cmpClientToken' - A unique token that guarantees that the call to this API is idempotent.
createModelPackage ::
  CreateModelPackage
createModelPackage =
  CreateModelPackage'
    { _cmpSourceAlgorithmSpecification =
        Nothing,
      _cmpMetadataProperties = Nothing,
      _cmpValidationSpecification = Nothing,
      _cmpModelMetrics = Nothing,
      _cmpCertifyForMarketplace = Nothing,
      _cmpModelPackageName = Nothing,
      _cmpModelApprovalStatus = Nothing,
      _cmpTags = Nothing,
      _cmpInferenceSpecification = Nothing,
      _cmpModelPackageDescription = Nothing,
      _cmpModelPackageGroupName = Nothing,
      _cmpClientToken = Nothing
    }

-- | Details about the algorithm that was used to create the model package.
cmpSourceAlgorithmSpecification :: Lens' CreateModelPackage (Maybe SourceAlgorithmSpecification)
cmpSourceAlgorithmSpecification = lens _cmpSourceAlgorithmSpecification (\s a -> s {_cmpSourceAlgorithmSpecification = a})

-- | Undocumented member.
cmpMetadataProperties :: Lens' CreateModelPackage (Maybe MetadataProperties)
cmpMetadataProperties = lens _cmpMetadataProperties (\s a -> s {_cmpMetadataProperties = a})

-- | Specifies configurations for one or more transform jobs that Amazon SageMaker runs to test the model package.
cmpValidationSpecification :: Lens' CreateModelPackage (Maybe ModelPackageValidationSpecification)
cmpValidationSpecification = lens _cmpValidationSpecification (\s a -> s {_cmpValidationSpecification = a})

-- | A structure that contains model metrics reports.
cmpModelMetrics :: Lens' CreateModelPackage (Maybe ModelMetrics)
cmpModelMetrics = lens _cmpModelMetrics (\s a -> s {_cmpModelMetrics = a})

-- | Whether to certify the model package for listing on AWS Marketplace. This parameter is optional for unversioned models, and does not apply to versioned models.
cmpCertifyForMarketplace :: Lens' CreateModelPackage (Maybe Bool)
cmpCertifyForMarketplace = lens _cmpCertifyForMarketplace (\s a -> s {_cmpCertifyForMarketplace = a})

-- | The name of the model package. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen). This parameter is required for unversioned models. It is not applicable to versioned models.
cmpModelPackageName :: Lens' CreateModelPackage (Maybe Text)
cmpModelPackageName = lens _cmpModelPackageName (\s a -> s {_cmpModelPackageName = a})

-- | Whether the model is approved for deployment. This parameter is optional for versioned models, and does not apply to unversioned models. For versioned models, the value of this parameter must be set to @Approved@ to deploy the model.
cmpModelApprovalStatus :: Lens' CreateModelPackage (Maybe ModelApprovalStatus)
cmpModelApprovalStatus = lens _cmpModelApprovalStatus (\s a -> s {_cmpModelApprovalStatus = a})

-- | A list of key value pairs associated with the model. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
cmpTags :: Lens' CreateModelPackage [Tag]
cmpTags = lens _cmpTags (\s a -> s {_cmpTags = a}) . _Default . _Coerce

-- | Specifies details about inference jobs that can be run with models based on this model package, including the following:     * The Amazon ECR paths of containers that contain the inference code and model artifacts.     * The instance types that the model package supports for transform jobs and real-time endpoints used for inference.     * The input and output content formats that the model package supports for inference.
cmpInferenceSpecification :: Lens' CreateModelPackage (Maybe InferenceSpecification)
cmpInferenceSpecification = lens _cmpInferenceSpecification (\s a -> s {_cmpInferenceSpecification = a})

-- | A description of the model package.
cmpModelPackageDescription :: Lens' CreateModelPackage (Maybe Text)
cmpModelPackageDescription = lens _cmpModelPackageDescription (\s a -> s {_cmpModelPackageDescription = a})

-- | The name of the model group that this model version belongs to. This parameter is required for versioned models, and does not apply to unversioned models.
cmpModelPackageGroupName :: Lens' CreateModelPackage (Maybe Text)
cmpModelPackageGroupName = lens _cmpModelPackageGroupName (\s a -> s {_cmpModelPackageGroupName = a})

-- | A unique token that guarantees that the call to this API is idempotent.
cmpClientToken :: Lens' CreateModelPackage (Maybe Text)
cmpClientToken = lens _cmpClientToken (\s a -> s {_cmpClientToken = a})

instance AWSRequest CreateModelPackage where
  type
    Rs CreateModelPackage =
      CreateModelPackageResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateModelPackageResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "ModelPackageArn")
      )

instance Hashable CreateModelPackage

instance NFData CreateModelPackage

instance ToHeaders CreateModelPackage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateModelPackage" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateModelPackage where
  toJSON CreateModelPackage' {..} =
    object
      ( catMaybes
          [ ("SourceAlgorithmSpecification" .=)
              <$> _cmpSourceAlgorithmSpecification,
            ("MetadataProperties" .=) <$> _cmpMetadataProperties,
            ("ValidationSpecification" .=)
              <$> _cmpValidationSpecification,
            ("ModelMetrics" .=) <$> _cmpModelMetrics,
            ("CertifyForMarketplace" .=)
              <$> _cmpCertifyForMarketplace,
            ("ModelPackageName" .=) <$> _cmpModelPackageName,
            ("ModelApprovalStatus" .=)
              <$> _cmpModelApprovalStatus,
            ("Tags" .=) <$> _cmpTags,
            ("InferenceSpecification" .=)
              <$> _cmpInferenceSpecification,
            ("ModelPackageDescription" .=)
              <$> _cmpModelPackageDescription,
            ("ModelPackageGroupName" .=)
              <$> _cmpModelPackageGroupName,
            ("ClientToken" .=) <$> _cmpClientToken
          ]
      )

instance ToPath CreateModelPackage where
  toPath = const "/"

instance ToQuery CreateModelPackage where
  toQuery = const mempty

-- | /See:/ 'createModelPackageResponse' smart constructor.
data CreateModelPackageResponse = CreateModelPackageResponse'
  { _cmprrsResponseStatus ::
      !Int,
    _cmprrsModelPackageARN ::
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

-- | Creates a value of 'CreateModelPackageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmprrsResponseStatus' - -- | The response status code.
--
-- * 'cmprrsModelPackageARN' - The Amazon Resource Name (ARN) of the new model package.
createModelPackageResponse ::
  -- | 'cmprrsResponseStatus'
  Int ->
  -- | 'cmprrsModelPackageARN'
  Text ->
  CreateModelPackageResponse
createModelPackageResponse
  pResponseStatus_
  pModelPackageARN_ =
    CreateModelPackageResponse'
      { _cmprrsResponseStatus =
          pResponseStatus_,
        _cmprrsModelPackageARN = pModelPackageARN_
      }

-- | -- | The response status code.
cmprrsResponseStatus :: Lens' CreateModelPackageResponse Int
cmprrsResponseStatus = lens _cmprrsResponseStatus (\s a -> s {_cmprrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the new model package.
cmprrsModelPackageARN :: Lens' CreateModelPackageResponse Text
cmprrsModelPackageARN = lens _cmprrsModelPackageARN (\s a -> s {_cmprrsModelPackageARN = a})

instance NFData CreateModelPackageResponse
