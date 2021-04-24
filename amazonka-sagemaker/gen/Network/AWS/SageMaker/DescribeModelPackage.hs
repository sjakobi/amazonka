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
-- Module      : Network.AWS.SageMaker.DescribeModelPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the specified model package, which is used to create Amazon SageMaker models or list them on AWS Marketplace.
--
--
-- To create models in Amazon SageMaker, buyers can subscribe to model packages listed on AWS Marketplace.
module Network.AWS.SageMaker.DescribeModelPackage
  ( -- * Creating a Request
    describeModelPackage,
    DescribeModelPackage,

    -- * Request Lenses
    dModelPackageName,

    -- * Destructuring the Response
    describeModelPackageResponse,
    DescribeModelPackageResponse,

    -- * Response Lenses
    dmprrsSourceAlgorithmSpecification,
    dmprrsModelPackageVersion,
    dmprrsMetadataProperties,
    dmprrsValidationSpecification,
    dmprrsModelMetrics,
    dmprrsCertifyForMarketplace,
    dmprrsModelApprovalStatus,
    dmprrsApprovalDescription,
    dmprrsLastModifiedTime,
    dmprrsInferenceSpecification,
    dmprrsModelPackageDescription,
    dmprrsCreatedBy,
    dmprrsLastModifiedBy,
    dmprrsModelPackageGroupName,
    dmprrsResponseStatus,
    dmprrsModelPackageName,
    dmprrsModelPackageARN,
    dmprrsCreationTime,
    dmprrsModelPackageStatus,
    dmprrsModelPackageStatusDetails,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeModelPackage' smart constructor.
newtype DescribeModelPackage = DescribeModelPackage'
  { _dModelPackageName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeModelPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dModelPackageName' - The name of the model package to describe.
describeModelPackage ::
  -- | 'dModelPackageName'
  Text ->
  DescribeModelPackage
describeModelPackage pModelPackageName_ =
  DescribeModelPackage'
    { _dModelPackageName =
        pModelPackageName_
    }

-- | The name of the model package to describe.
dModelPackageName :: Lens' DescribeModelPackage Text
dModelPackageName = lens _dModelPackageName (\s a -> s {_dModelPackageName = a})

instance AWSRequest DescribeModelPackage where
  type
    Rs DescribeModelPackage =
      DescribeModelPackageResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeModelPackageResponse'
            <$> (x .?> "SourceAlgorithmSpecification")
            <*> (x .?> "ModelPackageVersion")
            <*> (x .?> "MetadataProperties")
            <*> (x .?> "ValidationSpecification")
            <*> (x .?> "ModelMetrics")
            <*> (x .?> "CertifyForMarketplace")
            <*> (x .?> "ModelApprovalStatus")
            <*> (x .?> "ApprovalDescription")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "InferenceSpecification")
            <*> (x .?> "ModelPackageDescription")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "ModelPackageGroupName")
            <*> (pure (fromEnum s))
            <*> (x .:> "ModelPackageName")
            <*> (x .:> "ModelPackageArn")
            <*> (x .:> "CreationTime")
            <*> (x .:> "ModelPackageStatus")
            <*> (x .:> "ModelPackageStatusDetails")
      )

instance Hashable DescribeModelPackage

instance NFData DescribeModelPackage

instance ToHeaders DescribeModelPackage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeModelPackage" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeModelPackage where
  toJSON DescribeModelPackage' {..} =
    object
      ( catMaybes
          [Just ("ModelPackageName" .= _dModelPackageName)]
      )

instance ToPath DescribeModelPackage where
  toPath = const "/"

instance ToQuery DescribeModelPackage where
  toQuery = const mempty

