{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Experiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Experiment where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ExperimentSource
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.UserContext

-- | The properties of an experiment as returned by the 'Search' API.
--
--
--
-- /See:/ 'experiment' smart constructor.
data Experiment = Experiment'
  { _eExperimentARN ::
      !(Maybe Text),
    _eCreationTime :: !(Maybe POSIX),
    _eSource :: !(Maybe ExperimentSource),
    _eTags :: !(Maybe [Tag]),
    _eLastModifiedTime :: !(Maybe POSIX),
    _eExperimentName :: !(Maybe Text),
    _eDescription :: !(Maybe Text),
    _eCreatedBy :: !(Maybe UserContext),
    _eLastModifiedBy :: !(Maybe UserContext),
    _eDisplayName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Experiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eExperimentARN' - The Amazon Resource Name (ARN) of the experiment.
--
-- * 'eCreationTime' - When the experiment was created.
--
-- * 'eSource' - Undocumented member.
--
-- * 'eTags' - The list of tags that are associated with the experiment. You can use 'Search' API to search on the tags.
--
-- * 'eLastModifiedTime' - When the experiment was last modified.
--
-- * 'eExperimentName' - The name of the experiment.
--
-- * 'eDescription' - The description of the experiment.
--
-- * 'eCreatedBy' - Undocumented member.
--
-- * 'eLastModifiedBy' - Undocumented member.
--
-- * 'eDisplayName' - The name of the experiment as displayed. If @DisplayName@ isn't specified, @ExperimentName@ is displayed.
experiment ::
  Experiment
experiment =
  Experiment'
    { _eExperimentARN = Nothing,
      _eCreationTime = Nothing,
      _eSource = Nothing,
      _eTags = Nothing,
      _eLastModifiedTime = Nothing,
      _eExperimentName = Nothing,
      _eDescription = Nothing,
      _eCreatedBy = Nothing,
      _eLastModifiedBy = Nothing,
      _eDisplayName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the experiment.
eExperimentARN :: Lens' Experiment (Maybe Text)
eExperimentARN = lens _eExperimentARN (\s a -> s {_eExperimentARN = a})

-- | When the experiment was created.
eCreationTime :: Lens' Experiment (Maybe UTCTime)
eCreationTime = lens _eCreationTime (\s a -> s {_eCreationTime = a}) . mapping _Time

-- | Undocumented member.
eSource :: Lens' Experiment (Maybe ExperimentSource)
eSource = lens _eSource (\s a -> s {_eSource = a})

-- | The list of tags that are associated with the experiment. You can use 'Search' API to search on the tags.
eTags :: Lens' Experiment [Tag]
eTags = lens _eTags (\s a -> s {_eTags = a}) . _Default . _Coerce

-- | When the experiment was last modified.
eLastModifiedTime :: Lens' Experiment (Maybe UTCTime)
eLastModifiedTime = lens _eLastModifiedTime (\s a -> s {_eLastModifiedTime = a}) . mapping _Time

-- | The name of the experiment.
eExperimentName :: Lens' Experiment (Maybe Text)
eExperimentName = lens _eExperimentName (\s a -> s {_eExperimentName = a})

-- | The description of the experiment.
eDescription :: Lens' Experiment (Maybe Text)
eDescription = lens _eDescription (\s a -> s {_eDescription = a})

-- | Undocumented member.
eCreatedBy :: Lens' Experiment (Maybe UserContext)
eCreatedBy = lens _eCreatedBy (\s a -> s {_eCreatedBy = a})

-- | Undocumented member.
eLastModifiedBy :: Lens' Experiment (Maybe UserContext)
eLastModifiedBy = lens _eLastModifiedBy (\s a -> s {_eLastModifiedBy = a})

-- | The name of the experiment as displayed. If @DisplayName@ isn't specified, @ExperimentName@ is displayed.
eDisplayName :: Lens' Experiment (Maybe Text)
eDisplayName = lens _eDisplayName (\s a -> s {_eDisplayName = a})

instance FromJSON Experiment where
  parseJSON =
    withObject
      "Experiment"
      ( \x ->
          Experiment'
            <$> (x .:? "ExperimentArn")
            <*> (x .:? "CreationTime")
            <*> (x .:? "Source")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "ExperimentName")
            <*> (x .:? "Description")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "DisplayName")
      )

instance Hashable Experiment

instance NFData Experiment
