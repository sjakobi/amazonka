{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Mobile.Types.ProjectDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Mobile.Types.ProjectDetails where

import Network.AWS.Lens
import Network.AWS.Mobile.Types.ProjectState
import Network.AWS.Mobile.Types.Resource
import Network.AWS.Prelude

-- | Detailed information about an AWS Mobile Hub project.
--
--
--
-- /See:/ 'projectDetails' smart constructor.
data ProjectDetails = ProjectDetails'
  { _pdCreatedDate ::
      !(Maybe POSIX),
    _pdLastUpdatedDate :: !(Maybe POSIX),
    _pdProjectId :: !(Maybe Text),
    _pdState :: !(Maybe ProjectState),
    _pdName :: !(Maybe Text),
    _pdConsoleURL :: !(Maybe Text),
    _pdResources :: !(Maybe [Resource]),
    _pdRegion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdCreatedDate' - Date the project was created.
--
-- * 'pdLastUpdatedDate' - Date of the last modification of the project.
--
-- * 'pdProjectId' - Undocumented member.
--
-- * 'pdState' - Undocumented member.
--
-- * 'pdName' - Undocumented member.
--
-- * 'pdConsoleURL' - Website URL for this project in the AWS Mobile Hub console.
--
-- * 'pdResources' - Undocumented member.
--
-- * 'pdRegion' - Undocumented member.
projectDetails ::
  ProjectDetails
projectDetails =
  ProjectDetails'
    { _pdCreatedDate = Nothing,
      _pdLastUpdatedDate = Nothing,
      _pdProjectId = Nothing,
      _pdState = Nothing,
      _pdName = Nothing,
      _pdConsoleURL = Nothing,
      _pdResources = Nothing,
      _pdRegion = Nothing
    }

-- | Date the project was created.
pdCreatedDate :: Lens' ProjectDetails (Maybe UTCTime)
pdCreatedDate = lens _pdCreatedDate (\s a -> s {_pdCreatedDate = a}) . mapping _Time

-- | Date of the last modification of the project.
pdLastUpdatedDate :: Lens' ProjectDetails (Maybe UTCTime)
pdLastUpdatedDate = lens _pdLastUpdatedDate (\s a -> s {_pdLastUpdatedDate = a}) . mapping _Time

-- | Undocumented member.
pdProjectId :: Lens' ProjectDetails (Maybe Text)
pdProjectId = lens _pdProjectId (\s a -> s {_pdProjectId = a})

-- | Undocumented member.
pdState :: Lens' ProjectDetails (Maybe ProjectState)
pdState = lens _pdState (\s a -> s {_pdState = a})

-- | Undocumented member.
pdName :: Lens' ProjectDetails (Maybe Text)
pdName = lens _pdName (\s a -> s {_pdName = a})

-- | Website URL for this project in the AWS Mobile Hub console.
pdConsoleURL :: Lens' ProjectDetails (Maybe Text)
pdConsoleURL = lens _pdConsoleURL (\s a -> s {_pdConsoleURL = a})

-- | Undocumented member.
pdResources :: Lens' ProjectDetails [Resource]
pdResources = lens _pdResources (\s a -> s {_pdResources = a}) . _Default . _Coerce

-- | Undocumented member.
pdRegion :: Lens' ProjectDetails (Maybe Text)
pdRegion = lens _pdRegion (\s a -> s {_pdRegion = a})

instance FromJSON ProjectDetails where
  parseJSON =
    withObject
      "ProjectDetails"
      ( \x ->
          ProjectDetails'
            <$> (x .:? "createdDate")
            <*> (x .:? "lastUpdatedDate")
            <*> (x .:? "projectId")
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "consoleUrl")
            <*> (x .:? "resources" .!= mempty)
            <*> (x .:? "region")
      )

instance Hashable ProjectDetails

instance NFData ProjectDetails
