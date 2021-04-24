{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageGroup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ModelPackageGroupStatus
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.UserContext

-- | A group of versioned models in the model registry.
--
--
--
-- /See:/ 'modelPackageGroup' smart constructor.
data ModelPackageGroup = ModelPackageGroup'
  { _mpgModelPackageGroupARN ::
      !(Maybe Text),
    _mpgCreationTime :: !(Maybe POSIX),
    _mpgModelPackageGroupDescription ::
      !(Maybe Text),
    _mpgTags :: !(Maybe [Tag]),
    _mpgModelPackageGroupStatus ::
      !(Maybe ModelPackageGroupStatus),
    _mpgCreatedBy ::
      !(Maybe UserContext),
    _mpgModelPackageGroupName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelPackageGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpgModelPackageGroupARN' - The Amazon Resource Name (ARN) of the model group.
--
-- * 'mpgCreationTime' - The time that the model group was created.
--
-- * 'mpgModelPackageGroupDescription' - The description for the model group.
--
-- * 'mpgTags' - A list of the tags associated with the model group. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
--
-- * 'mpgModelPackageGroupStatus' - The status of the model group. This can be one of the following values.     * @PENDING@ - The model group is pending being created.     * @IN_PROGRESS@ - The model group is in the process of being created.     * @COMPLETED@ - The model group was successfully created.     * @FAILED@ - The model group failed.     * @DELETING@ - The model group is in the process of being deleted.     * @DELETE_FAILED@ - SageMaker failed to delete the model group.
--
-- * 'mpgCreatedBy' - Undocumented member.
--
-- * 'mpgModelPackageGroupName' - The name of the model group.
modelPackageGroup ::
  ModelPackageGroup
modelPackageGroup =
  ModelPackageGroup'
    { _mpgModelPackageGroupARN =
        Nothing,
      _mpgCreationTime = Nothing,
      _mpgModelPackageGroupDescription = Nothing,
      _mpgTags = Nothing,
      _mpgModelPackageGroupStatus = Nothing,
      _mpgCreatedBy = Nothing,
      _mpgModelPackageGroupName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the model group.
mpgModelPackageGroupARN :: Lens' ModelPackageGroup (Maybe Text)
mpgModelPackageGroupARN = lens _mpgModelPackageGroupARN (\s a -> s {_mpgModelPackageGroupARN = a})

-- | The time that the model group was created.
mpgCreationTime :: Lens' ModelPackageGroup (Maybe UTCTime)
mpgCreationTime = lens _mpgCreationTime (\s a -> s {_mpgCreationTime = a}) . mapping _Time

-- | The description for the model group.
mpgModelPackageGroupDescription :: Lens' ModelPackageGroup (Maybe Text)
mpgModelPackageGroupDescription = lens _mpgModelPackageGroupDescription (\s a -> s {_mpgModelPackageGroupDescription = a})

-- | A list of the tags associated with the model group. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
mpgTags :: Lens' ModelPackageGroup [Tag]
mpgTags = lens _mpgTags (\s a -> s {_mpgTags = a}) . _Default . _Coerce

-- | The status of the model group. This can be one of the following values.     * @PENDING@ - The model group is pending being created.     * @IN_PROGRESS@ - The model group is in the process of being created.     * @COMPLETED@ - The model group was successfully created.     * @FAILED@ - The model group failed.     * @DELETING@ - The model group is in the process of being deleted.     * @DELETE_FAILED@ - SageMaker failed to delete the model group.
mpgModelPackageGroupStatus :: Lens' ModelPackageGroup (Maybe ModelPackageGroupStatus)
mpgModelPackageGroupStatus = lens _mpgModelPackageGroupStatus (\s a -> s {_mpgModelPackageGroupStatus = a})

-- | Undocumented member.
mpgCreatedBy :: Lens' ModelPackageGroup (Maybe UserContext)
mpgCreatedBy = lens _mpgCreatedBy (\s a -> s {_mpgCreatedBy = a})

-- | The name of the model group.
mpgModelPackageGroupName :: Lens' ModelPackageGroup (Maybe Text)
mpgModelPackageGroupName = lens _mpgModelPackageGroupName (\s a -> s {_mpgModelPackageGroupName = a})

instance FromJSON ModelPackageGroup where
  parseJSON =
    withObject
      "ModelPackageGroup"
      ( \x ->
          ModelPackageGroup'
            <$> (x .:? "ModelPackageGroupArn")
            <*> (x .:? "CreationTime")
            <*> (x .:? "ModelPackageGroupDescription")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "ModelPackageGroupStatus")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "ModelPackageGroupName")
      )

instance Hashable ModelPackageGroup

instance NFData ModelPackageGroup
