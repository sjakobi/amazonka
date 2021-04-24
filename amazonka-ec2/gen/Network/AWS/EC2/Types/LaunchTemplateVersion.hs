{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateVersion where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ResponseLaunchTemplateData
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a launch template version.
--
--
--
-- /See:/ 'launchTemplateVersion' smart constructor.
data LaunchTemplateVersion = LaunchTemplateVersion'
  { _ltvDefaultVersion ::
      !(Maybe Bool),
    _ltvLaunchTemplateId ::
      !(Maybe Text),
    _ltvLaunchTemplateData ::
      !( Maybe
           ResponseLaunchTemplateData
       ),
    _ltvLaunchTemplateName ::
      !(Maybe Text),
    _ltvVersionDescription ::
      !(Maybe Text),
    _ltvVersionNumber ::
      !(Maybe Integer),
    _ltvCreateTime ::
      !(Maybe ISO8601),
    _ltvCreatedBy ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LaunchTemplateVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltvDefaultVersion' - Indicates whether the version is the default version.
--
-- * 'ltvLaunchTemplateId' - The ID of the launch template.
--
-- * 'ltvLaunchTemplateData' - Information about the launch template.
--
-- * 'ltvLaunchTemplateName' - The name of the launch template.
--
-- * 'ltvVersionDescription' - The description for the version.
--
-- * 'ltvVersionNumber' - The version number.
--
-- * 'ltvCreateTime' - The time the version was created.
--
-- * 'ltvCreatedBy' - The principal that created the version.
launchTemplateVersion ::
  LaunchTemplateVersion
launchTemplateVersion =
  LaunchTemplateVersion'
    { _ltvDefaultVersion =
        Nothing,
      _ltvLaunchTemplateId = Nothing,
      _ltvLaunchTemplateData = Nothing,
      _ltvLaunchTemplateName = Nothing,
      _ltvVersionDescription = Nothing,
      _ltvVersionNumber = Nothing,
      _ltvCreateTime = Nothing,
      _ltvCreatedBy = Nothing
    }

-- | Indicates whether the version is the default version.
ltvDefaultVersion :: Lens' LaunchTemplateVersion (Maybe Bool)
ltvDefaultVersion = lens _ltvDefaultVersion (\s a -> s {_ltvDefaultVersion = a})

-- | The ID of the launch template.
ltvLaunchTemplateId :: Lens' LaunchTemplateVersion (Maybe Text)
ltvLaunchTemplateId = lens _ltvLaunchTemplateId (\s a -> s {_ltvLaunchTemplateId = a})

-- | Information about the launch template.
ltvLaunchTemplateData :: Lens' LaunchTemplateVersion (Maybe ResponseLaunchTemplateData)
ltvLaunchTemplateData = lens _ltvLaunchTemplateData (\s a -> s {_ltvLaunchTemplateData = a})

-- | The name of the launch template.
ltvLaunchTemplateName :: Lens' LaunchTemplateVersion (Maybe Text)
ltvLaunchTemplateName = lens _ltvLaunchTemplateName (\s a -> s {_ltvLaunchTemplateName = a})

-- | The description for the version.
ltvVersionDescription :: Lens' LaunchTemplateVersion (Maybe Text)
ltvVersionDescription = lens _ltvVersionDescription (\s a -> s {_ltvVersionDescription = a})

-- | The version number.
ltvVersionNumber :: Lens' LaunchTemplateVersion (Maybe Integer)
ltvVersionNumber = lens _ltvVersionNumber (\s a -> s {_ltvVersionNumber = a})

-- | The time the version was created.
ltvCreateTime :: Lens' LaunchTemplateVersion (Maybe UTCTime)
ltvCreateTime = lens _ltvCreateTime (\s a -> s {_ltvCreateTime = a}) . mapping _Time

-- | The principal that created the version.
ltvCreatedBy :: Lens' LaunchTemplateVersion (Maybe Text)
ltvCreatedBy = lens _ltvCreatedBy (\s a -> s {_ltvCreatedBy = a})

instance FromXML LaunchTemplateVersion where
  parseXML x =
    LaunchTemplateVersion'
      <$> (x .@? "defaultVersion")
      <*> (x .@? "launchTemplateId")
      <*> (x .@? "launchTemplateData")
      <*> (x .@? "launchTemplateName")
      <*> (x .@? "versionDescription")
      <*> (x .@? "versionNumber")
      <*> (x .@? "createTime")
      <*> (x .@? "createdBy")

instance Hashable LaunchTemplateVersion

instance NFData LaunchTemplateVersion