-- | /See:/ 'describeModelPackageResponse' smart constructor.
data DescribeModelPackageResponse = DescribeModelPackageResponse'
  { _dmprrsSourceAlgorithmSpecification ::
      !( Maybe
           SourceAlgorithmSpecification
       ),
    _dmprrsModelPackageVersion ::
      !(Maybe Nat),
    _dmprrsMetadataProperties ::
      !( Maybe
           MetadataProperties
       ),
    _dmprrsValidationSpecification ::
      !( Maybe
           ModelPackageValidationSpecification
       ),
    _dmprrsModelMetrics ::
      !( Maybe
           ModelMetrics
       ),
    _dmprrsCertifyForMarketplace ::
      !(Maybe Bool),
    _dmprrsModelApprovalStatus ::
      !( Maybe
           ModelApprovalStatus
       ),
    _dmprrsApprovalDescription ::
      !(Maybe Text),
    _dmprrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dmprrsInferenceSpecification ::
      !( Maybe
           InferenceSpecification
       ),
    _dmprrsModelPackageDescription ::
      !(Maybe Text),
    _dmprrsCreatedBy ::
      !( Maybe
           UserContext
       ),
    _dmprrsLastModifiedBy ::
      !( Maybe
           UserContext
       ),
    _dmprrsModelPackageGroupName ::
      !(Maybe Text),
    _dmprrsResponseStatus ::
      !Int,
    _dmprrsModelPackageName ::
      !Text,
    _dmprrsModelPackageARN ::
      !Text,
    _dmprrsCreationTime ::
      !POSIX,
    _dmprrsModelPackageStatus ::
      !ModelPackageStatus,
    _dmprrsModelPackageStatusDetails ::
      !ModelPackageStatusDetails
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeModelPackageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmprrsSourceAlgorithmSpecification' - Details about the algorithm that was used to create the model package.
--
-- * 'dmprrsModelPackageVersion' - The version of the model package.
--
-- * 'dmprrsMetadataProperties' - Undocumented member.
--
-- * 'dmprrsValidationSpecification' - Configurations for one or more transform jobs that Amazon SageMaker runs to test the model package.
--
-- * 'dmprrsModelMetrics' - Metrics for the model.
--
-- * 'dmprrsCertifyForMarketplace' - Whether the model package is certified for listing on AWS Marketplace.
--
-- * 'dmprrsModelApprovalStatus' - The approval status of the model package.
--
-- * 'dmprrsApprovalDescription' - A description provided for the model approval.
--
-- * 'dmprrsLastModifiedTime' - The last time the model package was modified.
--
-- * 'dmprrsInferenceSpecification' - Details about inference jobs that can be run with models based on this model package.
--
-- * 'dmprrsModelPackageDescription' - A brief summary of the model package.
--
-- * 'dmprrsCreatedBy' - Undocumented member.
--
-- * 'dmprrsLastModifiedBy' - Undocumented member.
--
-- * 'dmprrsModelPackageGroupName' - If the model is a versioned model, the name of the model group that the versioned model belongs to.
--
-- * 'dmprrsResponseStatus' - -- | The response status code.
--
-- * 'dmprrsModelPackageName' - The name of the model package being described.
--
-- * 'dmprrsModelPackageARN' - The Amazon Resource Name (ARN) of the model package.
--
-- * 'dmprrsCreationTime' - A timestamp specifying when the model package was created.
--
-- * 'dmprrsModelPackageStatus' - The current status of the model package.
--
-- * 'dmprrsModelPackageStatusDetails' - Details about the current status of the model package.
describeModelPackageResponse ::
  -- | 'dmprrsResponseStatus'
  Int ->
  -- | 'dmprrsModelPackageName'
  Text ->
  -- | 'dmprrsModelPackageARN'
  Text ->
  -- | 'dmprrsCreationTime'
  UTCTime ->
  -- | 'dmprrsModelPackageStatus'
  ModelPackageStatus ->
  -- | 'dmprrsModelPackageStatusDetails'
  ModelPackageStatusDetails ->
  DescribeModelPackageResponse
describeModelPackageResponse
  pResponseStatus_
  pModelPackageName_
  pModelPackageARN_
  pCreationTime_
  pModelPackageStatus_
  pModelPackageStatusDetails_ =
    DescribeModelPackageResponse'
      { _dmprrsSourceAlgorithmSpecification =
          Nothing,
        _dmprrsModelPackageVersion = Nothing,
        _dmprrsMetadataProperties = Nothing,
        _dmprrsValidationSpecification = Nothing,
        _dmprrsModelMetrics = Nothing,
        _dmprrsCertifyForMarketplace = Nothing,
        _dmprrsModelApprovalStatus = Nothing,
        _dmprrsApprovalDescription = Nothing,
        _dmprrsLastModifiedTime = Nothing,
        _dmprrsInferenceSpecification = Nothing,
        _dmprrsModelPackageDescription = Nothing,
        _dmprrsCreatedBy = Nothing,
        _dmprrsLastModifiedBy = Nothing,
        _dmprrsModelPackageGroupName = Nothing,
        _dmprrsResponseStatus = pResponseStatus_,
        _dmprrsModelPackageName = pModelPackageName_,
        _dmprrsModelPackageARN = pModelPackageARN_,
        _dmprrsCreationTime = _Time # pCreationTime_,
        _dmprrsModelPackageStatus =
          pModelPackageStatus_,
        _dmprrsModelPackageStatusDetails =
          pModelPackageStatusDetails_
      }

-- | Details about the algorithm that was used to create the model package.
dmprrsSourceAlgorithmSpecification :: Lens' DescribeModelPackageResponse (Maybe SourceAlgorithmSpecification)
dmprrsSourceAlgorithmSpecification = lens _dmprrsSourceAlgorithmSpecification (\s a -> s {_dmprrsSourceAlgorithmSpecification = a})

-- | The version of the model package.
dmprrsModelPackageVersion :: Lens' DescribeModelPackageResponse (Maybe Natural)
dmprrsModelPackageVersion = lens _dmprrsModelPackageVersion (\s a -> s {_dmprrsModelPackageVersion = a}) . mapping _Nat

-- | Undocumented member.
dmprrsMetadataProperties :: Lens' DescribeModelPackageResponse (Maybe MetadataProperties)
dmprrsMetadataProperties = lens _dmprrsMetadataProperties (\s a -> s {_dmprrsMetadataProperties = a})

-- | Configurations for one or more transform jobs that Amazon SageMaker runs to test the model package.
dmprrsValidationSpecification :: Lens' DescribeModelPackageResponse (Maybe ModelPackageValidationSpecification)
dmprrsValidationSpecification = lens _dmprrsValidationSpecification (\s a -> s {_dmprrsValidationSpecification = a})

-- | Metrics for the model.
dmprrsModelMetrics :: Lens' DescribeModelPackageResponse (Maybe ModelMetrics)
dmprrsModelMetrics = lens _dmprrsModelMetrics (\s a -> s {_dmprrsModelMetrics = a})

-- | Whether the model package is certified for listing on AWS Marketplace.
dmprrsCertifyForMarketplace :: Lens' DescribeModelPackageResponse (Maybe Bool)
dmprrsCertifyForMarketplace = lens _dmprrsCertifyForMarketplace (\s a -> s {_dmprrsCertifyForMarketplace = a})

-- | The approval status of the model package.
dmprrsModelApprovalStatus :: Lens' DescribeModelPackageResponse (Maybe ModelApprovalStatus)
dmprrsModelApprovalStatus = lens _dmprrsModelApprovalStatus (\s a -> s {_dmprrsModelApprovalStatus = a})

-- | A description provided for the model approval.
dmprrsApprovalDescription :: Lens' DescribeModelPackageResponse (Maybe Text)
dmprrsApprovalDescription = lens _dmprrsApprovalDescription (\s a -> s {_dmprrsApprovalDescription = a})

-- | The last time the model package was modified.
dmprrsLastModifiedTime :: Lens' DescribeModelPackageResponse (Maybe UTCTime)
dmprrsLastModifiedTime = lens _dmprrsLastModifiedTime (\s a -> s {_dmprrsLastModifiedTime = a}) . mapping _Time

-- | Details about inference jobs that can be run with models based on this model package.
dmprrsInferenceSpecification :: Lens' DescribeModelPackageResponse (Maybe InferenceSpecification)
dmprrsInferenceSpecification = lens _dmprrsInferenceSpecification (\s a -> s {_dmprrsInferenceSpecification = a})

-- | A brief summary of the model package.
dmprrsModelPackageDescription :: Lens' DescribeModelPackageResponse (Maybe Text)
dmprrsModelPackageDescription = lens _dmprrsModelPackageDescription (\s a -> s {_dmprrsModelPackageDescription = a})

-- | Undocumented member.
dmprrsCreatedBy :: Lens' DescribeModelPackageResponse (Maybe UserContext)
dmprrsCreatedBy = lens _dmprrsCreatedBy (\s a -> s {_dmprrsCreatedBy = a})

-- | Undocumented member.
dmprrsLastModifiedBy :: Lens' DescribeModelPackageResponse (Maybe UserContext)
dmprrsLastModifiedBy = lens _dmprrsLastModifiedBy (\s a -> s {_dmprrsLastModifiedBy = a})

-- | If the model is a versioned model, the name of the model group that the versioned model belongs to.
dmprrsModelPackageGroupName :: Lens' DescribeModelPackageResponse (Maybe Text)
dmprrsModelPackageGroupName = lens _dmprrsModelPackageGroupName (\s a -> s {_dmprrsModelPackageGroupName = a})

-- | -- | The response status code.
dmprrsResponseStatus :: Lens' DescribeModelPackageResponse Int
dmprrsResponseStatus = lens _dmprrsResponseStatus (\s a -> s {_dmprrsResponseStatus = a})

-- | The name of the model package being described.
dmprrsModelPackageName :: Lens' DescribeModelPackageResponse Text
dmprrsModelPackageName = lens _dmprrsModelPackageName (\s a -> s {_dmprrsModelPackageName = a})

-- | The Amazon Resource Name (ARN) of the model package.
dmprrsModelPackageARN :: Lens' DescribeModelPackageResponse Text
dmprrsModelPackageARN = lens _dmprrsModelPackageARN (\s a -> s {_dmprrsModelPackageARN = a})

-- | A timestamp specifying when the model package was created.
dmprrsCreationTime :: Lens' DescribeModelPackageResponse UTCTime
dmprrsCreationTime = lens _dmprrsCreationTime (\s a -> s {_dmprrsCreationTime = a}) . _Time

-- | The current status of the model package.
dmprrsModelPackageStatus :: Lens' DescribeModelPackageResponse ModelPackageStatus
dmprrsModelPackageStatus = lens _dmprrsModelPackageStatus (\s a -> s {_dmprrsModelPackageStatus = a})

-- | Details about the current status of the model package.
dmprrsModelPackageStatusDetails :: Lens' DescribeModelPackageResponse ModelPackageStatusDetails
dmprrsModelPackageStatusDetails = lens _dmprrsModelPackageStatusDetails (\s a -> s {_dmprrsModelPackageStatusDetails = a})

instance NFData DescribeModelPackageResponse
