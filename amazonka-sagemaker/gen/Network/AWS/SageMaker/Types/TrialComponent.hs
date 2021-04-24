{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponent where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MetadataProperties
import Network.AWS.SageMaker.Types.Parent
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.TrialComponentArtifact
import Network.AWS.SageMaker.Types.TrialComponentMetricSummary
import Network.AWS.SageMaker.Types.TrialComponentParameterValue
import Network.AWS.SageMaker.Types.TrialComponentSource
import Network.AWS.SageMaker.Types.TrialComponentSourceDetail
import Network.AWS.SageMaker.Types.TrialComponentStatus
import Network.AWS.SageMaker.Types.UserContext

-- | The properties of a trial component as returned by the 'Search' API.
--
--
--
-- /See:/ 'trialComponent' smart constructor.
data TrialComponent = TrialComponent'
  { _tcParents ::
      !(Maybe [Parent]),
    _tcStatus ::
      !(Maybe TrialComponentStatus),
    _tcMetadataProperties ::
      !(Maybe MetadataProperties),
    _tcCreationTime :: !(Maybe POSIX),
    _tcSourceDetail ::
      !(Maybe TrialComponentSourceDetail),
    _tcTrialComponentARN :: !(Maybe Text),
    _tcStartTime :: !(Maybe POSIX),
    _tcSource ::
      !(Maybe TrialComponentSource),
    _tcEndTime :: !(Maybe POSIX),
    _tcMetrics ::
      !(Maybe [TrialComponentMetricSummary]),
    _tcTags :: !(Maybe [Tag]),
    _tcLastModifiedTime :: !(Maybe POSIX),
    _tcInputArtifacts ::
      !( Maybe
           (Map Text TrialComponentArtifact)
       ),
    _tcCreatedBy :: !(Maybe UserContext),
    _tcLastModifiedBy :: !(Maybe UserContext),
    _tcDisplayName :: !(Maybe Text),
    _tcParameters ::
      !( Maybe
           ( Map
               Text
               TrialComponentParameterValue
           )
       ),
    _tcOutputArtifacts ::
      !( Maybe
           (Map Text TrialComponentArtifact)
       ),
    _tcTrialComponentName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrialComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcParents' - An array of the parents of the component. A parent is a trial the component is associated with and the experiment the trial is part of. A component might not have any parents.
--
-- * 'tcStatus' - Undocumented member.
--
-- * 'tcMetadataProperties' - Undocumented member.
--
-- * 'tcCreationTime' - When the component was created.
--
-- * 'tcSourceDetail' - Details of the source of the component.
--
-- * 'tcTrialComponentARN' - The Amazon Resource Name (ARN) of the trial component.
--
-- * 'tcStartTime' - When the component started.
--
-- * 'tcSource' - The Amazon Resource Name (ARN) and job type of the source of the component.
--
-- * 'tcEndTime' - When the component ended.
--
-- * 'tcMetrics' - The metrics for the component.
--
-- * 'tcTags' - The list of tags that are associated with the component. You can use 'Search' API to search on the tags.
--
-- * 'tcLastModifiedTime' - When the component was last modified.
--
-- * 'tcInputArtifacts' - The input artifacts of the component.
--
-- * 'tcCreatedBy' - Undocumented member.
--
-- * 'tcLastModifiedBy' - Undocumented member.
--
-- * 'tcDisplayName' - The name of the component as displayed. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
--
-- * 'tcParameters' - The hyperparameters of the component.
--
-- * 'tcOutputArtifacts' - The output artifacts of the component.
--
-- * 'tcTrialComponentName' - The name of the trial component.
trialComponent ::
  TrialComponent
trialComponent =
  TrialComponent'
    { _tcParents = Nothing,
      _tcStatus = Nothing,
      _tcMetadataProperties = Nothing,
      _tcCreationTime = Nothing,
      _tcSourceDetail = Nothing,
      _tcTrialComponentARN = Nothing,
      _tcStartTime = Nothing,
      _tcSource = Nothing,
      _tcEndTime = Nothing,
      _tcMetrics = Nothing,
      _tcTags = Nothing,
      _tcLastModifiedTime = Nothing,
      _tcInputArtifacts = Nothing,
      _tcCreatedBy = Nothing,
      _tcLastModifiedBy = Nothing,
      _tcDisplayName = Nothing,
      _tcParameters = Nothing,
      _tcOutputArtifacts = Nothing,
      _tcTrialComponentName = Nothing
    }

-- | An array of the parents of the component. A parent is a trial the component is associated with and the experiment the trial is part of. A component might not have any parents.
tcParents :: Lens' TrialComponent [Parent]
tcParents = lens _tcParents (\s a -> s {_tcParents = a}) . _Default . _Coerce

-- | Undocumented member.
tcStatus :: Lens' TrialComponent (Maybe TrialComponentStatus)
tcStatus = lens _tcStatus (\s a -> s {_tcStatus = a})

-- | Undocumented member.
tcMetadataProperties :: Lens' TrialComponent (Maybe MetadataProperties)
tcMetadataProperties = lens _tcMetadataProperties (\s a -> s {_tcMetadataProperties = a})

-- | When the component was created.
tcCreationTime :: Lens' TrialComponent (Maybe UTCTime)
tcCreationTime = lens _tcCreationTime (\s a -> s {_tcCreationTime = a}) . mapping _Time

-- | Details of the source of the component.
tcSourceDetail :: Lens' TrialComponent (Maybe TrialComponentSourceDetail)
tcSourceDetail = lens _tcSourceDetail (\s a -> s {_tcSourceDetail = a})

-- | The Amazon Resource Name (ARN) of the trial component.
tcTrialComponentARN :: Lens' TrialComponent (Maybe Text)
tcTrialComponentARN = lens _tcTrialComponentARN (\s a -> s {_tcTrialComponentARN = a})

-- | When the component started.
tcStartTime :: Lens' TrialComponent (Maybe UTCTime)
tcStartTime = lens _tcStartTime (\s a -> s {_tcStartTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) and job type of the source of the component.
tcSource :: Lens' TrialComponent (Maybe TrialComponentSource)
tcSource = lens _tcSource (\s a -> s {_tcSource = a})

-- | When the component ended.
tcEndTime :: Lens' TrialComponent (Maybe UTCTime)
tcEndTime = lens _tcEndTime (\s a -> s {_tcEndTime = a}) . mapping _Time

-- | The metrics for the component.
tcMetrics :: Lens' TrialComponent [TrialComponentMetricSummary]
tcMetrics = lens _tcMetrics (\s a -> s {_tcMetrics = a}) . _Default . _Coerce

-- | The list of tags that are associated with the component. You can use 'Search' API to search on the tags.
tcTags :: Lens' TrialComponent [Tag]
tcTags = lens _tcTags (\s a -> s {_tcTags = a}) . _Default . _Coerce

-- | When the component was last modified.
tcLastModifiedTime :: Lens' TrialComponent (Maybe UTCTime)
tcLastModifiedTime = lens _tcLastModifiedTime (\s a -> s {_tcLastModifiedTime = a}) . mapping _Time

-- | The input artifacts of the component.
tcInputArtifacts :: Lens' TrialComponent (HashMap Text TrialComponentArtifact)
tcInputArtifacts = lens _tcInputArtifacts (\s a -> s {_tcInputArtifacts = a}) . _Default . _Map

-- | Undocumented member.
tcCreatedBy :: Lens' TrialComponent (Maybe UserContext)
tcCreatedBy = lens _tcCreatedBy (\s a -> s {_tcCreatedBy = a})

-- | Undocumented member.
tcLastModifiedBy :: Lens' TrialComponent (Maybe UserContext)
tcLastModifiedBy = lens _tcLastModifiedBy (\s a -> s {_tcLastModifiedBy = a})

-- | The name of the component as displayed. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
tcDisplayName :: Lens' TrialComponent (Maybe Text)
tcDisplayName = lens _tcDisplayName (\s a -> s {_tcDisplayName = a})

-- | The hyperparameters of the component.
tcParameters :: Lens' TrialComponent (HashMap Text TrialComponentParameterValue)
tcParameters = lens _tcParameters (\s a -> s {_tcParameters = a}) . _Default . _Map

-- | The output artifacts of the component.
tcOutputArtifacts :: Lens' TrialComponent (HashMap Text TrialComponentArtifact)
tcOutputArtifacts = lens _tcOutputArtifacts (\s a -> s {_tcOutputArtifacts = a}) . _Default . _Map

-- | The name of the trial component.
tcTrialComponentName :: Lens' TrialComponent (Maybe Text)
tcTrialComponentName = lens _tcTrialComponentName (\s a -> s {_tcTrialComponentName = a})

instance FromJSON TrialComponent where
  parseJSON =
    withObject
      "TrialComponent"
      ( \x ->
          TrialComponent'
            <$> (x .:? "Parents" .!= mempty)
            <*> (x .:? "Status")
            <*> (x .:? "MetadataProperties")
            <*> (x .:? "CreationTime")
            <*> (x .:? "SourceDetail")
            <*> (x .:? "TrialComponentArn")
            <*> (x .:? "StartTime")
            <*> (x .:? "Source")
            <*> (x .:? "EndTime")
            <*> (x .:? "Metrics" .!= mempty)
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "InputArtifacts" .!= mempty)
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "DisplayName")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .:? "OutputArtifacts" .!= mempty)
            <*> (x .:? "TrialComponentName")
      )

instance Hashable TrialComponent

instance NFData TrialComponent
