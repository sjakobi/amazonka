{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Trial
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Trial where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MetadataProperties
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.TrialComponentSimpleSummary
import Network.AWS.SageMaker.Types.TrialSource
import Network.AWS.SageMaker.Types.UserContext

-- | The properties of a trial as returned by the 'Search' API.
--
--
--
-- /See:/ 'trial' smart constructor.
data Trial = Trial'
  { _triTrialARN :: !(Maybe Text),
    _triMetadataProperties ::
      !(Maybe MetadataProperties),
    _triCreationTime :: !(Maybe POSIX),
    _triSource :: !(Maybe TrialSource),
    _triTrialComponentSummaries ::
      !(Maybe [TrialComponentSimpleSummary]),
    _triTags :: !(Maybe [Tag]),
    _triLastModifiedTime :: !(Maybe POSIX),
    _triExperimentName :: !(Maybe Text),
    _triCreatedBy :: !(Maybe UserContext),
    _triLastModifiedBy :: !(Maybe UserContext),
    _triDisplayName :: !(Maybe Text),
    _triTrialName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Trial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'triTrialARN' - The Amazon Resource Name (ARN) of the trial.
--
-- * 'triMetadataProperties' - Undocumented member.
--
-- * 'triCreationTime' - When the trial was created.
--
-- * 'triSource' - Undocumented member.
--
-- * 'triTrialComponentSummaries' - A list of the components associated with the trial. For each component, a summary of the component's properties is included.
--
-- * 'triTags' - The list of tags that are associated with the trial. You can use 'Search' API to search on the tags.
--
-- * 'triLastModifiedTime' - Who last modified the trial.
--
-- * 'triExperimentName' - The name of the experiment the trial is part of.
--
-- * 'triCreatedBy' - Undocumented member.
--
-- * 'triLastModifiedBy' - Undocumented member.
--
-- * 'triDisplayName' - The name of the trial as displayed. If @DisplayName@ isn't specified, @TrialName@ is displayed.
--
-- * 'triTrialName' - The name of the trial.
trial ::
  Trial
trial =
  Trial'
    { _triTrialARN = Nothing,
      _triMetadataProperties = Nothing,
      _triCreationTime = Nothing,
      _triSource = Nothing,
      _triTrialComponentSummaries = Nothing,
      _triTags = Nothing,
      _triLastModifiedTime = Nothing,
      _triExperimentName = Nothing,
      _triCreatedBy = Nothing,
      _triLastModifiedBy = Nothing,
      _triDisplayName = Nothing,
      _triTrialName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the trial.
triTrialARN :: Lens' Trial (Maybe Text)
triTrialARN = lens _triTrialARN (\s a -> s {_triTrialARN = a})

-- | Undocumented member.
triMetadataProperties :: Lens' Trial (Maybe MetadataProperties)
triMetadataProperties = lens _triMetadataProperties (\s a -> s {_triMetadataProperties = a})

-- | When the trial was created.
triCreationTime :: Lens' Trial (Maybe UTCTime)
triCreationTime = lens _triCreationTime (\s a -> s {_triCreationTime = a}) . mapping _Time

-- | Undocumented member.
triSource :: Lens' Trial (Maybe TrialSource)
triSource = lens _triSource (\s a -> s {_triSource = a})

-- | A list of the components associated with the trial. For each component, a summary of the component's properties is included.
triTrialComponentSummaries :: Lens' Trial [TrialComponentSimpleSummary]
triTrialComponentSummaries = lens _triTrialComponentSummaries (\s a -> s {_triTrialComponentSummaries = a}) . _Default . _Coerce

-- | The list of tags that are associated with the trial. You can use 'Search' API to search on the tags.
triTags :: Lens' Trial [Tag]
triTags = lens _triTags (\s a -> s {_triTags = a}) . _Default . _Coerce

-- | Who last modified the trial.
triLastModifiedTime :: Lens' Trial (Maybe UTCTime)
triLastModifiedTime = lens _triLastModifiedTime (\s a -> s {_triLastModifiedTime = a}) . mapping _Time

-- | The name of the experiment the trial is part of.
triExperimentName :: Lens' Trial (Maybe Text)
triExperimentName = lens _triExperimentName (\s a -> s {_triExperimentName = a})

-- | Undocumented member.
triCreatedBy :: Lens' Trial (Maybe UserContext)
triCreatedBy = lens _triCreatedBy (\s a -> s {_triCreatedBy = a})

-- | Undocumented member.
triLastModifiedBy :: Lens' Trial (Maybe UserContext)
triLastModifiedBy = lens _triLastModifiedBy (\s a -> s {_triLastModifiedBy = a})

-- | The name of the trial as displayed. If @DisplayName@ isn't specified, @TrialName@ is displayed.
triDisplayName :: Lens' Trial (Maybe Text)
triDisplayName = lens _triDisplayName (\s a -> s {_triDisplayName = a})

-- | The name of the trial.
triTrialName :: Lens' Trial (Maybe Text)
triTrialName = lens _triTrialName (\s a -> s {_triTrialName = a})

instance FromJSON Trial where
  parseJSON =
    withObject
      "Trial"
      ( \x ->
          Trial'
            <$> (x .:? "TrialArn")
            <*> (x .:? "MetadataProperties")
            <*> (x .:? "CreationTime")
            <*> (x .:? "Source")
            <*> (x .:? "TrialComponentSummaries" .!= mempty)
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "ExperimentName")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "DisplayName")
            <*> (x .:? "TrialName")
      )

instance Hashable Trial

instance NFData Trial
