{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.FeatureDefinition
import Network.AWS.SageMaker.Types.FeatureGroupStatus
import Network.AWS.SageMaker.Types.OfflineStoreConfig
import Network.AWS.SageMaker.Types.OfflineStoreStatus
import Network.AWS.SageMaker.Types.OnlineStoreConfig
import Network.AWS.SageMaker.Types.Tag

-- | Amazon SageMaker Feature Store stores features in a collection called Feature Group. A Feature Group can be visualized as a table which has rows, with a unique identifier for each row where each column in the table is a feature. In principle, a Feature Group is composed of features and values per features.
--
--
--
-- /See:/ 'featureGroup' smart constructor.
data FeatureGroup = FeatureGroup'
  { _fgFeatureGroupStatus ::
      !(Maybe FeatureGroupStatus),
    _fgOfflineStoreConfig ::
      !(Maybe OfflineStoreConfig),
    _fgCreationTime :: !(Maybe POSIX),
    _fgRoleARN :: !(Maybe Text),
    _fgFeatureGroupARN :: !(Maybe Text),
    _fgRecordIdentifierFeatureName ::
      !(Maybe Text),
    _fgFeatureDefinitions ::
      !(Maybe (List1 FeatureDefinition)),
    _fgOfflineStoreStatus ::
      !(Maybe OfflineStoreStatus),
    _fgEventTimeFeatureName :: !(Maybe Text),
    _fgFeatureGroupName :: !(Maybe Text),
    _fgFailureReason :: !(Maybe Text),
    _fgTags :: !(Maybe [Tag]),
    _fgDescription :: !(Maybe Text),
    _fgOnlineStoreConfig ::
      !(Maybe OnlineStoreConfig)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FeatureGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgFeatureGroupStatus' - A @FeatureGroup@ status.
--
-- * 'fgOfflineStoreConfig' - Undocumented member.
--
-- * 'fgCreationTime' - The time a @FeatureGroup@ was created.
--
-- * 'fgRoleARN' - The Amazon Resource Name (ARN) of the IAM execution role used to create the feature group.
--
-- * 'fgFeatureGroupARN' - The Amazon Resource Name (ARN) of a @FeatureGroup@ .
--
-- * 'fgRecordIdentifierFeatureName' - The name of the @Feature@ whose value uniquely identifies a @Record@ defined in the @FeatureGroup@ @FeatureDefinitions@ .
--
-- * 'fgFeatureDefinitions' - A list of @Feature@ s. Each @Feature@ must include a @FeatureName@ and a @FeatureType@ .  Valid @FeatureType@ s are @Integral@ , @Fractional@ and @String@ .  @FeatureName@ s cannot be any of the following: @is_deleted@ , @write_time@ , @api_invocation_time@ . You can create up to 2,500 @FeatureDefinition@ s per @FeatureGroup@ .
--
-- * 'fgOfflineStoreStatus' - Undocumented member.
--
-- * 'fgEventTimeFeatureName' - The name of the feature that stores the @EventTime@ of a Record in a @FeatureGroup@ . A @EventTime@ is point in time when a new event occurs that corresponds to the creation or update of a @Record@ in @FeatureGroup@ . All @Records@ in the @FeatureGroup@ must have a corresponding @EventTime@ .
--
-- * 'fgFeatureGroupName' - The name of the @FeatureGroup@ .
--
-- * 'fgFailureReason' - The reason that the @FeatureGroup@ failed to be replicated in the @OfflineStore@ . This is failure may be due to a failure to create a @FeatureGroup@ in or delete a @FeatureGroup@ from the @OfflineStore@ .
--
-- * 'fgTags' - Tags used to define a @FeatureGroup@ .
--
-- * 'fgDescription' - A free form description of a @FeatureGroup@ .
--
-- * 'fgOnlineStoreConfig' - Undocumented member.
featureGroup ::
  FeatureGroup
featureGroup =
  FeatureGroup'
    { _fgFeatureGroupStatus = Nothing,
      _fgOfflineStoreConfig = Nothing,
      _fgCreationTime = Nothing,
      _fgRoleARN = Nothing,
      _fgFeatureGroupARN = Nothing,
      _fgRecordIdentifierFeatureName = Nothing,
      _fgFeatureDefinitions = Nothing,
      _fgOfflineStoreStatus = Nothing,
      _fgEventTimeFeatureName = Nothing,
      _fgFeatureGroupName = Nothing,
      _fgFailureReason = Nothing,
      _fgTags = Nothing,
      _fgDescription = Nothing,
      _fgOnlineStoreConfig = Nothing
    }

-- | A @FeatureGroup@ status.
fgFeatureGroupStatus :: Lens' FeatureGroup (Maybe FeatureGroupStatus)
fgFeatureGroupStatus = lens _fgFeatureGroupStatus (\s a -> s {_fgFeatureGroupStatus = a})

-- | Undocumented member.
fgOfflineStoreConfig :: Lens' FeatureGroup (Maybe OfflineStoreConfig)
fgOfflineStoreConfig = lens _fgOfflineStoreConfig (\s a -> s {_fgOfflineStoreConfig = a})

-- | The time a @FeatureGroup@ was created.
fgCreationTime :: Lens' FeatureGroup (Maybe UTCTime)
fgCreationTime = lens _fgCreationTime (\s a -> s {_fgCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the IAM execution role used to create the feature group.
fgRoleARN :: Lens' FeatureGroup (Maybe Text)
fgRoleARN = lens _fgRoleARN (\s a -> s {_fgRoleARN = a})

-- | The Amazon Resource Name (ARN) of a @FeatureGroup@ .
fgFeatureGroupARN :: Lens' FeatureGroup (Maybe Text)
fgFeatureGroupARN = lens _fgFeatureGroupARN (\s a -> s {_fgFeatureGroupARN = a})

-- | The name of the @Feature@ whose value uniquely identifies a @Record@ defined in the @FeatureGroup@ @FeatureDefinitions@ .
fgRecordIdentifierFeatureName :: Lens' FeatureGroup (Maybe Text)
fgRecordIdentifierFeatureName = lens _fgRecordIdentifierFeatureName (\s a -> s {_fgRecordIdentifierFeatureName = a})

-- | A list of @Feature@ s. Each @Feature@ must include a @FeatureName@ and a @FeatureType@ .  Valid @FeatureType@ s are @Integral@ , @Fractional@ and @String@ .  @FeatureName@ s cannot be any of the following: @is_deleted@ , @write_time@ , @api_invocation_time@ . You can create up to 2,500 @FeatureDefinition@ s per @FeatureGroup@ .
fgFeatureDefinitions :: Lens' FeatureGroup (Maybe (NonEmpty FeatureDefinition))
fgFeatureDefinitions = lens _fgFeatureDefinitions (\s a -> s {_fgFeatureDefinitions = a}) . mapping _List1

-- | Undocumented member.
fgOfflineStoreStatus :: Lens' FeatureGroup (Maybe OfflineStoreStatus)
fgOfflineStoreStatus = lens _fgOfflineStoreStatus (\s a -> s {_fgOfflineStoreStatus = a})

-- | The name of the feature that stores the @EventTime@ of a Record in a @FeatureGroup@ . A @EventTime@ is point in time when a new event occurs that corresponds to the creation or update of a @Record@ in @FeatureGroup@ . All @Records@ in the @FeatureGroup@ must have a corresponding @EventTime@ .
fgEventTimeFeatureName :: Lens' FeatureGroup (Maybe Text)
fgEventTimeFeatureName = lens _fgEventTimeFeatureName (\s a -> s {_fgEventTimeFeatureName = a})

-- | The name of the @FeatureGroup@ .
fgFeatureGroupName :: Lens' FeatureGroup (Maybe Text)
fgFeatureGroupName = lens _fgFeatureGroupName (\s a -> s {_fgFeatureGroupName = a})

-- | The reason that the @FeatureGroup@ failed to be replicated in the @OfflineStore@ . This is failure may be due to a failure to create a @FeatureGroup@ in or delete a @FeatureGroup@ from the @OfflineStore@ .
fgFailureReason :: Lens' FeatureGroup (Maybe Text)
fgFailureReason = lens _fgFailureReason (\s a -> s {_fgFailureReason = a})

-- | Tags used to define a @FeatureGroup@ .
fgTags :: Lens' FeatureGroup [Tag]
fgTags = lens _fgTags (\s a -> s {_fgTags = a}) . _Default . _Coerce

-- | A free form description of a @FeatureGroup@ .
fgDescription :: Lens' FeatureGroup (Maybe Text)
fgDescription = lens _fgDescription (\s a -> s {_fgDescription = a})

-- | Undocumented member.
fgOnlineStoreConfig :: Lens' FeatureGroup (Maybe OnlineStoreConfig)
fgOnlineStoreConfig = lens _fgOnlineStoreConfig (\s a -> s {_fgOnlineStoreConfig = a})

instance FromJSON FeatureGroup where
  parseJSON =
    withObject
      "FeatureGroup"
      ( \x ->
          FeatureGroup'
            <$> (x .:? "FeatureGroupStatus")
            <*> (x .:? "OfflineStoreConfig")
            <*> (x .:? "CreationTime")
            <*> (x .:? "RoleArn")
            <*> (x .:? "FeatureGroupArn")
            <*> (x .:? "RecordIdentifierFeatureName")
            <*> (x .:? "FeatureDefinitions")
            <*> (x .:? "OfflineStoreStatus")
            <*> (x .:? "EventTimeFeatureName")
            <*> (x .:? "FeatureGroupName")
            <*> (x .:? "FailureReason")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "OnlineStoreConfig")
      )

instance Hashable FeatureGroup

instance NFData FeatureGroup
