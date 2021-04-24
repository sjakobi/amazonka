{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageGroupSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageGroupSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ModelPackageGroupStatus

-- | Summary information about a model group.
--
--
--
-- /See:/ 'modelPackageGroupSummary' smart constructor.
data ModelPackageGroupSummary = ModelPackageGroupSummary'
  { _mpgsModelPackageGroupDescription ::
      !(Maybe Text),
    _mpgsModelPackageGroupName ::
      !Text,
    _mpgsModelPackageGroupARN ::
      !Text,
    _mpgsCreationTime ::
      !POSIX,
    _mpgsModelPackageGroupStatus ::
      !ModelPackageGroupStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModelPackageGroupSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpgsModelPackageGroupDescription' - A description of the model group.
--
-- * 'mpgsModelPackageGroupName' - The name of the model group.
--
-- * 'mpgsModelPackageGroupARN' - The Amazon Resource Name (ARN) of the model group.
--
-- * 'mpgsCreationTime' - The time that the model group was created.
--
-- * 'mpgsModelPackageGroupStatus' - The status of the model group.
modelPackageGroupSummary ::
  -- | 'mpgsModelPackageGroupName'
  Text ->
  -- | 'mpgsModelPackageGroupARN'
  Text ->
  -- | 'mpgsCreationTime'
  UTCTime ->
  -- | 'mpgsModelPackageGroupStatus'
  ModelPackageGroupStatus ->
  ModelPackageGroupSummary
modelPackageGroupSummary
  pModelPackageGroupName_
  pModelPackageGroupARN_
  pCreationTime_
  pModelPackageGroupStatus_ =
    ModelPackageGroupSummary'
      { _mpgsModelPackageGroupDescription =
          Nothing,
        _mpgsModelPackageGroupName =
          pModelPackageGroupName_,
        _mpgsModelPackageGroupARN =
          pModelPackageGroupARN_,
        _mpgsCreationTime = _Time # pCreationTime_,
        _mpgsModelPackageGroupStatus =
          pModelPackageGroupStatus_
      }

-- | A description of the model group.
mpgsModelPackageGroupDescription :: Lens' ModelPackageGroupSummary (Maybe Text)
mpgsModelPackageGroupDescription = lens _mpgsModelPackageGroupDescription (\s a -> s {_mpgsModelPackageGroupDescription = a})

-- | The name of the model group.
mpgsModelPackageGroupName :: Lens' ModelPackageGroupSummary Text
mpgsModelPackageGroupName = lens _mpgsModelPackageGroupName (\s a -> s {_mpgsModelPackageGroupName = a})

-- | The Amazon Resource Name (ARN) of the model group.
mpgsModelPackageGroupARN :: Lens' ModelPackageGroupSummary Text
mpgsModelPackageGroupARN = lens _mpgsModelPackageGroupARN (\s a -> s {_mpgsModelPackageGroupARN = a})

-- | The time that the model group was created.
mpgsCreationTime :: Lens' ModelPackageGroupSummary UTCTime
mpgsCreationTime = lens _mpgsCreationTime (\s a -> s {_mpgsCreationTime = a}) . _Time

-- | The status of the model group.
mpgsModelPackageGroupStatus :: Lens' ModelPackageGroupSummary ModelPackageGroupStatus
mpgsModelPackageGroupStatus = lens _mpgsModelPackageGroupStatus (\s a -> s {_mpgsModelPackageGroupStatus = a})

instance FromJSON ModelPackageGroupSummary where
  parseJSON =
    withObject
      "ModelPackageGroupSummary"
      ( \x ->
          ModelPackageGroupSummary'
            <$> (x .:? "ModelPackageGroupDescription")
            <*> (x .: "ModelPackageGroupName")
            <*> (x .: "ModelPackageGroupArn")
            <*> (x .: "CreationTime")
            <*> (x .: "ModelPackageGroupStatus")
      )

instance Hashable ModelPackageGroupSummary

instance NFData ModelPackageGroupSummary
