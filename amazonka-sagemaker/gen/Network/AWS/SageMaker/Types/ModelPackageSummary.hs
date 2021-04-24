{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ModelApprovalStatus
import Network.AWS.SageMaker.Types.ModelPackageStatus

-- | Provides summary information about a model package.
--
--
--
-- /See:/ 'modelPackageSummary' smart constructor.
data ModelPackageSummary = ModelPackageSummary'
  { _mpsModelPackageVersion ::
      !(Maybe Nat),
    _mpsModelApprovalStatus ::
      !(Maybe ModelApprovalStatus),
    _mpsModelPackageDescription ::
      !(Maybe Text),
    _mpsModelPackageGroupName ::
      !(Maybe Text),
    _mpsModelPackageName :: !Text,
    _mpsModelPackageARN :: !Text,
    _mpsCreationTime :: !POSIX,
    _mpsModelPackageStatus ::
      !ModelPackageStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelPackageSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpsModelPackageVersion' - If the model package is a versioned model, the version of the model.
--
-- * 'mpsModelApprovalStatus' - The approval status of the model. This can be one of the following values.     * @APPROVED@ - The model is approved     * @REJECTED@ - The model is rejected.     * @PENDING_MANUAL_APPROVAL@ - The model is waiting for manual approval.
--
-- * 'mpsModelPackageDescription' - A brief description of the model package.
--
-- * 'mpsModelPackageGroupName' - If the model package is a versioned model, the model group that the versioned model belongs to.
--
-- * 'mpsModelPackageName' - The name of the model package.
--
-- * 'mpsModelPackageARN' - The Amazon Resource Name (ARN) of the model package.
--
-- * 'mpsCreationTime' - A timestamp that shows when the model package was created.
--
-- * 'mpsModelPackageStatus' - The overall status of the model package.
modelPackageSummary ::
  -- | 'mpsModelPackageName'
  Text ->
  -- | 'mpsModelPackageARN'
  Text ->
  -- | 'mpsCreationTime'
  UTCTime ->
  -- | 'mpsModelPackageStatus'
  ModelPackageStatus ->
  ModelPackageSummary
modelPackageSummary
  pModelPackageName_
  pModelPackageARN_
  pCreationTime_
  pModelPackageStatus_ =
    ModelPackageSummary'
      { _mpsModelPackageVersion =
          Nothing,
        _mpsModelApprovalStatus = Nothing,
        _mpsModelPackageDescription = Nothing,
        _mpsModelPackageGroupName = Nothing,
        _mpsModelPackageName = pModelPackageName_,
        _mpsModelPackageARN = pModelPackageARN_,
        _mpsCreationTime = _Time # pCreationTime_,
        _mpsModelPackageStatus = pModelPackageStatus_
      }

-- | If the model package is a versioned model, the version of the model.
mpsModelPackageVersion :: Lens' ModelPackageSummary (Maybe Natural)
mpsModelPackageVersion = lens _mpsModelPackageVersion (\s a -> s {_mpsModelPackageVersion = a}) . mapping _Nat

-- | The approval status of the model. This can be one of the following values.     * @APPROVED@ - The model is approved     * @REJECTED@ - The model is rejected.     * @PENDING_MANUAL_APPROVAL@ - The model is waiting for manual approval.
mpsModelApprovalStatus :: Lens' ModelPackageSummary (Maybe ModelApprovalStatus)
mpsModelApprovalStatus = lens _mpsModelApprovalStatus (\s a -> s {_mpsModelApprovalStatus = a})

-- | A brief description of the model package.
mpsModelPackageDescription :: Lens' ModelPackageSummary (Maybe Text)
mpsModelPackageDescription = lens _mpsModelPackageDescription (\s a -> s {_mpsModelPackageDescription = a})

-- | If the model package is a versioned model, the model group that the versioned model belongs to.
mpsModelPackageGroupName :: Lens' ModelPackageSummary (Maybe Text)
mpsModelPackageGroupName = lens _mpsModelPackageGroupName (\s a -> s {_mpsModelPackageGroupName = a})

-- | The name of the model package.
mpsModelPackageName :: Lens' ModelPackageSummary Text
mpsModelPackageName = lens _mpsModelPackageName (\s a -> s {_mpsModelPackageName = a})

-- | The Amazon Resource Name (ARN) of the model package.
mpsModelPackageARN :: Lens' ModelPackageSummary Text
mpsModelPackageARN = lens _mpsModelPackageARN (\s a -> s {_mpsModelPackageARN = a})

-- | A timestamp that shows when the model package was created.
mpsCreationTime :: Lens' ModelPackageSummary UTCTime
mpsCreationTime = lens _mpsCreationTime (\s a -> s {_mpsCreationTime = a}) . _Time

-- | The overall status of the model package.
mpsModelPackageStatus :: Lens' ModelPackageSummary ModelPackageStatus
mpsModelPackageStatus = lens _mpsModelPackageStatus (\s a -> s {_mpsModelPackageStatus = a})

instance FromJSON ModelPackageSummary where
  parseJSON =
    withObject
      "ModelPackageSummary"
      ( \x ->
          ModelPackageSummary'
            <$> (x .:? "ModelPackageVersion")
            <*> (x .:? "ModelApprovalStatus")
            <*> (x .:? "ModelPackageDescription")
            <*> (x .:? "ModelPackageGroupName")
            <*> (x .: "ModelPackageName")
            <*> (x .: "ModelPackageArn")
            <*> (x .: "CreationTime")
            <*> (x .: "ModelPackageStatus")
      )

instance Hashable ModelPackageSummary

instance NFData ModelPackageSummary
