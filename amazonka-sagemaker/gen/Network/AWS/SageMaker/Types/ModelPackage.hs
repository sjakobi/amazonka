{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackage where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.InferenceSpecification
import Network.AWS.SageMaker.Types.MetadataProperties
import Network.AWS.SageMaker.Types.ModelApprovalStatus
import Network.AWS.SageMaker.Types.ModelMetrics
import Network.AWS.SageMaker.Types.ModelPackageStatus
import Network.AWS.SageMaker.Types.ModelPackageStatusDetails
import Network.AWS.SageMaker.Types.ModelPackageValidationSpecification
import Network.AWS.SageMaker.Types.SourceAlgorithmSpecification
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.UserContext

-- | A versioned model that can be deployed for SageMaker inference.
--
--
--
-- /See:/ 'modelPackage' smart constructor.
data ModelPackage = ModelPackage'
  { _mpSourceAlgorithmSpecification ::
      !(Maybe SourceAlgorithmSpecification),
    _mpModelPackageVersion :: !(Maybe Nat),
    _mpMetadataProperties ::
      !(Maybe MetadataProperties),
    _mpCreationTime :: !(Maybe POSIX),
    _mpValidationSpecification ::
      !(Maybe ModelPackageValidationSpecification),
    _mpModelPackageStatusDetails ::
      !(Maybe ModelPackageStatusDetails),
    _mpModelMetrics :: !(Maybe ModelMetrics),
    _mpCertifyForMarketplace :: !(Maybe Bool),
    _mpModelPackageName :: !(Maybe Text),
    _mpModelApprovalStatus ::
      !(Maybe ModelApprovalStatus),
    _mpApprovalDescription :: !(Maybe Text),
    _mpTags :: !(Maybe [Tag]),
    _mpModelPackageStatus ::
      !(Maybe ModelPackageStatus),
    _mpLastModifiedTime :: !(Maybe POSIX),
    _mpInferenceSpecification ::
      !(Maybe InferenceSpecification),
    _mpModelPackageDescription :: !(Maybe Text),
    _mpCreatedBy :: !(Maybe UserContext),
    _mpModelPackageARN :: !(Maybe Text),
    _mpLastModifiedBy :: !(Maybe UserContext),
    _mpModelPackageGroupName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpSourceAlgorithmSpecification' - Undocumented member.
--
-- * 'mpModelPackageVersion' - The version number of a versioned model.
--
-- * 'mpMetadataProperties' - Undocumented member.
--
-- * 'mpCreationTime' - The time that the model package was created.
--
-- * 'mpValidationSpecification' - Undocumented member.
--
-- * 'mpModelPackageStatusDetails' - Undocumented member.
--
-- * 'mpModelMetrics' - Metrics for the model.
--
-- * 'mpCertifyForMarketplace' - Whether the model package is to be certified to be listed on AWS Marketplace. For information about listing model packages on AWS Marketplace, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-mkt-list.html List Your Algorithm or Model Package on AWS Marketplace> .
--
-- * 'mpModelPackageName' - The name of the model.
--
-- * 'mpModelApprovalStatus' - The approval status of the model. This can be one of the following values.     * @APPROVED@ - The model is approved     * @REJECTED@ - The model is rejected.     * @PENDING_MANUAL_APPROVAL@ - The model is waiting for manual approval.
--
-- * 'mpApprovalDescription' - A description provided when the model approval is set.
--
-- * 'mpTags' - A list of the tags associated with the model package. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
--
-- * 'mpModelPackageStatus' - The status of the model package. This can be one of the following values.     * @PENDING@ - The model package is pending being created.     * @IN_PROGRESS@ - The model package is in the process of being created.     * @COMPLETED@ - The model package was successfully created.     * @FAILED@ - The model package failed.     * @DELETING@ - The model package is in the process of being deleted.
--
-- * 'mpLastModifiedTime' - The last time the model package was modified.
--
-- * 'mpInferenceSpecification' - Undocumented member.
--
-- * 'mpModelPackageDescription' - The description of the model package.
--
-- * 'mpCreatedBy' - Undocumented member.
--
-- * 'mpModelPackageARN' - The Amazon Resource Name (ARN) of the model package.
--
-- * 'mpLastModifiedBy' - Undocumented member.
--
-- * 'mpModelPackageGroupName' - The model group to which the model belongs.
modelPackage ::
  ModelPackage
modelPackage =
  ModelPackage'
    { _mpSourceAlgorithmSpecification =
        Nothing,
      _mpModelPackageVersion = Nothing,
      _mpMetadataProperties = Nothing,
      _mpCreationTime = Nothing,
      _mpValidationSpecification = Nothing,
      _mpModelPackageStatusDetails = Nothing,
      _mpModelMetrics = Nothing,
      _mpCertifyForMarketplace = Nothing,
      _mpModelPackageName = Nothing,
      _mpModelApprovalStatus = Nothing,
      _mpApprovalDescription = Nothing,
      _mpTags = Nothing,
      _mpModelPackageStatus = Nothing,
      _mpLastModifiedTime = Nothing,
      _mpInferenceSpecification = Nothing,
      _mpModelPackageDescription = Nothing,
      _mpCreatedBy = Nothing,
      _mpModelPackageARN = Nothing,
      _mpLastModifiedBy = Nothing,
      _mpModelPackageGroupName = Nothing
    }

-- | Undocumented member.
mpSourceAlgorithmSpecification :: Lens' ModelPackage (Maybe SourceAlgorithmSpecification)
mpSourceAlgorithmSpecification = lens _mpSourceAlgorithmSpecification (\s a -> s {_mpSourceAlgorithmSpecification = a})

-- | The version number of a versioned model.
mpModelPackageVersion :: Lens' ModelPackage (Maybe Natural)
mpModelPackageVersion = lens _mpModelPackageVersion (\s a -> s {_mpModelPackageVersion = a}) . mapping _Nat

-- | Undocumented member.
mpMetadataProperties :: Lens' ModelPackage (Maybe MetadataProperties)
mpMetadataProperties = lens _mpMetadataProperties (\s a -> s {_mpMetadataProperties = a})

-- | The time that the model package was created.
mpCreationTime :: Lens' ModelPackage (Maybe UTCTime)
mpCreationTime = lens _mpCreationTime (\s a -> s {_mpCreationTime = a}) . mapping _Time

-- | Undocumented member.
mpValidationSpecification :: Lens' ModelPackage (Maybe ModelPackageValidationSpecification)
mpValidationSpecification = lens _mpValidationSpecification (\s a -> s {_mpValidationSpecification = a})

-- | Undocumented member.
mpModelPackageStatusDetails :: Lens' ModelPackage (Maybe ModelPackageStatusDetails)
mpModelPackageStatusDetails = lens _mpModelPackageStatusDetails (\s a -> s {_mpModelPackageStatusDetails = a})

-- | Metrics for the model.
mpModelMetrics :: Lens' ModelPackage (Maybe ModelMetrics)
mpModelMetrics = lens _mpModelMetrics (\s a -> s {_mpModelMetrics = a})

-- | Whether the model package is to be certified to be listed on AWS Marketplace. For information about listing model packages on AWS Marketplace, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-mkt-list.html List Your Algorithm or Model Package on AWS Marketplace> .
mpCertifyForMarketplace :: Lens' ModelPackage (Maybe Bool)
mpCertifyForMarketplace = lens _mpCertifyForMarketplace (\s a -> s {_mpCertifyForMarketplace = a})

-- | The name of the model.
mpModelPackageName :: Lens' ModelPackage (Maybe Text)
mpModelPackageName = lens _mpModelPackageName (\s a -> s {_mpModelPackageName = a})

-- | The approval status of the model. This can be one of the following values.     * @APPROVED@ - The model is approved     * @REJECTED@ - The model is rejected.     * @PENDING_MANUAL_APPROVAL@ - The model is waiting for manual approval.
mpModelApprovalStatus :: Lens' ModelPackage (Maybe ModelApprovalStatus)
mpModelApprovalStatus = lens _mpModelApprovalStatus (\s a -> s {_mpModelApprovalStatus = a})

-- | A description provided when the model approval is set.
mpApprovalDescription :: Lens' ModelPackage (Maybe Text)
mpApprovalDescription = lens _mpApprovalDescription (\s a -> s {_mpApprovalDescription = a})

-- | A list of the tags associated with the model package. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
mpTags :: Lens' ModelPackage [Tag]
mpTags = lens _mpTags (\s a -> s {_mpTags = a}) . _Default . _Coerce

-- | The status of the model package. This can be one of the following values.     * @PENDING@ - The model package is pending being created.     * @IN_PROGRESS@ - The model package is in the process of being created.     * @COMPLETED@ - The model package was successfully created.     * @FAILED@ - The model package failed.     * @DELETING@ - The model package is in the process of being deleted.
mpModelPackageStatus :: Lens' ModelPackage (Maybe ModelPackageStatus)
mpModelPackageStatus = lens _mpModelPackageStatus (\s a -> s {_mpModelPackageStatus = a})

-- | The last time the model package was modified.
mpLastModifiedTime :: Lens' ModelPackage (Maybe UTCTime)
mpLastModifiedTime = lens _mpLastModifiedTime (\s a -> s {_mpLastModifiedTime = a}) . mapping _Time

-- | Undocumented member.
mpInferenceSpecification :: Lens' ModelPackage (Maybe InferenceSpecification)
mpInferenceSpecification = lens _mpInferenceSpecification (\s a -> s {_mpInferenceSpecification = a})

-- | The description of the model package.
mpModelPackageDescription :: Lens' ModelPackage (Maybe Text)
mpModelPackageDescription = lens _mpModelPackageDescription (\s a -> s {_mpModelPackageDescription = a})

-- | Undocumented member.
mpCreatedBy :: Lens' ModelPackage (Maybe UserContext)
mpCreatedBy = lens _mpCreatedBy (\s a -> s {_mpCreatedBy = a})

-- | The Amazon Resource Name (ARN) of the model package.
mpModelPackageARN :: Lens' ModelPackage (Maybe Text)
mpModelPackageARN = lens _mpModelPackageARN (\s a -> s {_mpModelPackageARN = a})

-- | Undocumented member.
mpLastModifiedBy :: Lens' ModelPackage (Maybe UserContext)
mpLastModifiedBy = lens _mpLastModifiedBy (\s a -> s {_mpLastModifiedBy = a})

-- | The model group to which the model belongs.
mpModelPackageGroupName :: Lens' ModelPackage (Maybe Text)
mpModelPackageGroupName = lens _mpModelPackageGroupName (\s a -> s {_mpModelPackageGroupName = a})

instance FromJSON ModelPackage where
  parseJSON =
    withObject
      "ModelPackage"
      ( \x ->
          ModelPackage'
            <$> (x .:? "SourceAlgorithmSpecification")
            <*> (x .:? "ModelPackageVersion")
            <*> (x .:? "MetadataProperties")
            <*> (x .:? "CreationTime")
            <*> (x .:? "ValidationSpecification")
            <*> (x .:? "ModelPackageStatusDetails")
            <*> (x .:? "ModelMetrics")
            <*> (x .:? "CertifyForMarketplace")
            <*> (x .:? "ModelPackageName")
            <*> (x .:? "ModelApprovalStatus")
            <*> (x .:? "ApprovalDescription")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "ModelPackageStatus")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "InferenceSpecification")
            <*> (x .:? "ModelPackageDescription")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "ModelPackageArn")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "ModelPackageGroupName")
      )

instance Hashable ModelPackage

instance NFData ModelPackage
