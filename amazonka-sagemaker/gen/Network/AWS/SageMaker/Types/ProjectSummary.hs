{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProjectSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProjectSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProjectStatus

-- | Information about a project.
--
--
--
-- /See:/ 'projectSummary' smart constructor.
data ProjectSummary = ProjectSummary'
  { _psProjectDescription ::
      !(Maybe Text),
    _psProjectName :: !Text,
    _psProjectARN :: !Text,
    _psProjectId :: !Text,
    _psCreationTime :: !POSIX,
    _psProjectStatus :: !ProjectStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psProjectDescription' - The description of the project.
--
-- * 'psProjectName' - The name of the project.
--
-- * 'psProjectARN' - The Amazon Resource Name (ARN) of the project.
--
-- * 'psProjectId' - The ID of the project.
--
-- * 'psCreationTime' - The time that the project was created.
--
-- * 'psProjectStatus' - The status of the project.
projectSummary ::
  -- | 'psProjectName'
  Text ->
  -- | 'psProjectARN'
  Text ->
  -- | 'psProjectId'
  Text ->
  -- | 'psCreationTime'
  UTCTime ->
  -- | 'psProjectStatus'
  ProjectStatus ->
  ProjectSummary
projectSummary
  pProjectName_
  pProjectARN_
  pProjectId_
  pCreationTime_
  pProjectStatus_ =
    ProjectSummary'
      { _psProjectDescription = Nothing,
        _psProjectName = pProjectName_,
        _psProjectARN = pProjectARN_,
        _psProjectId = pProjectId_,
        _psCreationTime = _Time # pCreationTime_,
        _psProjectStatus = pProjectStatus_
      }

-- | The description of the project.
psProjectDescription :: Lens' ProjectSummary (Maybe Text)
psProjectDescription = lens _psProjectDescription (\s a -> s {_psProjectDescription = a})

-- | The name of the project.
psProjectName :: Lens' ProjectSummary Text
psProjectName = lens _psProjectName (\s a -> s {_psProjectName = a})

-- | The Amazon Resource Name (ARN) of the project.
psProjectARN :: Lens' ProjectSummary Text
psProjectARN = lens _psProjectARN (\s a -> s {_psProjectARN = a})

-- | The ID of the project.
psProjectId :: Lens' ProjectSummary Text
psProjectId = lens _psProjectId (\s a -> s {_psProjectId = a})

-- | The time that the project was created.
psCreationTime :: Lens' ProjectSummary UTCTime
psCreationTime = lens _psCreationTime (\s a -> s {_psCreationTime = a}) . _Time

-- | The status of the project.
psProjectStatus :: Lens' ProjectSummary ProjectStatus
psProjectStatus = lens _psProjectStatus (\s a -> s {_psProjectStatus = a})

instance FromJSON ProjectSummary where
  parseJSON =
    withObject
      "ProjectSummary"
      ( \x ->
          ProjectSummary'
            <$> (x .:? "ProjectDescription")
            <*> (x .: "ProjectName")
            <*> (x .: "ProjectArn")
            <*> (x .: "ProjectId")
            <*> (x .: "CreationTime")
            <*> (x .: "ProjectStatus")
      )

instance Hashable ProjectSummary

instance NFData ProjectSummary
